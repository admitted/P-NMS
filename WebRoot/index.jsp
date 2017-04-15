<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script id="allmobilize" charset="utf-8"
            src="../a.yunshipei.com/9076761ef8310d0cfa5aa3a85711410e/allmobilize.min.js"
            tppabs="http://a.yunshipei.com/9076761ef8310d0cfa5aa3a85711410e/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld" href="#"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="合肥市公安局,合肥警务网"/>
    <title>合肥警务网</title>

    <link rel="stylesheet" type="text/css" href="static/front/style/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="static/front/style/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="static/front/style/css/qikoo.css"/>
    <script type="text/javascript" src="static/front/js/constant.js"
            tppabs="http://hf.ahga.gov.cn/res/js/constant.js"></script>
    <script type="text/javascript" src="static/front/js/lwuserLogin.js"
            tppabs="http://hf.ahga.gov.cn/res/js/lwuserLogin.js"></script>
    <script type="text/javascript" src="static/front/js/interview_common.js"
            tppabs="http://hf.ahga.gov.cn/res/js/interview_common.js"></script>
    <script type="text/javascript" src="static/front/js/jquery-1.9.1.min.js"
            tppabs="http://hf.ahga.gov.cn/res/js/jquery-1.9.1.min.js"></script>
    <script src="Scripts/swfobject_modified.js" tppabs="http://hf.ahga.gov.cn/Scripts/swfobject_modified.js"
            type="text/javascript"></script>

</head>

<body>
<div class="header">
    <div class="w1002">
        <div class="fl logo">
            <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="480" height="110">
                <param name="movie" value="static/front/images/logo.swf"
                       tppabs="http://hf.ahga.gov.cn/res/images/logo.swf"/>
                <param name="quality" value="high"/>
                <param name="wmode" value="transparent"/>
                <param name="swfversion" value="15.0.0.0"/>
                <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                <param name="expressinstall" value="Scripts/expressInstall.swf"
                       tppabs="http://hf.ahga.gov.cn/Scripts/expressInstall.swf"/>
                <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="static/front/images/logo.swf"
                        tppabs="http://hf.ahga.gov.cn/res/images/logo.swf" width="480" height="110">
                    <!--<![endif]-->
                    <param name="quality" value="high"/>
                    <param name="wmode" value="transparent"/>
                    <param name="swfversion" value="15.0.0.0"/>
                    <param name="expressinstall" value="Scripts/expressInstall.swf"
                           tppabs="http://hf.ahga.gov.cn/Scripts/expressInstall.swf"/>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
        <div class="fr sear">
            <form>
                <input type="text" class="searTxt" name="keyword" id="keyword" value="请输入关键字"
                       onfocus="if(value=='请输入关键字'){ value=''}" onblur="if(value==''){value='请输入关键字'}"/>
                <input type="button" class="searBtn" value="搜索" onclick="mySearch();"/>
            </form>
            <script language='JavaScript' type="text/javascript">
                document.onkeydown = function () {
                    if (event.keyCode == 13) {
                        if (document.activeElement.id == "keyword") {
                            mySearch();
                        }
                    }
                };
                String.prototype.trim = function () {
                    return this.replace(/(^\s*)|(\s*$)/g, "");
                }
                function mySearch() {
                    var key = document.getElementById("keyword").value.trim();
                    if (key.length <= 0) {
                        alert("关键字必填");
                    } else {
                        window.location.href = "http://www.ahga.gov.cn/ssym/index.html" + "?keyword=" + key + "&lwSiteId=ff8080814b6bf922014b6d20bbb405f9";

                    }
                }
            </script>

        </div>
    </div>
