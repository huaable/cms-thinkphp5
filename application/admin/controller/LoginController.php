<?php
/**
 * 后台登陆页面控制器
 * @since   1.0
 */

namespace app\admin\controller;

use think\Controller;
use app\common\model\Admin;
use think\Session;

class LoginController extends Controller
{
    public function _initialize()
    {
        if (Session::get('admin')) {
            $this->redirect('index/index');
        }
    }

    public function index()
    {

        //post 提交表单，登录检查用户名密码
        if (request()->isPost()) {

            $admin = new Admin();
            $data = input('post.');
            if (!$this->check($data['captcha'])) {
                $this->error('验证码错误，重新输入!', 'index');
            }

            $num = $admin->login($data['admin']);
            if ($num == true) {
                //登录成功!
                $this->redirect('index/index');

            } else {

                $this->error('用户名或者密码错误，重新输入!', 'index');

            }
        } else {

            return $this->fetch('login/index');
        }
    }

    protected function check($code)
    {
        return captcha_check($code);
    }

}