<?php
namespace app\index\controller;

use app\common\model\Visitor;
use app\common\model\Category;
use think\Controller;
use think\Session;

/**
 * 公共控制器
 * Class CommonController
 * @package app\index\controller
 */
class CommonController extends Controller
{
    protected $beforeActionList = [
        'visitorHistory'
    ];

    //初始化
    public function _initialize()
    {
        //统一赋值
        $category_list = model('Category')->where(['status' => Category::STATUS_SHOW])->order('weight desc')->select();
        $temp = model('Config')->select();

        $config = [];
        foreach ($temp as $item) {
            $config[$item['name']] = $item['value'];
        }
        //分配变量 文章分类
        $this->assign('category_list', $category_list);
        //读取系统配置表
        $this->assign('config', $config);
        //登录用户
        $this->assign('login_user', Session::get('login_user'));

    }


    //空操作
    public function _empty()
    {
        abort(404);
//        $this->error('空操作，返回上次访问页面中...');
    }

    //记录访问页面url（包括找不到页面、找不到图片，用户手动输入错误url，正常访问url）
    public function visitorHistory()
    {
        //访客记录
        $visitor = new Visitor();
        $data['ip'] = request()->ip();
        $data['url'] = request()->url();
        $data['get'] = serialize(request()->get());
        $data['post'] = serialize(request()->post());
        $data['create_time'] = time();
        $visitor->save($data);
    }

}
