<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

////开启域名部署后
//switch ($_SERVER['HTTP_HOST']) {
//
//    //测试地址
//    case 'localhost:8888':
//    case '47.104.107.252':
//    case '47.104.107.252:80':
//    case '47.104.107.252:8080':
//        if (substr($_SERVER['PATH_INFO'], 0, 6) != '/admin') {
//            define('BIND_MODULE', 'index');
//        }
//        break;
//
//    case 'xxx.com':
//        define('BIND_MODULE', 'index');
//        break;
//
//    case 'admin.xxxx.com':
//        break;
//}

//隐藏模块名称
define('BIND_MODULE', 'index');

// [ 应用入口文件 ]
if (!defined('__PUBLIC__')) {
    $_public = rtrim(dirname(rtrim($_SERVER['SCRIPT_NAME'], '/')), '/');
    define('__PUBLIC__', (('/' == $_public || '\\' == $_public) ? '' : $_public));
}
// 定义应用目录
define('APP_PATH', __DIR__ . '/../application/');
// 加载框架引导文件
require __DIR__ . '/../thinkphp/start.php';


