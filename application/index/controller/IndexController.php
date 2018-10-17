<?php

namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Category;
use app\common\model\SearchHistory;
use app\common\model\User;
use think\Controller;
use think\Db;
use think\Session;
use think\Validate;

class IndexController extends CommonController
{


    //分类页
    public function Index()
    {

        $model = new Article();
        $where = [];

        if (input('param.category_id')) {
            $where['category_id'] = input('param.category_id');
        }

        if (input('param.w')) {
            $where['title'] = ["like", "%" . input('param.w') . "%"];
            $search = new SearchHistory();
            $search->save([
                'keywords' => input('param.w'),
                'ip' => request()->ip(),
                'create_time' => time(),
            ]);
        }

        //每页显示10条
        $lists = $model->where($where)->order('id desc')->paginate(20);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch('category/index');

    }

}
