<?php

/**
 * 评论管理控制器
 * @since   1.0
 */
namespace app\admin\controller;


class CommentController extends CommonController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    // 分页查询
    public function index()
    {

        $where = [];
        $params = input('param.');
        if(!empty( $params && isset($params['article_id']))){
            $where['article_id'] = input('param.')['article_id'];
        }

        //每页显示10条
        $lists = model('Comment')->where($where)->order('id desc')->paginate(10);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();

    }


    // 删除
    public function delete()
    {
        $model = model('comment')->where(['id' => input('param.id')])->find();

        if ($model && $model->delete()) {
            $this->success('删除成功');
        }

        $this->error('删除失败');

    }





}
