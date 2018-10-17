<?php

namespace app\common\model;

use think\Model;
use think\Session;

class Admin extends Model
{
    public function login($data)
    {
        $user = model('admin')->where('username', $data['username'])->find();
        if ($user) {
            if ($user['password'] == md5($data['password'])) {
                Session::set('admin', [
                    'id' => $user['id'],
                    'username' => $user['username'],
                ]);
                return true;
            } else {
                return false; //密码错误
            }
        } else {
            return false; //用户不存在
        }
    }

}
