<?php

namespace app\common\model;

use think\Image;
use think\Model;
use think\Url;

class Article extends Model
{


    // id显示评论数 页面调用
    public static function showCommentNumber($id)
    {
        $model = new Comment();
        return $model->where(['article_id' => $id])->count();
    }

    //显示文章标题
    public static function showArticleTitle($id)
    {
        $data = Article::get(['id' => $id]);
        return $data ? $data->data['title'] : '';
    }

    //显示文章标题
    public function showCate()
    {
        $data = Category::get(['id' => $this->category_id]);

        return $data ? $data->data['name'] : '';
    }

    /**
     * 缩略图剪裁
     * @param $filename ／uploads/xxx/xxx.jpg
     * @param $w
     * @param $h
     * @return string
     */
    public function getThumbUrl($filename, $w, $h)
    {

        $filename = $filename ? $filename : '/static/index/img/no.jpg';
        $i = pathinfo($filename);

        $file = ROOT_PATH . 'public' . $filename;
        $thumbPath = '/thumbs' . $filename . DS;
        $thumbFilename = $w . '_' . $h . '.' . $i['extension'];
        $thumbTruePath = ROOT_PATH . 'public' . $thumbPath;
        //创建缩略图
        if (file_exists($file) && !file_exists($thumbTruePath . $thumbFilename)) {
            if (is_dir($thumbTruePath) || mkdir($thumbTruePath, 0755, true)) {
                Image::open($file)->thumb($w, $h, Image::THUMB_CENTER)->save($thumbTruePath . $thumbFilename);
            }
        }
        return Url::build('/', '', '', true) . $thumbPath . $thumbFilename;

    }


    public function showAuthor($user_id)
    {
        if ($user_id == 0) {
            return '肖华的新鲜日常';
        }

        $user = model('user')->where(['id' => $user_id])->find();
        if ($user) {
            return $user['username'];
        }
        return '?';
    }

}
