<?php

/**
 * 文章管理控制器
 * @since   1.0
 */

namespace app\admin\controller;

use app\common\model\Article;
use app\common\model\Category;
use app\common\model\Comment;
use app\common\model\Config;
use think\Session;

class ArticleController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {

        $model = new Article();

        //每页显示10条
        $lists = $model->order('id desc')->paginate(10);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();
    }

    // 新增
    public function create()
    {

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            $data['create_time'] = $data['update_time'] = time();
            $data['admin_id'] = Session::get('admin')['id'];
            $data['user_id'] = Config::getItem('user_id');
            if (\app\common\model\Article::create($data)) {
                $this->success('新增成功', 'index');
            }

            $this->error('新增失败', 'create');

        }

        $category_list = model('category')->order('weight desc')->select();
        $this->assign('category_list', $category_list);

        return $this->fetch();
    }

    // 修改
    public function update()
    {
        $model = new Article();
        $model = $model->where(['id' => input('param.id')])->find();

        // 提交
        if (request()->isPost()) {
            $data = input('post.')['Model'];
            $data['update_time'] = time();
            $data['admin_id'] = Session::get('admin')['id'];

            if (\app\common\model\Article::update($data, ['id' => $model->id])) {
                $this->success('修改成功', 'index');
            }
            $this->error('修改失败', 'create');
        }

        $this->assign('model', $model);

        $category_list = model('category')->order('weight desc')->select();
        $this->assign('category_list', $category_list);

        return $this->fetch();
    }

    // 查看
    public function view()
    {
        $model = new Article();
        $model = $model->where(['id' => input('param.id')])->find();
        $this->assign('model', $model);
        return $this->fetch();
    }

    // 删除
    public function delete()
    {
        $model = new Article();
        $model = $model->where(['id' => input('param.id')])->find();

        if ($model && $model->delete()) {
            $this->success('删除成功');
        }

        $this->error('删除失败');

    }


}
