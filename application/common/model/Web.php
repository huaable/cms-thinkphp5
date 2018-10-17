<?php
namespace app\common\model;

use QL\QueryList;
use think\Model;

class Web extends Model
{


    public static function updateDataById($id)
    {

        $web = model('web')->find(['id' => $id]);
        if (!$web) {
            return false;
        }

        $data = self::loadDataByUrl($web['website']);
        $data['update_time'] = time();
        $web->update($data, ['id' => $id]);
    }

    public static function loadDataByUrl($website)
    {
        $rules = [
            'title' => ['title', 'text', ''],    //获取纯文本格式的标题,并调用回调函数1
        ];
        $q = QueryList::Query($website, $rules);
        $meta = get_meta_tags($website);
        $data = [];
        $data['title'] = !empty($q->data) ? $q->data[0]['title'] : '';
        $data['description'] = isset($meta['description']) ? $meta['description'] : '';
        $data['keywords'] = '';
        if (isset($meta['keyword'])) {
            $data['keywords'] = $meta['keyword'];
        }
        if (isset($meta['keywords'])) {
            $data['keywords'] = $meta['keywords'];
        }

        $data['website'] = $website;
        return $data;
    }

    public static function createDataByUrl($website)
    {
        $data = self::loadDataByUrl($website);
        $data['update_time'] = time();
        $find = model('web')->where(['website' => $website])->find();
        if (!$find) {
            $data['create_time'] = time();
            model('web')->insert($data);
        } else {
            model('web')->update($data, ['id' => $find->id]);
        }

    }


    public static function checkUrl($website)
    {
        if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $website)
        ) {
            return false;
        }
        return true;
    }

}
