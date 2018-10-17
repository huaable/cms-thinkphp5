<?php
namespace app\admin\controller;


use think\Url;
use think\Validate;

class UploaderController extends CommonController
{

    // 文章正文 单图、多图上传
    public function uploader()
    {

        $files = $this->request->file('file');


        $files = !is_array($files) ? [$files] : $files;

        //自定义目录名
        $dir = $this->request->get('dir', 'test');

        // 只允许字母、数字和下划线 破折号 为目录名
        if (!preg_match('/^[A-Za-z0-9\-\_]+$/', (string)$dir)) {
            return json([
                'errno' => 1,
                'data' => '上传出错'
            ]);
        }

        $data = [];
        foreach ($files as $file) {
            // 移动到框架应用根目录/public/uploads/ 目录下
            $info = $file->validate(['size' => 2048000, 'ext' => 'jpeg,jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads' . DS . $dir);

            if ($info) {
                $data[] = '/uploads' . DS . $dir . DS . $info->getSaveName();
            }
        }

        return json([
            'errno' => 0,
            'data' => $data
        ]);

    }

}