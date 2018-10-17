<?php
namespace app\admin\controller;

/**
 * 后台统一登录验证，公共控制器
 * @since   1.0
 */

use think\Controller;
use think\Session;

class CommonController extends Controller
{
    public function _initialize()
    {
        //判断管理员是否登录
        if (!Session::get('admin')) {
            $this->redirect('login/index');
        }
    }

    //空操作
    public function _empty()
    {
        $this->error('空操作，返回上次访问页面中...');
    }
}