</div>
<div class="menu">
    <ul class="w1002">
        <li class="on"><a href="index.html" tppabs="http://hf.ahga.gov.cn/index.html">首页</a></li>
        <li><a href="jkgk/index.html" tppabs="http://hf.ahga.gov.cn/jkgk/index.html">机构概况</a></li>
        <li><a href="ggyw/index.html" tppabs="http://hf.ahga.gov.cn/ggyw/index.html">公安要闻</a></li>
        <li><a href="xwfb/index.html" tppabs="http://hf.ahga.gov.cn/xwfb/index.html">新闻发布</a></li>
        <li><a href="jwdt/index.html" tppabs="http://hf.ahga.gov.cn/jwdt/index.html">警务动态</a></li>
        <li><a href="jjbl/index.html" tppabs="http://hf.ahga.gov.cn/jjbl/index.html">警界博览</a></li>
        <li><a href="ffcs/index.html" tppabs="http://hf.ahga.gov.cn/ffcs/index.html">防范常识</a></li>
        <li><a href="was2/was/hall/V1/jsp/hf/index.jsp.htm#ewt"
               tppabs="http://hf.ahga.gov.cn:8087/was2/was/hall/V1/jsp/hf/index.jsp#ewt">皖警<img width="17" height="17"
                                                                                                src="static/front/images/e.png"
                                                                                                tppabs="http://hf.ahga.gov.cn/res/images/e.png"
                                                                                                complete="complete"/>网通</a>
        </li>
    </ul>
</div>


<script type="text/javascript" src="static/front/js/fudong.js" tppabs="http://hf.ahga.gov.cn/res/js/fudong.js"></script>

<script type="text/javascript">
    window.onscroll = function () {
        scrollTip();
    };
</script>

