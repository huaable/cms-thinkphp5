<?php
namespace app\index\controller;


use app\common\model\Web;
use QL\QueryList;

class WebController extends CommonController
{

    public function Index()
    {
        if (input('param.w')) {
            Web::createDataByUrl(input('param.w'));
        }
        //每页显示10条
        $lists = db('web')->order('id desc')->paginate(10);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();
    }

    public function update()
    {
        $id = request()->get('id');
        //获取CSDN文章页下面的文章标题和内容
        Web::updateDataById($id);
        $this->redirect('/index/web/index');
        $this->redirect('/index/web/index');

    }

    // 删除
    public function delete()
    {
        $model = model('web')->where(['id' => input('param.id')])->find();


        if ($model && $model->delete()) {
            $this->success('删除成功','index');
        }

        $this->error('删除失败');

    }
}
