<?php

/**
 * 菜单管理控制器
 * @since   1.0
 */
namespace app\admin\controller;

use app\common\model\Menu;

class MenuController extends CommonController
{

    // 分页查询
    public function index()
    {

        //每页显示10条
        $lists = model('Menu')->order('weight desc')->paginate(10);
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
            if (Menu::create($data)) {
                $this->success('新增成功', 'index');
            }

            $this->error('新增失败', 'create');

        }
        return $this->fetch();
    }

    // 修改
    public function update()
    {
        $model = model('Menu')->where(['id' => input('param.id')])->find();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            if (Menu::update($data, ['id' => $model->id])) {
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
        $model = model('menu')->where(['id' => input('param.id')])->find();

        if ($model && $model->delete()) {
            $this->success('删除成功');
        }

        $this->error('删除失败');

    }// 删除


}
