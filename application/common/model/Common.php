<?php
namespace app\common\model;

use think\Image;
use think\Model;
use think\Url;

class Common extends Model
{

    /**
     * 缩略图剪裁
     * @param $filename ／uploads/xxx/xxx.jpg
     * @param $w
     * @param $h
     * @return string
     */
    public function getThumbUrl($filename, $w, $h)
    {

        //        $filename = $filename ? $filename : '/static/index/img/no.jpg';
        //无名文件或者有名的文件不存在
        if (empty($filename) || !file_exists(ROOT_PATH . 'public' . $filename)) {
            $filename = '/static/index/img/no.jpg';
        }
        $file = ROOT_PATH . 'public' . $filename;
        $i = pathinfo($filename);
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

}
