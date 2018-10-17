<?php
namespace app\common\model;

use think\Model;

class Config extends Model
{


    public static function getItem($name)
    {
        $find = model('config')->where(['name' => $name])->find();
        if ($find) {
            return $find['value'];
        }
        return null;

    }
}
