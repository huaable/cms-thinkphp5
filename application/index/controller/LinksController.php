<?php
namespace app\index\controller;


class LinksController extends CommonController
{


    public function Index()
    {

        $where = [];

        //每页显示10条
        $lists = model('links')->where($where)->order('id desc')->paginate(36);
        $page = $lists->render();

        $this->assign('lists', $lists);
        $this->assign('page', $page);

        return $this->fetch();
    }

    public function go()
    {
      
        if (input('param.url')) {
            $this->redirect(input('param.url'));
        }
        
        if(input('param.id')){
            $find = model('links')->find(['id' => input('param.id')]);
             if ($find) {
                $find->setInc('click_number', 1);
                 $this->redirect($find->url);
            }
        }

        $this->error('跳转错误');
    }

}
