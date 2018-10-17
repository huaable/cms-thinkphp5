<?php
namespace app\index\controller;

use app\common\model\User;
use think\Db;
use think\Session;
use think\Validate;

class RegisterController extends CommonController
{

    // 注册页
    public function Index()
    {

        if (request()->isPost()) {
            $data = input('post.');
            if (!captcha_check($data['captcha'])) {
                $this->error('验证码错误，重新输入!');
            }

            $validate = new Validate([
                ['username', 'require', '请输入用户名'],
                ['password', 'require', '请输入您的密码'],
                ['repassword', 'require|confirm:password'],
                ['accept', 'require|accepted', '您需要同意协议才能注册']
            ]);

            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
            $findUser = Db::name("user")->where(['username' => $data['username']])->find();
            if (!empty($findUser)) {
                $this->error('用户已存在');
            }

            $time = time();
            $reg_data = [
                'username' => $data['username'],
                'password' => md5($data['password']),
                'create_time' => $time,
                'update_time' => $time,
            ];

            $user = new User();
            //插入数据库
            if ($user = $user->create($reg_data)) {
                Session::set('login_user', [
                    'id' => $user['id'],
                    'username' => $user['username'],
                ]);
                $this->redirect('Index/index');
                //$this->success('注册成功', 'Index/index', 2);
            } else {
                $this->error($user->getError());
            }
        }
        return $this->fetch();

    }

}
