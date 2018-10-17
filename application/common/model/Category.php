<?php

namespace app\common\model;

use think\Model;

class Category extends Model
{

    const STATUS_HIDE = 10;
    const STATUS_SHOW = 20;

    /**
     * 别名
     * @param $name
     * @param $value
     * @return string
     */
    public function itemAlias($name, $value)
    {
        $map = [
            'status' => [
                '10' => '隐藏',
                '20' => '显示',
            ],
        ];

        return isset($map[$name]) && isset($map[$name][$value]) ? $map[$name][$value] : '';
    }

    /**
     * @param $id
     * @return string
     */
    public function showName($id)
    {
        $data = ($this->class)::get(['id' => $id]);
        return $data ? $data->data['name'] : '';
    }
}
