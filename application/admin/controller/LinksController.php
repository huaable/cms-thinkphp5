<?php 
/**
 * Links管理控制器
 * @since   1.0
 */
namespace app\admin\controller;



use think\Controller;
use app\common\model\Links;

class LinksController extends Controller
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {

        //每页显示10条
        $lists = model('Links')->order('id desc')->paginate(10);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();

    }

    // 新增
    public function create()
    {

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            $data['create_time']=time();
            $data['update_time']= $data['create_time'];
            if (Links::create($data)) {
                $this->success('新增成功', 'index');
            }

            $this->error('新增失败', 'create');

        }
        return $this->fetch();
    }

    // 修改
    public function update()
    {
        $model = model('Links')->where(['id' => input('param.id')])->find();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            $data['update_time']= time();

            if (Links::update($data, ['id' => $model->id])) {
                $this->success('修改成功', 'index');
            }
            $this->error('修改失败', 'create');
        }

        $this->assign('model', $model);
        return $this->fetch();
    }

    // 删除
    public function delete()
    {
        $model = model('Links')->where(['id' => input('param.id')])->find();

        if ($model && $model->delete()) {
            $this->success('删除成功');
        }

        $this->error('删除失败');

    }


}
