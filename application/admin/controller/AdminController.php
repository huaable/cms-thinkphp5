<?php

/**
 * 管理员个人信息控制器
 * @since   1.0
 */
namespace app\admin\controller;

use app\common\model\Admin;
use app\common\model\Article;
use app\common\model\Category;
use think\Session;

class AdminController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {

        // 提交
        if (request()->isPost()) {
            $pass = input('post.');

            $data['id'] = Session::get('admin')['id'];
            $data['password'] = md5($pass['admin']['password']);
            if (Admin::update($data)) {
                $this->success('修改成功,下次登录将使用新密码', 'index');
            }

            $this->error('修改失败', 'index');

        }
        return $this->fetch();
    }


}
