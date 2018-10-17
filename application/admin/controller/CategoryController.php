<?php

/**
 * 管理控制器
 * @since   1.0
 */

namespace app\admin\controller;

class CategoryController extends CommonController
{

    protected $controllerAlias = '管理';
    protected $modalClass = 'app\common\model\Category';

    public function _initialize()
    {
        $this->assign('controllerAlias',$this->controllerAlias);
        $this->assign('modalClass',$this->modalClass);
        parent::_initialize();
    }


    // 分页查询
    public function index()
    {

        //每页显示10条
        $lists = model($this->modalClass)->order('weight desc')->paginate(10);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();

    }

    // 新增
    public function create()
    {

        $model = new $this->modalClass();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            if ($model::create($data)) {
                $this->success('新增成功', 'index');
            }

            $this->error('新增失败', 'create');

        }
        return $this->fetch();
    }

    //修改
    public function update()
    {
        $model = model($this->modalClass)->where(['id' => input('param.id')])->find();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            if ($model::update($data, ['id' => $model->id])) {
                $this->success('修改成功', 'index');
            }
            $this->error('修改失败', 'create');
        }

        $this->assign('model', $model);
        return $this->fetch();
    }


    //删除
    public function delete()
    {
        $model = model($this->modalClass)->find(['id' => input('param.id')]);

        if ($model && $model->delete()) {
            $this->success('删除成功');
        }

        $this->error('删除失败');
    }

}
