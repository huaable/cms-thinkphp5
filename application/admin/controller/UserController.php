<?php

/**
 * 用户管理控制器
 * @since   1.0
 */
namespace app\admin\controller;


class UserController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {
        $model = new \app\common\model\User();

        //每页显示10条
        $lists = $model->order('id desc')->paginate(10);
        $page = $lists->render();
        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();

    }

    //    // 新增
    //    public function create()
    //    {
    //
    //        // 提交
    //        if (request()->isPost()) {
    //            $data = input('post.')['Model'];
    //            if (\app\common\model\User::create($data)) {
    //                $this->success('新增成功', 'index');
    //            }
    //
    //            $this->error('新增失败', 'create');
    //
    //        }
    //        return $this->fetch();
    //    }
    //
    //    // 修改
    //    public function update()
    //    {
    //        $model = new \app\common\model\User();
    //        $model = $model->where(['id' => input('param.id')])->find();
    //
    //        // 提交
    //        if (request()->isPost()) {
    //            $data = input('post.')['Model'];
    //            if (\app\common\model\User::update($data, ['id' => $model->id])) {
    //                $this->success('修改成功', 'index');
    //            }
    //            $this->error('修改失败', 'create');
    //        }
    //
    //        $this->assign('model', $model);
    //        return $this->fetch();
    //    }
    //
    //    // 删除
    //    public function delete()
    //    {
    //        $model = new \app\common\model\User();
    //        $model = $model->where(['id' => input('param.id')])->find();
    //
    //        if ($model && $model->delete()) {
    //            $this->success('删除成功');
    //        }
    //
    //        $this->error('删除失败');
    //
    //    }


}
