-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-03-04 05:35:10
-- 服务器版本： 5.6.29
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_movie`
--

-- --------------------------------------------------------

--
-- 表的结构 `cms_admin`
--

CREATE TABLE `cms_admin` (
  `id` int(11) NOT NULL COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `password` varchar(70) NOT NULL COMMENT '管理员密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员';

--
-- 转存表中的数据 `cms_admin`
--

INSERT INTO `cms_admin` (`id`, `username`, `password`) VALUES
(1, 'dev', 'e77989ed21758e78331b20e477fc5582');

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE `cms_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(225) NOT NULL DEFAULT '',
  `summary` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `video` varchar(225) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `read_number` int(11) NOT NULL DEFAULT '0',
  `like_number` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `category_id`, `user_id`, `title`, `summary`, `thumb`, `video`, `description`, `content`, `read_number`, `like_number`, `create_time`, `update_time`, `admin_id`) VALUES
(1, 12, 0, '剪辑的基本流程参考', '', '', '', '', '<ul><li><b>熟悉脚本</b></li></ul><p>        提炼中心思想，理清叙事结构（连续式、交互式、问答式等等）</p><ul><li><b>跟导演进行有效的沟通</b></li><li><b>挑选素材</b></li></ul><p>        1、表演是否到位<br>        2、是否促进故事的发展<br>        3、节奏<br>        4、构图</p><ul><li><b>粗剪</b></li></ul><p>        调节镜头的剪切点和组接顺序</p><ul><li><b>精剪</b></li></ul><p>        根据观众心理来调整叙事结构，再次调整剪辑点与音乐／音效配合，整体时间的把控</p><p><br></p><p>－－－－－－－－－－－－－－－－</p><h2><b>​</b>​准备工作</h2><p>熟悉素材并修改拍摄提纲</p><p>准备设备</p><p>与有关人员协商</p><p>整理素材</p><h2>剪辑阶段</h2><p>纸上剪辑（编辑设想）</p><p>粗剪</p><p>精剪</p><h2>检查阶段</h2><p>检查意义上的表达</p><p>检查画面</p><p>检查声音</p><p><br></p>', 182, 0, 1518078664, 1519751883, 1),
(18, 10, 0, '虚幻4 UE4Editor 入门 第二天', '', '', '', '', '<p><br></p><p><b>第一节课</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p><b>搭建场景练习（目标结果参考<span lang="EN-US">FirstPerson</span></b><b>预设项目）<span lang="EN-US"><o:p></o:p></span></b></p><p><b><span lang="EN-US"><o:p> </o:p></span></b></p><p><b>世界大纲视图<span lang="EN-US">(</span></b><b>场景中的一切物体<span lang="EN-US">)<o:p></o:p></span></b></p><p><b><span lang="EN-US"><o:p> </o:p></span></b></p><p><b>构建（相当于烘焙）<span lang="EN-US"><o:p></o:p></span></b></p><p>什么时候需要构建？</p><p>视图界面会有红字，地面出现文字，提示你物体需要构建，构建需要较长时间</p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>添加光源设置环境<span lang="EN-US">,</span></b><b>渲染设置<span lang="EN-US"><o:p></o:p></span></b></p><p><b><span lang="EN-US"><o:p> </o:p></span></b></p><p>模式（光照）</p><p>定向光源（相当于太阳）</p><p>天空光源</p><p><span lang="EN-US"><o:p> </o:p></span></p><p>搜索 <span lang="EN-US" style="">sky </span>找到并添加 <b>,</b>天空球（控制天空颜色、云层、场景亮度、场景颜色等）</p><p>视觉效果</p><p>添加反射球</p><p><span lang="EN-US">PostProcessVolume </span>包容整个场景，调整场景后期效果</p><p>模式（体积）</p><ul><li>添加<span lang="EN-US">lightmass importance volume </span>包容整个场景，提高输出质量<br></li></ul><p><span lang="EN-US"><o:p> </o:p></span></p><p>第二节课<span lang="EN-US"><o:p></o:p></span></p><p><b>渲染输出设置<span lang="EN-US"><o:p></o:p></span></b></p><p><span lang="EN-US"><o:p> </o:p></span></p><p>工具栏》设置》项目设置</p><p>引擎》<span lang="EN-US">Rendering</span></p><p><span lang="EN-US">Default Settings</span></p><p></p><ul><li>Auto Exposure × 关闭自动曝光（自动曝光模拟人眼在亮暗场景切换时的视觉效果）<br></li><li>Bloom × 关闭灯光溢出（比如像石边缘闪动，写实）<br></li><li>Motion blur 动态模糊，输出视频时再打开<br></li><li>Ambient Occlusion 打勾<br></li><li>Ambient Occlusion Static Fraction 打勾<br></li><li>Anti-Aliasing Method :FXAA 抗锯齿，如果有透明物体用<span lang="EN-US">MXAA</span><br></li></ul><p></p><p><span lang="EN-US">Reflections</span></p><ul><li>Reflection Capture Resolution: 1024 开到最高<br></li></ul><p><span lang="EN-US">Texeures</span></p><ul><li>Texture Streaming × 自动优化材质渲染流，如果我们是要得到高质量的视频<br></li></ul><p>引擎》一般设置</p><p></p><ul><li>Framerate 帧速率<br></li><li>Smooth Fame Rate 平滑帧速率 打勾<br></li><li>Min Desired Frame Rate: 25<br></li><li>Fixed Frame Rate:25<br></li></ul><p></p><p>工具栏》设置》世界设置</p><p><img src="/uploads/article/20180301/bb34e8f3a2ae39ad7286bb2b599a1048.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><span lang="EN-US">Lightmass settings</span>灯光渲染设置</p><p></p><ul><li>Static Lighting Level Scale: 0.2 镜头灯光缩放级别，越小越精细<br></li><li>Num Indirect Lighting Bounces: 50<br></li><li>Indirect Lighting Quality :10<br></li><li>Indirect Lighting Smoothness: 0.75<br></li><li>Use Ambient Occlusion 使用环境吸收，构建烘焙时需要<br></li><li>Compress Lightmaps × 压缩灯光质量 关闭，我要高质量的结果<br></li></ul><p></p><p>光照贴图</p><ul><li>Packed Light and Shadow Map Texture Size ：<span lang="EN-US">4096</span><br></li></ul><p><span lang="EN-US"><o:p> </o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>导入室内模型<span lang="EN-US"><o:p></o:p></span></b></p><p>新建关卡</p><p>导入所有模型（不要勾选材质和贴图）</p><p>选中模型》<span lang="EN-US">Lighting </span>》细节</p><ul><li>Overridden Light Map Res: 1024 灯光贴图质量<br></li></ul><p>自己布置灯光，天空等环境</p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>截图</b></p><p>视窗左边下箭头》高分辨率截图</p><p><span lang="EN-US"><o:p> </o:p></span></p><p>下午 第一节课<span lang="EN-US"><o:p></o:p></span></p><p><b>材质贴图练习</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>内容浏览器》新建文件夹（木桶材质）<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US">A</span>、导入贴图（纹理、法线、阴影）<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US">B</span>、右键创建材质，双击进入材质管理器<span lang="EN-US"><o:p></o:p></span></p><p>颜色通道（或是其他<span lang="EN-US">R</span>，<span lang="EN-US">G</span>，<span lang="EN-US">B</span>，<span lang="EN-US">A</span>通道）<span lang="EN-US">--</span>》输入到基础颜色属性<span lang="EN-US"><o:p></o:p></span></p><p>法线贴图<span lang="EN-US">—</span>》输入到法线属性<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>自定义创建用户数据连接到材质</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>按住键盘 <span lang="EN-US">1 </span>，空白处点左键创建 <span lang="EN-US">1</span>维向量<span lang="EN-US"><o:p></o:p></span></p><p>按住键盘 <span lang="EN-US">2 </span>，空白处点左键创建 <span lang="EN-US">2</span>维向量 <span lang="EN-US">R G<o:p></o:p></span></p><p>按住键盘<span lang="EN-US"> 3 </span>，空白处点左键创建<span lang="EN-US"> 3</span>维向量 <span lang="EN-US">RGB</span>颜色<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p>材质细节 勾选<span lang="EN-US">Two sided </span>双面材质，（如果没勾选，默认只有法线方向一面有材质）<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>贴图重复平铺制作</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>空白处点右键添加<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US">TextureCoordinate<o:p></o:p></span></p><p>参数 <span lang="EN-US">U:4 V:4<o:p></o:p></span></p><p>输入到纹理贴图<span lang="EN-US"><o:p></o:p></span></p><p>输入到法线贴图<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><img src="/uploads/article/20180301/652d72640279ba6f75c47955b72ac4a6.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>让材质纹理运动起来</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>空白处点右键添加<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US">Panner<o:p></o:p></span></p><p>参数 <span lang="EN-US">speedX:0.1 speedY:0.1<br></span>输入到纹理贴图<span lang="EN-US"><o:p></o:p></span></p><p>输入到法线贴图<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span><img src="/uploads/article/20180301/50d96513a0f01e2471cc4f9811453a00.png" style="max-width: 100%;"></p><p><b>如何保存文件？</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>工具栏<span lang="EN-US">=</span>》保存关卡<span lang="EN-US"><o:p></o:p></span></p><p>内容浏览器<span lang="EN-US">=</span>》保存所有<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p> </o:p></span></p><p><b>补充内容</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>新建关卡<span lang="EN-US"><o:p></o:p></span></p><p>添加新项》添加工程内容包</p><p><br></p><style>\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:宋体;\r\n	panose-1:2 1 6 0 3 1 1 1 1 1;\r\n	mso-font-alt:SimSun;\r\n	mso-font-charset:134;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:3 680460288 22 0 262145 0;}\r\n@font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:0 0 0 0 0 0 0 0 0 0;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-520092929 1073786111 9 0 415 0;}\r\n@font-face\r\n	{font-family:"\\@宋体";\r\n	panose-1:2 1 6 0 3 1 1 1 1 1;\r\n	mso-font-charset:134;\r\n	mso-generic-font-family:auto;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:3 680460288 22 0 262145 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	text-align:justify;\r\n	text-justify:inter-ideograph;\r\n	mso-pagination:none;\r\n	font-size:10.5pt;\r\n	mso-bidi-font-size:11.0pt;\r\n	font-family:"Calibri",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:宋体;\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-font-kerning:1.0pt;}\r\np.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph\r\n	{mso-style-priority:34;\r\n	mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	text-align:justify;\r\n	text-justify:inter-ideograph;\r\n	text-indent:21.0pt;\r\n	mso-char-indent-count:2.0;\r\n	mso-pagination:none;\r\n	font-size:10.5pt;\r\n	mso-bidi-font-size:11.0pt;\r\n	font-family:"Calibri",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:宋体;\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-font-kerning:1.0pt;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-family:"Calibri",sans-serif;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n /* Page Definitions */\r\n @page\r\n	{mso-page-border-surround-header:no;\r\n	mso-page-border-surround-footer:no;}\r\n@page WordSection1\r\n	{size:595.3pt 841.9pt;\r\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\r\n	mso-header-margin:42.55pt;\r\n	mso-footer-margin:49.6pt;\r\n	mso-paper-source:0;\r\n	layout-grid:15.6pt;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n-->\r\n</style><p><br></p>', 5, 0, 1519881900, 1519882079, 1),
(2, 1, 0, '视频制式介绍 PAL制 N制 HD高清 SD标清', '', '', '', '', '<table  border="0" width="100%" cellpadding="0" cellspacing="0"><tbody><tr><th width=200> 名称</th><th  width=200>PAL制 625行 </th><th>N制 525行 </th></tr><tr><td> 帧速率</td><td> 20帧每秒</td><td> 30帧每秒</td></tr><tr><td> 场速率</td><td>50场每秒 </td><td> 60场每秒</td></tr><tr><td> 画面宽高</td><td> 750*576</td><td> 720*480</td></tr><tr><td> 像素长宽比</td><td> 1.067</td><td> 0.9</td></tr></tbody></table><br><p></p><table border="0" width="100%" cellpadding="0" cellspacing="0"><tbody><tr><th width=200> 名称</th><th  width=200>HD(高清)</th><th>SD(标清)</th></tr><tr><td>画面大小</td><td>1920*1080<br>1280*720<br>1440*1080 （HDV）</td><td>720*576 (SD PAL)<br>720*480 (SD MTSC)</td></tr><tr><td>宽高比</td><td>16:9</td><td>4:3</td></tr><tr><td>像素比</td><td>1 （HD）<br>1.33 (HDV)</td><td>1.067 (SD PAL)<br>0.9 (SD NTSC)</td></tr></tbody></table><br><p>目前市场上高清格式主要三种</p><p>1920*1080i     i代表隔行扫描</p><p>1920*1080p    p代表隔行扫描</p><p>1280*720p      p代表逐行扫描</p><p><br></p>', 122, 0, 1518086038, 1518093045, 1),
(5, 9, 0, '视角介绍 俯视 平视 仰视', '', '', '', '', '<h2>俯视</h2><p>物体在视平线下方</p><p>表现层次，运动比较清晰，景致尽收眼底</p><h2>平视</h2><p>物体与视线在啊同一水平线上</p><p>表现视野开阔，平和，自然，稳，自然叙事</p><h2>仰视</h2><p>物体在视平线上方</p><p>大气，威严，宏伟，气势逼人</p><p><br></p>', 22, 0, 1518092611, 1519751859, 1),
(3, 7, 0, 'EDIUS 剪辑软件常用快捷键', '', '', '', '', '<table border="0" width="100%" cellpadding="0" cellspacing="0"><tbody><tr><th width="200"> 快捷键</th><th>说明</th></tr><tr><td> I</td><td>在指针处确定入点 </td></tr><tr><td>O</td><td>在指针处确定出点<br></td></tr><tr><td> SHIFT+I</td><td>指针跳转至入点 </td></tr><tr><td> SHIFT + O </td><td>指针跳转至出点 </td></tr><tr><td> ALT + I </td><td>删除入点</td></tr><tr><td> ALT + O</td><td>删除出点</td></tr><tr><td> X</td><td>同时清除出入点</td></tr><tr><td> J</td><td>倒放 </td></tr><tr><td> 双击J</td><td>加速倒放 </td></tr><tr><td> K</td><td> 暂停</td></tr><tr><td> L</td><td>播放 </td></tr><tr><td> 双击L</td><td> 加速bo f</td></tr><tr><td> ]</td><td>覆盖到时间线 </td></tr><tr><td> [</td><td>插入到时间线</td></tr><tr><td> ALT+ENTER</td><td>查看素材信息 </td></tr><tr><td> HOME键</td><td>指针归位 </td></tr><tr><td> END键</td><td>指针到最尾处 </td></tr><tr><td> CTRL + G</td><td>显示／隐藏时间提示浮层 </td></tr><tr><td> 左／右箭头</td><td>逐帧播放 </td></tr><tr><td>C</td><td>在指针处分割画面 </td></tr><tr><td>N</td><td>删除指针前的画面 </td></tr><tr><td>M</td><td>删除指针后的画面 </td></tr><tr><td> 退格键</td><td>选中镜头，删除之前的波纹（镜头的间隔） </td></tr><tr><td> < 、 ></td><td>逐帧向左／向右移动镜头 </td></tr><tr><td> CRTL+滚轮</td><td>镜头在时间线上放大、缩小 </td></tr><tr><td> A 、 S</td><td>在指针处镜头的编辑点跳转 </td></tr><tr><td> TAB键</td><td>原素材窗口与编辑窗口切换 </td></tr></tbody></table><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: left;">快捷键设置</p><p style="text-align: left;">用户》用户设置》用户界面》快捷键</p><p style="text-align: left;"><br></p>', 92, 0, 1518089172, 1518100072, 1),
(4, 9, 0, '景别介绍 远景 全景 中景 近景 特写', '', '', '', '', '<h2>远景</h2><p>一般重在“取势”，表现规模，气氛，气势，不细琢细节。远景画面包容的景物多，时间要长些（一般3～5秒）</p><h2>全景</h2><p>视野相对小些，既能看清人又能看清环境，所以可以表现人物整体动作以及人物与周围环境的关系，展示一定空间中的人物活动过程</p><p>（给人结束感，可以用作结尾）</p><h2>中景</h2><p>显示人物膝盖以上部分形象的镜头，人物占空间的比例大，观众能看清人物的形体动作，比较清除的观察到人物神态表情，从而反应人物的内心，情绪。影视作品中用的多，短片用得少。主要表现人物同时，提供一定的活动范围</p><h2>近景</h2><p>表现人物胸部以上的镜头或物体局部画面。主要表现人物的神态俄情绪，刻画人物性格，充分表现人物或物体富有意义的局部。</p><h2>特写</h2><p>表现人物肩部以上部位或有关物体。用作介绍人物，突出主体形象；突出贯穿物体；人物细致表情或动作；反应特写环境，使某个物件含义深邃。可以同其他景别反复，使速度加快，造成紧张激烈的气氛，一般同全景结合使用，不宜滥用</p><p><br></p>', 38, 0, 1518090630, 1519751872, 1),
(6, 12, 0, '镜头组接方法', '', '', '', '', '<h2>软剪辑</h2><ul><li>动接动</li></ul><p>当两个镜头中同一个物体或不同主体的动作是连贯的，则可以在前一个镜头的主体动作尚未结束时或刚刚结束时接上另一个主体的运动过程</p><ul><li>静接静</li></ul><p>如果两个镜头的主体运动时不连贯的，或是它们之间有停顿，那么两个镜头的组接就必须在前一个镜头的主体做完一个完整动作停下来以后，再接上一个主图静止开始的镜头</p><h2>硬剪辑</h2><ul><li>静接动</li><li>动接静</li></ul><p>硬剪辑效果给人一种跳跃的视觉形式感受。使外来刺激的感知能量骤变。观众视觉在那一刹那间处于高度紧张状态，表现为一种接受心理上的挫折，但挫折不是很大，处于观众想象的宽容之内，有一定刺激效果</p><h2>镜头运动分类</h2><ul><li>静止</li></ul><p>摄像机不动</p><p>被拍摄主体不动</p><ul><li>运动</li></ul><p>摄像机不动，主体动</p><p>摄像机动，主体不动</p><p>摄像机动，主体动</p><h2>怎样找剪接点？</h2><p>在运动过程中</p><p></p><ul><li>在动作相似相同组接或是动作幅度打的点，也就是速度最快的点</li><li>不同动作组接，只要过程</li><li>动作相似但速度不一样，也要吧动作慢的放前面，快的放后面</li></ul><p>情绪剪接点</p><p>节奏剪接点（叙事节奏）</p><p>对话剪接点（以声音对白内容为依据，结合语音起始，语调，速度来确定）</p><p>音乐剪接点（按乐曲的旋律，节奏，节拍，乐段，乐向，鼓点等为基础，结合镜头剧情内容，情绪节奏为依据进行处理）</p><p>等等</p><p>只要观众接受，规则可变。</p><h2>关于转场</h2><ul><li>动作的切换</li><li>同体转场：同一人或物体在两个镜头中的不同表现进行组接转场（如：主人公的手动作在室内特写，接主人公的一样的手在到了室外环境）</li><li>出入画面转场：同一个物体在上一个镜头出画，在下一个镜头入画进行的转场，但是出入画面要注意运动方向</li><li>遮挡镜头转场：主体物正向镜头运动，直到遮挡镜头，下一个画面使主体背部远离镜头。在这种的转场中，前后镜头主体可以相同也可以不同。</li><li>承接式转场：用前后两个镜头反映事物的前因后果或因果关系（如：小孩种下一颗种子，接大人仰望大树）</li><li>虚化画面转场</li><li>利用声音切换画面</li></ul><p><br></p><p></p><p><br></p>', 41, 0, 1518095224, 1519751844, 1),
(7, 7, 0, 'EDIUS 多机位剪辑操作步骤', '', '', '', '', '<ol><li>整理时间线，删除多余空白轨道，添加视频轨道，将素材加入轨道</li><li>按住Alt键 选择多余音频删除，保留一条质量好的可用音频</li><li>找同步点，删除多余镜头（action打板之前的准备镜头）</li><li>按F8进入多机位模式，选择机位数，</li><li>空格键播放，同时用快捷键数字1、2、3、4、。。。镜头切换镜头，播放结束时就完成多机位剪辑</li></ol>', 4, 0, 1518100472, 1518100481, 1),
(8, 9, 0, '升格拍摄 降格拍摄', '', '', '', '', '<p>一般电影视频为24帧每秒（补充:电视剧视频通常是 25帧每秒，即每秒由25张画面构成）</p><p>用电影24帧每秒的标准划分为</p><p><br></p><p>升格拍摄，每秒大于24帧，一般运动广告使用升格拍摄，为了方便可用需要用到慢镜头的要求</p><p>降格拍摄，动作武打一般会用到</p>', 9, 0, 1518100823, 1519751906, 1),
(9, 12, 0, '镜头过渡效果使用 黑起黑落 闪黑 闪白 切黑 叠化', '', '', '', '', '<p>黑起黑落：时间流逝，区分段落，表现情绪，压节奏</p><p>闪黑：配合音乐，动效剪节奏，卡节奏，脑海里的思维模式</p><p>闪白：回忆，提节奏，配重音，模拟相机胶片曝光</p><p>切黑：多用于刹车戏，模拟人的眼睛（主要看音乐）</p><p>叠化：积累情绪，解决跳的问题</p><p><br></p><p>0.7秒 观众就会有记忆点</p><p>0.5秒 观众就好产生印象感</p><p>0.4秒 观众就会处于形象感与印象之间</p>', 15, 0, 1518101285, 1519751898, 1),
(10, 1, 0, '各类型的视频风格特点', '', '', '', '', '<h2>专题片</h2><p>说明文，说明内容，依附于声音的画面。</p><p>特点：稳、准；看图说话</p><h2>MTV</h2><p>节奏，律动；</p><p>特点：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;舞蹈:跳跃</p><p>&nbsp; &nbsp; 抒情曲：流畅<br></p><p>&nbsp; &nbsp; 国家主旋律：大气</p><p>时空关系三种样式</p><ul><li>叙事时空&nbsp;</li><li>抒情时空</li><li>现实演唱时空</li></ul><h2>广告</h2><p>吸引视线</p><p>视觉能量的跳动（视觉冲击力）</p><p>两级镜头的运用</p><p>特写的运用</p><p>极富感染力的情绪；极富戏剧性的夸张性</p><p>视觉听觉的记忆点（影像潜意识，暗示）</p>', 32, 0, 1518102840, 1518102840, 1),
(11, 8, 0, 'PR多机位剪辑步骤', '', '', '', '', '<div><br></div><p>把素材导入，原素材窗口在打板处手动做标记（同步点）</p><p>框选所有镜头，右键》创建多机位源序列，选择以剪辑标记处为同步点 （如果素材有声音，可用以声音作为同步点分析，这样就不用第一步手动做标记）</p><p>拖拽多机位源序列到新建项，生成剪辑序列</p><p>按住Ctrl键，鼠标双击镜头进入多机位源序列内，保留一条可用的质量较好的音频，多余的音频删除</p><p>切换回剪辑序列，激活节目窗口 Shift ＋ 0 零，可切换到多机位窗口显示。播放序列，根据节奏按大键盘的1、2、3、4...来回切换各机位画面。播放结束时，多机位剪辑就完成了。</p><p>激活节目窗口，按shift ＋ 0 零，切回正常窗口（退出多机位剪辑模式）</p><p>Ctrl + M 输出视频</p><p><br></p>', 7, 0, 1518103898, 1519924341, 1),
(12, 8, 0, 'PR轨道遮罩的应用', '', '', '', '', '<p>效果》视频》键控》轨道遮罩</p><ol><li>背景纹理放在下层（被遮罩层）</li><li>字幕层在上层（遮罩层）</li><li>把轨道遮罩效果，拖拽到纹理层（被遮罩层）</li><li>选择遮罩层，使用效果控件，调整alpha透明度，亮度（越亮越清晰），颜色</li></ol>', 9, 0, 1518104339, 1518104339, 1),
(13, 1, 0, '色彩知识', '', '', '', '', '<h2>色彩三要素</h2><ul><li>色相<br></li><li>明度<br></li><li>纯度<br></li></ul><p><br></p><h3>色相​</h3><p>无彩色：黑、白、灰</p><p>红色：热情、危险、热情、活力</p><p>蓝色：平静、理智、深远、稳重</p><p>黄色：光明、希望、活泼、富贵</p><p>橙色：温暖、喜欢、甜蜜、丰收</p><p>绿色：和平、成长、安全、新鲜</p><p>紫色：梦幻、神秘、优雅、高贵</p><p>白色：纯洁、光明、干净、神圣</p><p>黑色：寂静、恐怖、严肃、刚强</p><p>灰色：平凡、压抑、失落、阴暗</p><p><br></p><h3>明度</h3><p><b>高明度</b></p><p>明快、轻盈、柔弱、单薄、因过亮而色彩感不强</p><p><b>中明度</b></p><p>柔和含蓄、沉着、优雅、色彩感强</p><p><b>低明度</b></p><p>厚重、昏暗、迟钝、色彩感不强</p><p><br></p><h3>纯度</h3><p>纯度序列（饱和度、彩度）</p><p>纯色－次纯色－灰－次浊色－浊色</p><p><br></p><p>高纯度：华丽、明快、刺激、活泼</p><p>低纯度：柔弱、朴素、忧郁、沉稳</p><p><br></p><h2>对比度</h2><p>强对比：刺激、醒目</p><p>中对比：温和、协调</p><p>低对比：平凡、朴素</p><p><br></p><h2>调色目的</h2><p>传达信息、表达情绪、烘托气氛</p><p>刻画人物性格和心理变化</p><p>展现不同的空间、时间、地域感和时代感等作用</p><p><br></p>', 19, 0, 1518104707, 1518105506, 1),
(14, 9, 0, '拍摄短片流程参考', '', '', '', '', '<ul><li>从预算开始</li><li>准备器材</li><li>看场地</li><li>定演员</li><li>制定拍摄周期</li><li>画版（故事）</li></ul><p><br></p><p>拍摄器材</p><p>手机、数码相机、Go pro</p><p>单反 5D、D6</p><p>摄像机 （索尼、松下系列）</p><p><br></p><p>其它</p><p>灯光、监视器、打板与场记（记录镜头）、滑轨、电池、现场剪辑、导演、演员</p><p><br></p><p>分镜样本</p><p>镜号 分镜头 场地  景别 时间 字幕 备注</p><p>001  草稿图 超市  特写  1s    xxx   xxx</p><p>...</p><p><br></p><p>提案PPT样本</p><p>前景概要、导演作品、演员介绍／作品、故事大纲</p><p><br></p><p>电视剧统计表样本</p><p>全剧 1000场 日戏 998场 夜戏 2场</p><p>场景 场数 日场 夜场</p><p>超市  20    19      1</p><p>...</p><p><br></p><p><br></p>', 82, 0, 1518106376, 1518106423, 1),
(15, 10, 0, '虚幻4 UE4Editor 入门 第一天', '', '', '', '', '<h2><span lang="EN-US">第一天</span></h2><p><span lang="EN-US">*</span><b>配置推荐</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>处理器&nbsp;四核<span lang="EN-US">&nbsp;2.5Ghz</span>或更高</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>内存<span lang="EN-US">&nbsp;8G</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>显卡<span lang="EN-US">&nbsp;2G</span></p><p><b><span lang="EN-US">*</span>官网下载</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.unrealengine.com/zh-cn</span></p><p><b><span lang="EN-US">*</span>注册账号</b></p><p><span lang="EN-US">*</span>启动器启动软件（<span lang="EN-US">Epic Games Launcher</span>）</p><p>或者</p><p>离线网络打开软件，跳过账号登录直接启动软件</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engine\\Binaries\\Win64\\UE4Editor.exe</span></p><p><b><span lang="EN-US">*</span>新建项目</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FirstPerson</span></p><p><b><span lang="EN-US">*</span>内容浏览器</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maps&nbsp;</span>选择要加载的关卡</p><p><b><span lang="EN-US">*</span>常用操作</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</span>、<span lang="EN-US">D</span>、<span lang="EN-US">W</span>、<span lang="EN-US">S</span>、在播放中使用的操作；和穿越火线游戏一样的操作，左移，右移，前进，后退</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选中物体&nbsp;按<span lang="EN-US">F</span>键&nbsp;最大化比例查看物体</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选中物体&nbsp;按<span lang="EN-US">Alt+</span>左键鼠标&nbsp;绕物体转查看</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选中物体&nbsp;按<span lang="EN-US">Alt+</span>右键&nbsp;远近推拉查看</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选中物体<span lang="EN-US">&nbsp;Shift+</span>左键&nbsp;坐标轴移动物体（可视窗口会跟随物体移动）</p><p><b><span lang="EN-US">*</span>模式</b></p><p>模式（放置模式）</p><p><br></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>基本》</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>放置角色、物体（撞击会有被撞飞之类的物体，类似<span lang="EN-US">C4D</span>中的刚体概念）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>视觉效果》</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post&nbsp;process volume</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>调整影响体积内的视觉效果（色温，环境吸收<span lang="EN-US">AO</span>等等后期系统）</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Geometry</span>》</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>墙体，不可以动的模型，类似<span lang="EN-US">C4D</span>中的碰撞体概念</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>体积》</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lightmass&nbsp;importance volume</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>调整影响体积内的灯光细节质量</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p>模式（笔刷模式）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>贴草坪之类的</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p>模式（地貌模式）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>修改地面</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b><span lang="EN-US">*</span>视图区工具</b></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>位移、旋转、缩放、世界坐标与自身坐标、对齐量化相关、摄像机运动速度</p><p><span lang="EN-US">*</span>构建（控制视图显示质量）</p><p><span lang="EN-US">*</span>播放（进入游戏操作模式，<span lang="EN-US">Esc</span>退出）</p><p><span lang="EN-US">______________________________________________________</span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b><span lang="EN-US">*C4D</span>模型导入<span lang="EN-US">UE</span></b></p><p><span lang="EN-US"><br></span></p><p><span lang="EN-US">1</span>、制作<span lang="EN-US">C4D</span>模型<span lang="EN-US">&nbsp;</span></p><p><span lang="EN-US">C4D</span></p><p>模型一定要<span lang="EN-US">c</span>掉</p><p>导出<span lang="EN-US">fbx</span>文件</p><p><span lang="EN-US">&nbsp;</span>勾选下面选项</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√轨道</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√烘焙所有轨道</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√法线</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b><span lang="EN-US">2</span>、如何导入<span lang="EN-US">C4D</span>模型的？</b></p><p><span lang="EN-US">UE</span></p><p>内容浏览器</p><p>导入》选择刚才的<span lang="EN-US">fbx</span>文件（默认不带动画的）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>勾选下面选项</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mesh</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Combine Meshes</span>（合并零件，如汽车变成一个模型，看需要进行勾选）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Material</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;可不用勾选导入材质贴图，这些也可以在<span lang="EN-US">UE</span>中调整</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b><span lang="EN-US">3</span>、如何导入带动画的模型？（软件支持的是角色骨骼动画，非骨骼类型动画会被自动转骨骼动画）</b></p><p><span lang="EN-US">UE</span></p><p>内容浏览器</p><p>导入》选择刚才的<span lang="EN-US">fbx</span>文件（默认不带动画的）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>勾选下面选项</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mesh</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√<span lang="EN-US">Skeletal Mesh</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√<span lang="EN-US">Use TOAs&nbsp;RefPose</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√<span lang="EN-US">Preserve Smoothing Groups</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√<span lang="EN-US">Import Morph Targets</span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Animation</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>√<span lang="EN-US">Import Animations</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Animation Length : Exported Time&nbsp;</span>全部动画帧时间</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>导入后会创建<span lang="EN-US">4</span>个文件</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>骨架网格物体（仅模型的）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>视频动画序列（带动画的）</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xxx</span></p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xxx</span></p><p><br></p><p><b><span lang="EN-US">4</span>、模型拖入视图？</b></p><p>把骨架网格物体拖入视图</p><p>操作</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选择物体》右键菜单》支点》在这里设置支点偏移</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>调整移动物体</p><p><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>选择物体》右键菜单》支点》设置为支点偏移量</p><p>&nbsp; &nbsp;</p><p><b><span lang="EN-US">5</span>、如何把导出<span lang="EN-US">ue</span>模型？</b></p><p>选中物体</p><p><span lang="EN-US">a</span>、在细节信息窗口中找到<span lang="EN-US">&nbsp;static mesh&nbsp;</span>静态网格物体，点放大镜（在内容浏览器中找到模型）</p><p><span lang="EN-US">b</span>、右键》资源操作》导出</p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b><span lang="EN-US">6</span>、如何导出<span lang="EN-US">ue</span>材质球中的贴图？（比如：材质贴图、法线贴图）</b></p><p>选中物体</p><p><span lang="EN-US">a</span>、在细节信息窗口中找到&nbsp;材质球，点放大镜（在内容浏览器中找到材质球）</p><p><span lang="EN-US">b</span>、双击材质球，找到贴图，点放大镜找到贴图，右键》资源操作》导出</p><p><br></p>', 32, 0, 1519733233, 1519793166, 1),
(16, 3, 0, '路径动画及运动朝向的设置', '', '', '', '', '<h2>路径动画制作步骤</h2><ol><li>用钢笔画出曲折的路径（如果是用工具栏创建的规则形状，需要将属性中的参数控制的Path形状，右键转换成 非参数控制的path 路径）<br><br><img src="/uploads/20180227/b24ac13f85e51ff39325b4d85706ace6.png" style="max-width:100%;"><br><br></li></ol><p><br></p><ol><li>对齐视图中心处，用形状层画一个长方体作为运动物体，<br><br><br><br></li><li>选中路径层展开找到并选中 path 属性，按Ctrl+C\r\n\r\n复制<br><br><img src="/uploads/20180227/9659ef1660d12192b776111916b419df.png" style="max-width:100%;"><br><br></li><li>选中运动物体层，展开找到并选中 position 属性，按Ctrl+V粘贴<br><br><img src="http://dump123.cn/uploads/20180227/4f95ef6ffb67a9a39d60dcf39e77c6e2.png">  <br><br></li></ol><p><b>​如何使运动物体始终朝着运动轨迹的方向？</b></p><p></p><ol><li><b>​</b>​选中运动物体层</li><li>在菜单栏里 layer》transform》Auto-Orientation ( 快捷键Ctrl+Alt+O )<br>选择始终朝向路径方向 Orient Along Path</li></ol><p></p><p><br><img src="/uploads/20180227/8cc06112368429a172d15585d40c17ac.png" style="max-width:100%;"><br></p><p><br><img src="/uploads/20180227/79cc36efc6b303e9f9e46eed784928db.png" style="max-width:100%;"><br></p><p><br></p><p>--------------------------------------- end 结果</p><p><img src="/uploads/20180227/c7d4ca15ab95fd45b2cf2cbebc25186e.png" style="max-width:100%;"><br></p>', 41, 0, 1519735875, 1519748388, 1),
(17, 11, 0, '发展历程', '', '/uploads/article/20180228/7ec57dabe6b074dba07434e59adec001.jpg', '', '', '<div><br></div><p><img src="/uploads/article/20180228/7ec57dabe6b074dba07434e59adec001.jpg" style="max-width:100%;"><br></p><p><br></p><ul><li>2018年02月28日 发布新文章、记录发展历程（将不断及时更新本篇内容）、优化后台代码、修改了主题色及布局样式</li><li>2018年02月11日 工信部网站备案成功<br></li><li>2018年02月08日 简易CMS网站开发完成并上线测试，上传第一批文章<br></li><li>2018年02月07日 收购域名&nbsp;dump123.cn&nbsp;<br></li><li>2018年02月06日 当贺帅在微信里催c4d单帧作业时，突然有了敲代码的激情<br></li><li>2018年02月03日 放假时间，xxx</li></ul><p><br></p>', 80, 0, 1519748888, 1519761110, 1),
(19, 10, 0, '虚幻4 UE4Editor 入门 第三天', '', '', '', '', '<p><b>第一节课</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p><b><span lang="EN-US"><o:p>&nbsp;</o:p></span></b></p><p><b>过场动画》定序器</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p><b><span lang="EN-US"><o:p>&nbsp;</o:p></span></b></p><p><b>简介</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>保存、另存、在内容浏览器中查找、创建摄像机、舞台<span lang="EN-US"><o:p></o:p></span></p><p><img src="/uploads/article/20180301/82ba186752af9f4f978e2e93cb817b2a.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>如何将视图中的物体加到定序器中？</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>点击&nbsp;绿色按钮<span lang="EN-US">track<o:p></o:p></span></p><p><img src="/uploads/article/20180301/327f50ce00bf99d1d11ea32b851e36f0.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>渲染设置</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>图片序列&nbsp;<span lang="EN-US">png</span><span lang="EN-US"><o:p></o:p></span></p><p>质量&nbsp;<span lang="EN-US">Compression&nbsp;Quatity&nbsp;</span>：<span lang="EN-US">100<o:p></o:p></span></p><p><span lang="EN-US">OutputDirectoruy</span><span lang="EN-US">&nbsp;</span>：保存目录<span lang="EN-US"><o:p></o:p></span></p><p>使用自定义开始结束帧<span lang="EN-US">Use Custom End Frame<o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>自定义渲染过程</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US">Enable Texture Streaming :&nbsp;</span>关闭<span lang="EN-US"><o:p></o:p></span></p><p>多通道设置<span lang="EN-US"><o:p></o:p></span></p><p><img src="/uploads/article/20180301/ff701d6940960fc268071cf51bd1a254.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>第二节课</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p>好习惯：整理世界大纲，模型分组<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>上材质</b>：放大镜找到材质，拖到模型上，或是拖到模型细节材质窗口对应属性中<span lang="EN-US"><o:p></o:p></span></p><p>如果需要，编辑材质勾选双面&nbsp;<span lang="EN-US">Two sides</span>。然后重新构建<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p>快捷键&nbsp;<span lang="EN-US">H&nbsp;</span>隐藏，<span lang="EN-US"><o:p></o:p></span></p><p>快捷键&nbsp;<span lang="EN-US">Ctrl + H&nbsp;</span>显示<span lang="EN-US"><o:p></o:p></span></p><p><b><span lang="EN-US"><o:p>&nbsp;</o:p></span></b></p><p><b>内容浏览器操作</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>选中目录》右键<span lang="EN-US">&nbsp;show in&nbsp;</span>浏览器（在本地硬盘找到工程的<span lang="EN-US">Content</span>目录）<span lang="EN-US"><o:p></o:p></span></p><p>如果手动新增了本地文件，内容浏览器需要重启才会重新扫描资源，才会同步显示到内容浏览器<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>将一个工程里的材质复制到新工程中</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>选中材质》右键资源操作》合并<span lang="EN-US"><o:p></o:p></span></p><p>保存到另外一个工程&nbsp;<span lang="EN-US">Content</span>文件夹下<span lang="EN-US"><o:p></o:p></span></p><p><img src="/uploads/article/20180301/e69bf4e488f7363abc8045c2f58f9349.png" style="max-width:100%;"><br></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p><b>第三节课</b><b><span lang="EN-US"><o:p></o:p></span></b></p><p>插件<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p><p>蓝图》打开关卡蓝图<span lang="EN-US"><o:p></o:p></span></p><p><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>', 6, 0, 1519882289, 1519882289, 1),
(20, 4, 0, '角色骨骼关节工具使用', '', '', '', '', '<p><b>创建模型</b></p><p>新建大臂打组、小臂打组，最后分别修改两个组的中心点到关节处</p><p><img src="/uploads/article/20180301/f431e9cb84e0a2a7a033654952f5bd33.png" style="max-width:100%;"><br></p><p><b>创建关节</b></p><p>切到正视图  菜单》角色》关节工具》按住Ctrl键，在关节处建立关节\r\n结合其他视图，调整关节位置（可以带一点关节弯曲倾向）</p><p>检查关节的xyz轴向和大臂组、小臂组的xyz轴向一致朝向</p><p><b>关联上各个关节与模型 的坐标参数变换</b><br></p><p>添加表达式驱动做变换参数关联&nbsp;</p><p><u>或者</u> 模型拖到对应的组下\r\n\r\n（&nbsp; 注意顺序下一步要制作IK链，关节要排最上面）</p><p><b>添加IK链（</b><b>制作完成一只手</b><b>）</b></p><p>选中根关节  菜单》角色》命令》创建IK链&nbsp;</p><p><img src="http://dump123.cn/uploads/article/20180301/31d2086d074ad3d3dec231ac1f233152.png"><br></p><p><b><br></b></p><p><b>制作另外一只手</b></p><p>选中 手组，菜单》角色》镜像工具</p><p>&nbsp;如果镜像后角度错误。可能组里有参数模型或是效果器需要C掉再进行镜像</p><p><img src="/uploads/article/20180301/e851c230b17de91e1991cd36ba548cc3.png" style="max-width:100%;"><br></p><p><br></p><p><b>同理完成其他部分</b></p><p><img src="/uploads/article/20180303/af8c393f932dc42ee935a29ba0930d75.png" style="max-width:100%;"><b><br></b></p><p><b>冻结变换</b></p><p>机器人打组，选中所有东西，属性窗口里坐标》冻结变换<b>》</b>冻结全部psr，为了方便未来模型通过坐标参数复位初始造型</p><p><img src="/uploads/article/20180303/218b091ee7fe937df0be8709bc62a034.png" style="max-width:100%;"><br></p><p><b>制作动画</b></p><p>通过给生成的关节目标 打位移关键帧动画</p><p><br></p><p><br></p><p><br></p>', 45, 0, 1519892519, 1520074456, 1),
(21, 4, 0, 'C4D运动跟踪', '', '', '', '', '<p><b>运动跟踪</b></p><p>菜单》运动跟踪</p><ul><li>采样100% （控制质量）<br></li><li>2D跟踪》跟踪轨数量（控制跟踪点数量）<br></li><li>选项》默认搜索大小改大（针对画面运动速度，改数值，控制下一帧的特征的跟踪搜索范围）</li><li>点击自动跟踪 重建</li></ul><p><b>跟踪修正透视</b></p><p>1.选中运动跟踪层，右键》运动跟踪标签》平面约束</p><p>平面约束（用于确定一个平面，三点确定一个平面，确保三个点都是纯绿色达到最佳效果），平面轴心 Y</p><p>2.选中运动跟踪层，右键》运动跟踪标签》位置约束</p><p>确定世界中心，新建的几何模型将默认在世界中心创建</p><p>3.选中运动跟踪层，右键》运动跟踪标签》矢量位置约束</p><p>确定Z轴方向及其长度</p><p><b>运动场景重建</b></p><p>1.用平面 c掉，通过调整线边，Ctrl＋挤压面等手段建立大楼的整体外观</p><p>2.创建背景，影片素材》创建背景对象</p><p>3.给场景加材质》投射（摄像机贴图），指认摄像机来计算贴图，比例</p><p><br></p>', 10, 0, 1519921827, 1519923773, 1),
(22, 4, 0, '角色骨骼关节工具 绑定 蒙皮 案例', '', '', '', '', '<p><b>​创建关节</b><br></p><p>角色》关节工具（按Ctrl连续点击创建）</p><p><img src="/uploads/article/20180302/c2dfcdba373ddc6e6a2ac33ea4906962.png" style="max-width:100%;"><br></p><p><br></p><p><b>绑定关节</b></p><p><b>选中翅膀和所有关节</b></p><p><img src="/uploads/article/20180302/af3ff1beddffcaa953a03bf80ef8016e.png" style="max-width:100%;"><br></p><p><br></p><p>END</p><p><img src="/uploads/article/20180302/d87ea48861b18139c7d097b07c144781.png" style="max-width:100%;"><br></p><p><br></p>', 15, 0, 1519975825, 1519975825, 1),
(23, 4, 0, '布料绑定', '', '', '', '', '<ul><li>新建平面，设置合适的分段后C掉<br></li><li>新建长条立方体（当作旗杆），给合适分段，C掉<br></li><li>给平面右键添加，模拟布料》布料标签<br></li><li>给平面右键添加，模拟布料》绑带标签 设置绑定对象（旗杆）</li><li>切到点模式，选择平面需要绑的部分点<br></li><li>切到点模式，选择长条立方体需要绑的部分点<br></li><li>回到绑定标签处，点设置完成两个模型点的绑定</li></ul><p><br></p>', 1, 0, 1520000503, 1520000682, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '表id',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '10' COMMENT '状态 10 隐藏 、20 显示',
  `weight` int(11) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- 转存表中的数据 `cms_category`
--

INSERT INTO `cms_category` (`id`, `name`, `status`, `weight`, `parent_id`) VALUES
(4, 'C4D', 20, 0, 0),
(1, '基础', 20, 10, 0),
(3, 'AE', 20, 0, 0),
(2, 'PS', 20, 0, 0),
(7, 'EDIUS', 20, 0, 0),
(8, 'PR', 20, 0, 0),
(9, '拍摄', 20, 9, 0),
(10, '虚幻4', 20, 0, 0),
(11, '系统文章', 10, 0, 0),
(12, '剪辑', 20, 8, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_comment`
--

CREATE TABLE `cms_comment` (
  `id` int(11) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(255) DEFAULT '',
  `content` text COMMENT '留言内容',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cms_config`
--

CREATE TABLE `cms_config` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT AS `配置的key键名`,
  `value` varchar(512) DEFAULT NULL COMMENT AS `配置的val值`,
  `group` varchar(64) DEFAULT NULL COMMENT AS `配置分组`,
  `description` varchar(50) DEFAULT NULL COMMENT AS `描述`
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_config`
--

INSERT INTO `cms_config` (`id`, `name`, `value`, `group`, `description`) VALUES
(1, 'title', '伟大的铅笔\n', '网站信息', '站点名称'),
(2, 'keywords', '影视剪辑包装 动态影像设计师', '网站信息', '关键词'),
(3, 'description', '动态影像设计师的新鲜日常', '网站信息', '描述'),
(4, 'copyright', '', '网站信息', '版权'),
(5, 'icp', '闽ICP备18003677号', '网站信息', '备案号'),
(6, 'icp_url', 'http://www.miitbeian.gov.cn/', '网站信息', '备案号链接');

-- --------------------------------------------------------

--
-- 表的结构 `cms_links`
--

CREATE TABLE `cms_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- 转存表中的数据 `cms_links`
--

INSERT INTO `cms_links` (`id`, `logo`, `name`, `url`, `description`, `weight`, `status`, `click_number`, `create_time`, `update_time`) VALUES
(2, '/uploads/20180209/534239e8213517df342c93250ac20518.png', '花瓣网', 'http://huaban.com/', '利用花瓣网的采集工具，你可以方便地保存任意网页上的图片视频和截图到花瓣网，告别「右键另存到电脑」，还能随时随地查看你的采集。', 0, 0, 0, 1518117392, 1518120751),
(1, '/uploads/20180209/d36efd5f4836a609678b13990e45185d.png', '站酷网', 'http://www.zcool.com', '中国人气设计师互动平台。', 0, 0, 0, 1518117392, 1520140569),
(3, '/uploads/20180209/ec66571d5a3bc77857d4389342ba3bdc.png', 'AK教程', 'http://videocopilot.net.cn/', 'AK大神教程。我们为热爱影视特效以及\n视觉设计的创意工作者们\n提供工具与教程！', 0, 0, 0, 1518117392, 1518122404),
(4, '/uploads/20180209/b5232fcfd7f0301325d462cb4cbe7459.png', 'Bilibili', 'https://www.bilibili.com/', '哔哩哔哩（bilibili）是中国领先的年轻人文化社区，该网站于2009年6月26日创建，被粉丝们亲切的称为“B站”。 ', 0, 0, 0, 1518117392, 1518122941),
(5, '/uploads/20180209/e41ab8241ebd406d4710389c81318037.png', '优酷视频', 'http://www.youku.com/', '视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0, 0, 0, 0, 1518123249),
(6, '/uploads/20180209/c4e77a9681baf2563e1819373121d18c.png', '火星时代', 'http://hxsd.cn/', '火星时代教育-中国数字艺术教育高端品牌', 0, 0, 0, 0, 1518134787),
(7, '/uploads/website/20180304/bcef80b999d41b887d3476c72c29644f.jpeg', 'Framework7', 'http://framework7.taobao.org', '只要你知道 HTML, CSS 和 一点点 Javascript，你就基本知道如何使用 Framework7 来创建一个 iOS 应用了。', 0, 0, 0, 1520136012, 1520137443),
(8, '/uploads/website/20180304/f3929feae35eb88eda4e68cd975e371d.png', 'Phonegap', 'https://phonegap.com', 'Phonegap是一款开源的开发框架，旨在让开发者使用HTML、Javascript、CSS等Web APIs开发跨平台的移动应用程序。现在由Adobe拥有。', 0, 0, 0, 1520137389, 1520137462),
(9, '/uploads/website/20180304/ebe075279fcdae1a7f30a59b8d2c248b.jpg', 'Bootstrap', 'http://www.bootcss.com/', '简洁、直观、强悍的前端开发框架，让web开发更迅速、简单。', 0, 0, 0, 1520138682, 1520138821),
(10, '', 'C4D之家', 'http://www.c4d.cn/', 'C4D之家提供CINEMA4D教程和C4D模型,C4D插件,C4D工程,C4D建模,C4D渲染和C4D动画,粒子动画等全方位C4D中文教学资源等', 0, 0, 0, 1520138780, 1520140633),
(11, '/uploads/website/20180304/f2d3b7bfd758088f92b1af40cf99e33d.jpeg', 'ThinkPHP', 'http://www.thinkphp.cn/', 'ThinkPHP框架 - 是由上海顶想公司开发维护的MVC结构的开源PHP框架', 0, 0, 1, 1520140734, 1520140749);

-- --------------------------------------------------------

--
-- 表的结构 `cms_search_history`
--

CREATE TABLE `cms_search_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_search_history`
--

INSERT INTO `cms_search_history` (`id`, `keywords`, `ip`, `create_time`) VALUES
(15, 'n', '0.0.0.0', 1518106931),
(16, '参考', '117.28.118.70', 1518164937),
(17, 'p', '117.28.118.70', 1518164947);

-- --------------------------------------------------------

--
-- 表的结构 `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '表id',
  `username` varchar(50) DEFAULT NULL COMMENT AS `昵称`,
  `password` varchar(32) NOT NULL DEFAULT ''COMMENT
) ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_web`
--

CREATE TABLE `cms_web` (
  `id` int(11) UNSIGNED NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '0'COMMENT
) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_admin`
--
ALTER TABLE `cms_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_article`
--
ALTER TABLE `cms_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_comment`
--
ALTER TABLE `cms_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_config`
--
ALTER TABLE `cms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_search_history`
--
ALTER TABLE `cms_search_history`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cms_admin`
--
ALTER TABLE `cms_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `cms_article`
--
ALTER TABLE `cms_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id';
--
-- 使用表AUTO_INCREMENT `cms_comment`
--
ALTER TABLE `cms_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `cms_config`
--
ALTER TABLE `cms_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `cms_links`
--
ALTER TABLE `cms_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `cms_search_history`
--
ALTER TABLE `cms_search_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id';
--
-- 使用表AUTO_INCREMENT `cms_web`
--
ALTER TABLE `cms_web`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
