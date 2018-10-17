<?php

/**
 * VisitorController
 * @since   1.0
 */
namespace app\admin\controller;

class VisitorController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {
        //每页显示10条
        $lists = model('visitor')->order('id desc')->paginate(10);
        $page = $lists->render();
        $this->assign('lists', $lists);
        $this->assign('page', $page);
        return $this->fetch();

    }

}
