<?php
namespace app\common\model;

use think\Model;

class User extends Model
{
    //显示用户名
    public static function showUsername($id)
    {
        $data = User::get(['id' => $id]);
        return $data ? $data->data['username'] : '游客';
    }
}
