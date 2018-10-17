<?php

namespace app\index\controller;


class QrController extends CommonController
{


    public function index()
    {
        $data = request()->get('text', '');
        //引入php QR库文件
        vendor('phpqrcode.phpqrcode');
        // 纠错级别：L、M、Q、H
        $level = 'L';
        // 点的大小：1到10
        $size = 10;
        \QRcode::png($data, false, $level, $size);
        exit;
    }
}
