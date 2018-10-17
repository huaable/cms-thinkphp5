<?php

/**
 * 网站信息页面控制器
 * @since   1.0
 */
namespace app\admin\controller;

class IndexController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }


    //
    public function index()
    {

        $lists = model('config')->order(['group'=>'asc'])->select();
        $this->assign('lists', $lists);
        return $this->fetch();

    }


    // 修改
    public function update()
    {
        $model = new \app\common\model\Config();
        $model = $model->where(['id' => input('param.id')])->find();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];

            if ($model->update($data, ['id' => $model->id])) {
                $this->success('修改成功', 'index');
            }
            $this->error('修改失败', 'create');
        }

        $this->assign('model', $model);
        return $this->fetch();
    }

    //退出登陆
    public function logout()
    {
        session(null);
        $this->redirect('login/index');
    }

}
