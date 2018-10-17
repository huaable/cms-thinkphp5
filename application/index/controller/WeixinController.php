<?php

namespace app\index\controller;

use PFinal\Wechat\Kernel;
use PFinal\Wechat\Message\Receive;
use PFinal\Wechat\WechatEvent;
use PFinal\Wechat\Support\Log as PFLog;
use think\Controller;

//测试控制器
class WeixinController extends CommonController
{

    public function Index()
    {
        return $this->fetch();
    }

    public function token()
    {
        //配置项
        $config = [
            'appId' => 'wx37258c7e73adebb5',
            'appSecret' => '201cdd6bcb72ac67e009f4673b8c3b18',
            'token' => 'huaable',
            'encodingAesKey' => 'n8iqub0ScwWpmYP1ZNQThxOhEL9KwXGMkrB5X7AL1B0',
            //更多详细配置请参考 demo/config-local.example
        ];
        // 初始化
        Kernel::init($config);

        $this->registerEvent();
        // 处理微信服务器的请求
        $response = Kernel::handle();

        // 将响应输出
        return $response; //Laravel、Yii2等框架中，使用 return $response;
    }



    protected function registerEvent()
    {
        //消息处理
        Kernel::register(Receive::TYPE_TEXT, function (WechatEvent $event) {
            $message = $event->getMessage();

            switch ($message->Content) {
                case '你好':
                    $text = '您好! http://dump123.cn';
                    break;
                default:
                    $text = date('Y-m-d H:i:s') . ' 消息已收到:' . $message->Content;

            }
            $event->setResponse($text);
            $event->stopPropagation();
        });


        Kernel::register(Receive::TYPE_EVENT_SUBSCRIBE, function (WechatEvent $event) {
            $event->setResponse('你来啦~~');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_EVENT_UNSUBSCRIBE, function (WechatEvent $event) {
            $openid = $event->getMessage()->FromUserName;
            PFLog::debug($openid . '取消了关注');
        });

        Kernel::register(Receive::TYPE_SHORT_VIDEO, function (WechatEvent $event) {
            $event->setResponse('收到小视频');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_VIDEO, function (WechatEvent $event) {
            $event->setResponse('收到视频');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_IMAGE, function (WechatEvent $event) {
            $event->setResponse('收到图片');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_VOICE, function (WechatEvent $event) {
            $event->setResponse('收到语音');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_LINK, function (WechatEvent $event) {
            $event->setResponse('收到链接');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_LOCATION, function (WechatEvent $event) {
            $event->setResponse('收到位置信息');
            $event->stopPropagation();
        });

        Kernel::register(Receive::TYPE_EVENT_CLICK, function (WechatEvent $event) {
            //$event->setResponse('点菜单' . $event->getMessage()->EventKey);

            $key = $event->getMessage()->EventKey;

            switch ($key) {
                case 'V1001_GOOD':
                    $event->setResponse('谢谢点赞');
                    break;
                case 'V1001_TODAY_MUSIC':
                    $event->setResponse('今日歌曲');
                    break;
            }

            $event->stopPropagation();
        });


        Kernel::register(Receive::TYPE_EVENT_SCAN, function (WechatEvent $event) {
            PFLog::debug('扫码', (array)$event->getMessage());
            $event->setResponse('扫码');
            $event->stopPropagation();
        });
    }

}
