<?php
namespace app\index\controller;

use app\common\model\User;
use think\Controller;
use think\Db;
use think\Session;
use think\Validate;

class UserController extends CommonController
{


    public function Index()
    {

        return $this->fetch();

    }



}