<div class="mainbody">
    <div class="w1002">
        <div class="menubar"><span class="currTime">
			 当前时间： <script language='JavaScript' type="text/javascript">
						tmpDate = new Date();
                        date = tmpDate.getDate();
                        month = tmpDate.getMonth() + 1;
                        year = tmpDate.getYear();
                        year = tmpDate.getYear();
                        year = year > 1900 ? year : year + 1900;
                        document.write(year + "年" + month + "月" + date + "日");
                        myArray = new Array(6);
                        myArray[0] = "星期日";
                        myArray[1] = "星期一";
                        myArray[2] = "星期二";
                        myArray[3] = "星期三";
                        myArray[4] = "星期四";
                        myArray[5] = "星期五";
                        myArray[6] = "星期六";
                        weekday = tmpDate.getDay();
                        document.write(myArray[weekday]);
					</script>
			</span></div>
        <div class="box1">
            <!--c1 start-->
            <div id="slide_x" class="slide_x fl">
                <div class="box">
                    <ul class="list">
                        <li>
                            <a href="ggyw/201704/06092003bcqw.html"
                               tppabs="http://hf.ahga.gov.cn/ggyw/201704/06092003bcqw.html" target="_blank"><img
                                    src="static/front/upload/images/20170406091825899.jpg"
                                    tppabs="http://hf.ahga.gov.cn/upload/images/20170406091825899.jpg" height="310"
                                    width="506"/></a>
                            <p><a href="ggyw/201704/06092003bcqw.html"
                                  tppabs="http://hf.ahga.gov.cn/ggyw/201704/06092003bcqw.html" target="_blank">市公安局举行清明祭奠公安英烈活动</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201703/09144243o0il.html"
                               tppabs="http://hf.ahga.gov.cn/ggyw/201703/09144243o0il.html" target="_blank"><img
                                    src="static/front/upload/images/20170309144220722.jpg"
                                    tppabs="http://hf.ahga.gov.cn/upload/images/20170309144220722.jpg" height="310"
                                    width="506"/></a>
                            <p><a href="ggyw/201703/09144243o0il.html"
                                  tppabs="http://hf.ahga.gov.cn/ggyw/201703/09144243o0il.html" target="_blank">姜明副市长深入基层调研交通管理工作</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201703/03151751ya0e.html"
                               tppabs="http://hf.ahga.gov.cn/ggyw/201703/03151751ya0e.html" target="_blank"><img
                                    src="static/front/upload/images/20170303151538620.jpg"
                                    tppabs="http://hf.ahga.gov.cn/upload/images/20170303151538620.jpg" height="310"
                                    width="506"/></a>
                            <p><a href="ggyw/201703/03151751ya0e.html"
                                  tppabs="http://hf.ahga.gov.cn/ggyw/201703/03151751ya0e.html" target="_blank">市局召开全市公安工作会议暨2016年度总...</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201702/17102013c28q.html"
                               tppabs="http://hf.ahga.gov.cn/ggyw/201702/17102013c28q.html" target="_blank"><img
                                    src="static/front/upload/images/20170217101628983.png"
                                    tppabs="http://hf.ahga.gov.cn/upload/images/20170217101628983.png" height="310"
                                    width="506"/></a>
                            <p><a href="ggyw/201702/17102013c28q.html"
                                  tppabs="http://hf.ahga.gov.cn/ggyw/201702/17102013c28q.html" target="_blank">姜明副市长到巢湖市局调研指导工作 </a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201702/17101146dha5.html"
                               tppabs="http://hf.ahga.gov.cn/ggyw/201702/17101146dha5.html" target="_blank"><img
                                    src="static/front/upload/images/20170217101034629.jpg"
                                    tppabs="http://hf.ahga.gov.cn/upload/images/20170217101034629.jpg" height="310"
                                    width="506"/></a>
                            <p><a href="ggyw/201702/17101146dha5.html"
                                  tppabs="http://hf.ahga.gov.cn/ggyw/201702/17101146dha5.html" target="_blank">姜明副市长看望慰问2016年度新招录民警</a>
                            </p>
                        </li>
                    </ul>
                </div>
                <ul class="btn">
                    <li class="b_1 selected">1</li>
                    <li class="b_2">2</li>
                    <li class="b_3">3</li>
                    <li class="b_4">4</li>
                    <li class="b_5">5</li>
                </ul>
                <div class="plus"></div>
                <div class="minus"></div>

            </div>
            <script src="static/front/style/js/jquery.cxslide.min.js"
                    tppabs="http://hf.ahga.gov.cn/res/style/js/jquery.cxslide.min.js"></script>
            <script>$("#slide_x").cxSlide({plus: true, minus: true});</script>
            <!--c1 end-->
            <!--c2 start-->
            <div class="fr box1C2">
                <div class="winT">
                    <h2>公安要闻</h2>
                    <a href="ggyw/index.html" tppabs="http://hf.ahga.gov.cn/ggyw/index.html" class="more">更多>></a>
                </div>
                <ul class="winB">
                    <li><a href="ggyw/201704/06092003bcqw.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201704/06092003bcqw.html" title="市公安局举行清明祭奠公安英烈活动"
                           target="_blank">
                        市公安局举行清明祭奠公安英烈活动
                    </a><span class="date">
						04-01
				</span></li>
                    <li><a href="ggyw/201704/060923119v6o.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201704/060923119v6o.html"
                           title="市公安局召开党的建设“一标两推”活动动员部署暨培训会议" target="_blank">
                        市公安局召开党的建设“一标两推”活动...
                    </a><span class="date">
						03-31
				</span></li>
                    <li><a href="ggyw/201703/291731287128.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201703/291731287128.html" title="我市新车辆管理所正式启用"
                           target="_blank">
                        我市新车辆管理所正式启用
                    </a><span class="date">
						03-29
				</span></li>
                    <li><a href="ggyw/201703/09144243o0il.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201703/09144243o0il.html" title="姜明副市长深入基层调研交通管理工作"
                           target="_blank">
                        姜明副市长深入基层调研交通管理工作
                    </a><span class="date">
						03-07
				</span></li>
                    <li><a href="ggyw/201703/03145914ykvp.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201703/03145914ykvp.html"
                           title="省公安厅治安总队陈荣政副总队长深入巢湖水上分局调研指导公安工作 " target="_blank">
                        省公安厅治安总队陈荣政副总队长深入巢...
                    </a><span class="date">
						03-02
				</span></li>
                    <li><a href="ggyw/201703/03145825r5jf.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201703/03145825r5jf.html"
                           title="市局圆满完成合肥综合性国家科学中心暨量子信息与量子科技创新研究院建设动员大会安保工作" target="_blank">
                        市局圆满完成合肥综合性国家科学中心暨...
                    </a><span class="date">
						03-01
				</span></li>
                    <li><a href="ggyw/201703/03151751ya0e.html"
                           tppabs="http://hf.ahga.gov.cn/ggyw/201703/03151751ya0e.html"
                           title="市局召开全市公安工作会议暨2016年度总结表彰大会" target="_blank">
                        市局召开全市公安工作会议暨2016年...
                    </a><span class="date">
						02-23
				</span></li>
                </ul>
            </div>
            <!--c2 end-->
        </div>
        <!--box2 start-->
        <div class="win2 fl">
            <div class="winT2">
                <h2>新闻发布</h2>
                <a href="xwfb/index.html" tppabs="http://hf.ahga.gov.cn/xwfb/index.html" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="xwfb/201703/2315443026sg.html" tppabs="http://hf.ahga.gov.cn/xwfb/201703/2315443026sg.html"
                       title="合肥警方侦破50亿元特大虚开增值税专用发票案" target="_blank">
                    合肥警方侦破50亿元特大虚...
                </a><span class="date">
						03-22
				</span></li>
                <li><a href="xwfb/201703/20162719rkdf.html" tppabs="http://hf.ahga.gov.cn/xwfb/201703/20162719rkdf.html"
                       title="合肥多车被烧案破  男子疑因下棋被辱骂报复" target="_blank">
                    合肥多车被烧案破 男子疑...
                </a><span class="date">
						03-13
				</span></li>
                <li><a href="xwfb/201703/061631369sib.html" tppabs="http://hf.ahga.gov.cn/xwfb/201703/061631369sib.html"
                       title="拉杆箱藏女尸  合肥警方快速侦破抢劫杀人案件" target="_blank">
                    拉杆箱藏女尸 合肥警方快...
                </a><span class="date">
						03-06
				</span></li>
                <li><a href="xwfb/201703/06162813noau.html" tppabs="http://hf.ahga.gov.cn/xwfb/201703/06162813noau.html"
                       title="合肥警方侦破首例非法控制计算机信息系统挂“黑链”案" target="_blank">
                    合肥警方侦破首例非法控制计...
                </a><span class="date">
						03-02
				</span></li>
                <li><a href="xwfb/201701/25111851b8dj.html" tppabs="http://hf.ahga.gov.cn/xwfb/201701/25111851b8dj.html"
                       title="合肥警方快速侦破安徽省首例“假罚单”案" target="_blank">
                    合肥警方快速侦破安徽省首例...
                </a><span class="date">
						01-24
				</span></li>
                <li><a href="xwfb/201702/07112805sxqu.html" tppabs="http://hf.ahga.gov.cn/xwfb/201702/07112805sxqu.html"
                       title="合肥警方端掉一碰瓷团伙  5名嫌疑人全部落网" target="_blank">
                    合肥警方端掉一碰瓷团伙 ...
                </a><span class="date">
						01-23
				</span></li>
            </ul>
        </div>
        <div class="win2 fl">
            <div class="winT2">
                <h2>警务动态</h2>
                <a href="jwdt/index.html" tppabs="http://hf.ahga.gov.cn/jwdt/index.html" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="jwdt/201704/05113844dzjv.html" tppabs="http://hf.ahga.gov.cn/jwdt/201704/05113844dzjv.html"
                       title="男子楼顶割腕欲跳楼  肥西民警“攀岩”一把救下" target="_blank">
                    男子楼顶割腕欲跳楼 肥西...
                </a><span class="date">
						04-05
				</span></li>
                <li><a href="jwdt/201704/05113810o1ev.html" tppabs="http://hf.ahga.gov.cn/jwdt/201704/05113810o1ev.html"
                       title="男子网购个人信息被刑拘  新站分局破获非法获取公民信息案" target="_blank">
                    男子网购个人信息被刑拘 ...
                </a><span class="date">
						04-05
				</span></li>
                <li><a href="jwdt/201704/05113441l1uz.html" tppabs="http://hf.ahga.gov.cn/jwdt/201704/05113441l1uz.html"
                       title="跨区用警重拳出击 合肥交警集中整治“三大车”交通违法" target="_blank">
                    跨区用警重拳出击 合肥交警...
                </a><span class="date">
						04-01
				</span></li>
                <li><a href="jwdt/201704/051132512ith.html" tppabs="http://hf.ahga.gov.cn/jwdt/201704/051132512ith.html"
                       title="25辆车连遭“黑手” 包河公安分局破获系列砸车窗盗窃案" target="_blank">
                    25辆车连遭“黑手” 包河...
                </a><span class="date">
						04-01
				</span></li>
                <li><a href="jwdt/201703/31155257j98o.html" tppabs="http://hf.ahga.gov.cn/jwdt/201703/31155257j98o.html"
                       title="男子见车拉门盗窃财物　已被合肥高新区公安抓获" target="_blank">
                    男子见车拉门盗窃财物　已被...
                </a><span class="date">
						03-31
				</span></li>
                <li><a href="jwdt/201703/31155221chhc.html" tppabs="http://hf.ahga.gov.cn/jwdt/201703/31155221chhc.html"
                       title="合肥新驾考中心4月1日正式启用" target="_blank">
                    合肥新驾考中心4月1日正式...
                </a><span class="date">
						03-31
				</span></li>
            </ul>
        </div>
        <div class="fr box2C30">
            <div class="box2C3B">
                <div class="winT">
                    <h2>信息公开</h2>
                </div>
                <div class="winB">
                    <ul>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006'"
                               tppabs="http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006"
                               target="_blank">政府信息公开指南</a></li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe'"
                               tppabs="http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe" target="_blank">政府信息公开目录</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb'"
                               tppabs="http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb"
                               target="_blank">政府信息公开年报</a></li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd'"
                               tppabs="http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd" target="_blank">政府信息公开制度</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp'"
                               tppabs="http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp" target="_blank">政府信息依申请公开</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--box2 end-->
        <div class="clearfix"></div>
        <div class="box3">
            <div class="ad fl">
                <object id="FlashID3" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="739" height="220">
                    <param name="movie" value="static/front/images/banshi.swf"
                           tppabs="http://hf.ahga.gov.cn/res/images/banshi.swf"/>
                    <param name="quality" value="high"/>
                    <param name="wmode" value="opaque"/>
                    <param name="swfversion" value="8.0.35.0"/>
                    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                    <param name="expressinstall" value="Scripts/expressInstall.swf"
                           tppabs="http://hf.ahga.gov.cn/Scripts/expressInstall.swf"/>
                    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                    <!--[if !IE]>-->
                    <object type="application/x-shockwave-flash" data="static/front/images/banshi.swf"
                            tppabs="http://hf.ahga.gov.cn/res/images/banshi.swf" width="739" height="220">
                        <!--<![endif]-->
                        <param name="quality" value="high"/>
                        <param name="wmode" value="opaque"/>
                        <param name="swfversion" value="8.0.35.0"/>
                        <param name="expressinstall" value="Scripts/expressInstall.swf"
                               tppabs="http://hf.ahga.gov.cn/Scripts/expressInstall.swf"/>
                        <!--[if !IE]>-->
                    </object>
                    <!--<![endif]-->
                </object>
            </div>
            <div class="wsfw fr">
                <div class="rdad fl">
                    <a href="rddbyablhf/index.html" tppabs="http://hf.ahga.gov.cn/rddbyablhf/index.html">
                        <img src="static/front/images/rdad.jpg" tppabs="http://hf.ahga.gov.cn/res/images/rdad.jpg"
                             width="240" height="50"/>
                    </a>
                </div>
                <div class="jzxx">
                    <dl>
                        <dd><a href="jzxxlb/index.html" tppabs="http://hf.ahga.gov.cn/jzxxlb/index.html">局长信箱</a></dd>
                        <dd class="fr"><a href="tzgg/index.html" tppabs="http://hf.ahga.gov.cn/tzgg/index.html">通知公告</a>
                        </dd>
                        <dd><a href="wjdc/index.html" tppabs="http://hf.ahga.gov.cn/wjdc/index.html">调查征集</a></dd>
                        <dd class="fr"><a href="zxdh/index.html" tppabs="http://hf.ahga.gov.cn/zxdh/index.html">咨询电话</a>
                        </dd>
                    </dl>

                </div>
                <div class="spad fl"><a href="spxw/index.html" tppabs="http://hf.ahga.gov.cn/spxw/index.html"><img
                        src="static/front/images/sp.jpg" tppabs="http://hf.ahga.gov.cn/res/images/sp.jpg" width="240"
                        height="76"/></a></div>
            </div>
        </div>

        <!--box2 start-->
        <div class="win2 fl">
            <div class="winT2">
                <h2>防范常识</h2>
                <a href="ffcs/index.html" tppabs="http://hf.ahga.gov.cn/ffcs/index.html" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="ffcs/201703/31162128ndid.html" tppabs="http://hf.ahga.gov.cn/ffcs/201703/31162128ndid.html"
                       title="警方提醒：免费WIFI可能在干四件坏事" target="_blank">
                    警方提醒：免费WIFI可能...
                </a><span class="date">
						03-20
				</span></li>
                <li><a href="ffcs/201703/31161147az3x.html" tppabs="http://hf.ahga.gov.cn/ffcs/201703/31161147az3x.html"
                       title="交警支招：“荷式开门法”值得借鉴" target="_blank">
                    交警支招：“荷式开门法”值...
                </a><span class="date">
						03-14
				</span></li>
                <li><a href="ffcs/201703/15162346uetn.html" tppabs="http://hf.ahga.gov.cn/ffcs/201703/15162346uetn.html"
                       title="民警支招：“猜猜我是谁”骗局又升级  报个假名试试即知" target="_blank">
                    民警支招：“猜猜我是谁”骗...
                </a><span class="date">
						03-10
				</span></li>
                <li><a href="ffcs/201703/09162629b9yr.html" tppabs="http://hf.ahga.gov.cn/ffcs/201703/09162629b9yr.html"
                       title="民警提醒：用过的火车票千万别乱丢！" target="_blank">
                    民警提醒：用过的火车票千万...
                </a><span class="date">
						03-08
				</span></li>
                <li><a href="ffcs/201703/0711382845qg.html" tppabs="http://hf.ahga.gov.cn/ffcs/201703/0711382845qg.html"
                       title="警方提醒：谨防利用网银授权支付诈骗" target="_blank">
                    警方提醒：谨防利用网银授权...
                </a><span class="date">
						03-03
				</span></li>
                <li><a href="ffcs/201702/28155319zrea.html" tppabs="http://hf.ahga.gov.cn/ffcs/201702/28155319zrea.html"
                       title="警方提醒：找兼职须谨慎  网上刷单是骗局  " target="_blank">
                    警方提醒：找兼职须谨慎 ...
                </a><span class="date">
						02-22
				</span></li>
            </ul>
        </div>
        <div class="win2 fl">
            <div class="winT2">
                <h2>警界博览</h2>
                <a href="jjbl/index.html" tppabs="http://hf.ahga.gov.cn/jjbl/index.html" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="jjbl/201606/16150425if2f.html" tppabs="http://hf.ahga.gov.cn/jjbl/201606/16150425if2f.html"
                       title="中国古代争议调处机制" target="_blank">
                    中国古代争议调处机制
                </a><span class="date">
						06-16
				</span></li>
                <li><a href="jjbl/201606/16150600x1ps.html" tppabs="http://hf.ahga.gov.cn/jjbl/201606/16150600x1ps.html"
                       title="美国警察心理咨询的发展" target="_blank">
                    美国警察心理咨询的发展
                </a><span class="date">
						06-14
				</span></li>
                <li><a href="jjbl/201606/16153531v632.html" tppabs="http://hf.ahga.gov.cn/jjbl/201606/16153531v632.html"
                       title="世界上第一支消防队诞生在中国" target="_blank">
                    世界上第一支消防队诞生在中...
                </a><span class="date">
						05-23
				</span></li>
                <li><a href="jjbl/201606/16153652di3w.html" tppabs="http://hf.ahga.gov.cn/jjbl/201606/16153652di3w.html"
                       title="国外抓捕嫌犯的奇特手段" target="_blank">
                    国外抓捕嫌犯的奇特手段
                </a><span class="date">
						05-06
				</span></li>
                <li><a href="jjbl/201604/20154007vgb7.html" tppabs="http://hf.ahga.gov.cn/jjbl/201604/20154007vgb7.html"
                       title="德国警察的“110”" target="_blank">
                    德国警察的“110”
                </a><span class="date">
						04-20
				</span></li>
                <li><a href="jjbl/201604/20152858exad.html" tppabs="http://hf.ahga.gov.cn/jjbl/201604/20152858exad.html"
                       title="美国：“信用卡”犯罪打击策略" target="_blank">
                    美国：“信用卡”犯罪打击策...
                </a><span class="date">
						03-10
				</span></li>
            </ul>
        </div>
        <div class="fr box2C3 ztzl">
            <div class="winT">
                <h2>专题专栏</h2>
            </div>
            <ul class="zlB">
                <li><a href="gawh/index.html" tppabs="http://hf.ahga.gov.cn/gawh/index.html"><img
                        src="static/front/images/zlImg02.jpg" tppabs="http://hf.ahga.gov.cn/res/images/zlImg02.jpg"
                        alt="警营文化"/></a></li>
                <li><a href="mtkga/index.html" tppabs="http://hf.ahga.gov.cn/mtkga/index.html"><img
                        src="static/front/images/zlImg03.jpg" tppabs="http://hf.ahga.gov.cn/res/images/zlImg03.jpg"
                        alt="媒体看公安"/></a></li>
                <li><a href="zfhfpy/index.html" tppabs="http://hf.ahga.gov.cn/zfhfpy/index.html"><img
                        src="static/front/images/zlImg04.jpg" tppabs="http://hf.ahga.gov.cn/res/images/zlImg04.jpg"
                        alt="政风行风评议"/></a></li>
                <li>
                    <a href="javascript:if(confirm('http://www.mps.gov.cn/n16/n983040/n4017840/n4611416/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.mps.gov.cn/n16/n983040/n4017840/n4611416/index.html'"
                       tppabs="http://www.mps.gov.cn/n16/n983040/n4017840/n4611416/index.html" target="_blank"><img
                            src="static/front/images/qmshga.jpg" tppabs="http://hf.ahga.gov.cn/res/images/qmshga.jpg"/></a>
                </li>
            </ul>
        </div>
        <!--box2 end-->
        <div class="clearfix"></div>
        <script src="static/front/js/jquery.min.js" tppabs="http://hf.ahga.gov.cn/res/js/jquery.min.js"></script>
        <script src="static/front/js/qikoo.js" tppabs="http://hf.ahga.gov.cn/res/js/qikoo.js"></script>
        <script type="text/javascript">
            //2015-8-19提示框
            function payment() {
                qikoo.dialog.payNotice(function () {

                });
            }
        </script>
        <div class="linkImg">
            <a class="fl" target="_blank" style="cursor:pointer;" onclick="payment();">
                <img src="static/front/images/linkImg01.jpg" tppabs="http://hf.ahga.gov.cn/res/images/linkImg01.jpg"
                     alt="合肥警方微信平台"/></a>
            <a href="javascript:if(confirm('http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn'"
               tppabs="http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn" class="fl" target="_blank">
                <img src="static/front/images/linkImg02.jpg" tppabs="http://hf.ahga.gov.cn/res/images/linkImg02.jpg"
                     alt="中华人民共和国公安部"/></a>
            <a class="fl" target="_blank"
               href="javascript:if(confirm('http://hf.ahga.gov.cn/wzqlj/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������, �����������, ����Ŀ����ֹͣ��  \n\n�����ڷ������ϴ���?'))window.location='http://hf.ahga.gov.cn/wzqlj/'"
               tppabs="http://hf.ahga.gov.cn/wzqlj">
                <img src="static/front/images/linkImg03.jpg" tppabs="http://hf.ahga.gov.cn/res/images/linkImg03.jpg"
                     alt="公安网站大联盟"/></a>
            <a href="hfgawjz/index.html" tppabs="http://hf.ahga.gov.cn/hfgawjz/index.html" class="fl" target="_blank">
                <img src="static/front/images/linkImg04.jpg" tppabs="http://hf.ahga.gov.cn/res/images/linkImg04.jpg"
                     alt="中华人民共和国公安部"/></a>
            <a href="javascript:if(confirm('http://www.hefei.gov.cn/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.hefei.gov.cn/'"
               tppabs="http://www.hefei.gov.cn/" class="fr" target="_blank">
                <img src="static/front/images/linkImg05.jpg" tppabs="http://hf.ahga.gov.cn/res/images/linkImg05.jpg"
                     alt="合肥市政府"/></a>
        </div>
        <div class="clearfix"></div>

    </div>
</div>
<div class="footer w1002">
    <p>Copyright © HeFei Public Security Bureau. 2009 All Right Reserved.</p>
    <p>版权所有：合肥市公安局 皖ICP备：05015515号-1 地址：安徽省合肥市寿春路290号 <a href="login.jsp">后台系统登录</a> </p>
    <p></p>
    <a target="_blank"
       href="javascript:if(confirm('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016'"
       tppabs="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016"
       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img
            src="static/front/images/jbtb.png" tppabs="http://hf.ahga.gov.cn/res/images/jbtb.png" style="float:left;"/>
        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">皖公网安备
            34010002000016号</p></a>
    <p><font class="link_13">
        <span id="visitSiteNum"></span>
        <script type="text/javascript" src="static/front/js/json2.js"
                tppabs="http://hf.ahga.gov.cn/res/js/json2.js"></script>
    </font>
    </p>
</div>
<script type="text/javascript">
    swfobject.registerObject("FlashID3");
</script>
</body>
</html>
<script type="text/javascript">
    swfobject.registerObject("FlashID3");
</script>
</body>
</html>

