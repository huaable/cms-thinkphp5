<?php

namespace app\index\controller;
use PFinal\Wechat\Kernel;
use PFinal\Wechat\Service\JsService;
use PFinal\Wechat\Service\OAuthService;
use PFinal\Wechat\Service\PayService;
use think\Log;

/**
 * Class WxPayController
 * @package app\index\controller
 */
class WxpayController extends CommonController
{

    public function index()
    {

//        $config = [
//            'appId' => 'wx00e5904efes9',
//            'appSecret' => '419ffc73eb1fga846c6b04b',
//            'token' => '54b780cbe9047',
//            'encodingAesKey' => 'cz7NR8g4vk5yMydpG3g8amyFGbjavCuR33',
//            'mchId' => '1220633201',
//            'apiSecret' => 'b4944959c6eaed319a86e3a10d',
//        ];
        $config = config('wxpay');

        // 初始化SDK
        Kernel::init($config);

        // 获取OpenID
        $openid = OAuthService::getOpenid();
        //$openid='oU3OCt5O46PumN7IE87WcoYZY9r0';
        // JS签名
        $signPackage = JsService::getSignPackage();

        // 支付成功通知url
        /* 收到支付成功通知时,请使用下面的方法,验证订单号和支付金额
            $info = \PFinal\Wechat\Service\PayService::notify();
            $info数组,内容如下
            [
                 mch_id          //微信支付分配的商户号
                 appid           //微信分配的公众账号ID
                 openid          //用户在商户appid下的唯一标识
                 transaction_id  //微信支付订单号
                 out_trade_no    //商户订单号
                 total_fee       //订单总金额单位默认为分，已转为元
                 is_subscribe    //用户是否关注公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效
                 attach          //商家数据包，原样返回
                 time_end        //支付完成时间
            ]
        */
        $notifyUrl = url('/index/wxpay/notify','','',true);
//        'http://xxx.com/index.php/wxpay/notify';

        // 订单信息
        $order = array(
            'totalFee' => 0.01,    //支付金额
            'tradeNo' => uniqid(), //订单号
            'name' => '测试订单',   //订单名称
        );

        // 业务签名
        $bizPackage = PayService::createJsBizPackage(
            $openid,
            $order['totalFee'], $order['tradeNo'], $order['name'],
            $notifyUrl,
            $signPackage['timestamp']
        );
        $this->fetch();

    }

    public function notify(){

        Log::info('wxpay:',time());
    }

}
