<?php
namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Category;
use app\common\model\User;
use think\Controller;
use think\Db;
use think\Session;
use think\Validate;

class LoginController extends CommonController
{

    // 登录页
    public function index()
    {

        if (request()->isPost()) {
            $data = input('post.');

            if (!captcha_check($data['captcha'])) {
                $this->error('验证码错误，重新输入!');
            }

            $validate = new Validate([
                'username' => 'require',
                'password' => 'require',

            ]);

            $validate->message([
                'username.require' => '请输入用户名!',
                'password.require' => '请输入您的密码!',
            ]);

            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }

            $findUser = Db::name("user")->where(['username' => $data['username']])->find();
            if (!$findUser) {
                $this->error('用户不存在');
            }

            if ($findUser['password'] == md5($data['password'])) {
                Session::set('login_user', [
                    'id' => $findUser['id'],
                    'username' => $findUser['username'],
                ]);
                $this->redirect('Index/index');
            }

            $this->error('密码错误');
        }
        return $this->fetch();

    }

    //退出登录
    public function logout()
    {
        Session::delete('login_user');
        $this->redirect('Index/index');
        //$this->success("退出成功!");
    }

}
