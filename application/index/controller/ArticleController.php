<?php
namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Category;
use app\common\model\User;
use orange\Help;
use PFinal\Wechat\Kernel;
use PFinal\Wechat\Service\JsService;
use think\Controller;
use think\Db;
use think\Session;
use think\Validate;

class ArticleController extends CommonController
{

    //文章详情页
    public function Index()
    {
        $model = new Article();
        //文章
        $model = $model->where(['id' => input('param.id')])->find();

        if (!$model) {
            $this->error('文章不存在');
        }

        $side_list = $model->where(['category_id' => $model->category_id])->order('id desc')->paginate(10);
        $this->assign('model', $model);
        $this->assign('side_list', $side_list);
        $model->setInc('read_number');

        // 提交
        if (request()->isPost()) {
            $data['content'] = request()->post('content');
            $data['create_time'] = $data['update_time'] = time();
            $data['user_id'] = Session::get('login_user')['id'] ?: 0;
            $data['article_id'] = $model['id'];
            $data['ip'] = request()->ip();


            if (empty($data['content'])) {
                $this->error('请输入评论内容');
            }

            if (model('comment')->insert($data)) {
                $this->success('评论成功');
            }

            $this->error('评论失败');
        }


        //评论列表
        $where = [
            'article_id' => $model['id']
        ];

        //每页显示10条
        $lists = model('comment')->where($where)->order('id desc')->paginate(10);
        $page = $lists->render();

        $config = config('wechat');
        //初始化
        Kernel::init($config);

        $signPackage = JsService::getSignPackage();

        $this->assign('lists', $lists);
        $this->assign('page', $page);
        $this->assign('signPackage', $signPackage);

        return $this->fetch();

    }

    public function qr()
    {
        Help::qrcode(request()->get('text'));
    }

}
