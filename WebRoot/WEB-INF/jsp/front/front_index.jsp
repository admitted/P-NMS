<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld" href="#"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="合肥市公安局,合肥警务网"/>
    <title>合肥警务网</title>

    <link rel="stylesheet" type="text/css" href="static/front/style/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="static/front/style/css/index.css"/>
    <script type="text/javascript" src="static/front/js/constant.js"></script>
    <script type="text/javascript" src="static/front/js/interview_common.js"></script>
    <script type="text/javascript" src="static/front/js/jquery-1.9.1.min.js"></script>

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
    </div>
</div>
<div class="menu">
    <ul class="w1002">
        <li class="on"><a href="<%=basePath%>index" >首页</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=1" >机构概况</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=2" >公安要闻</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=3" >新闻发布</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=4" >警务动态</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=5" >警界博览</a></li>
        <li><a href="<%=basePath%>front/listArticles.do?CATEGORY=6" >防范常识</a></li>
    </ul>
</div>

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
                            <a href="ggyw/201704/06092003bcqw.html" target="_blank">
                                <img src="static/front/upload/images/20170406091825899.jpg" height="310" width="506"/>
                            </a>
                            <p>
                                <a href="ggyw/201704/06092003bcqw.html" target="_blank">市公安局举行清明祭奠公安英烈活动</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201703/09144243o0il.html" target="_blank">
                                <img src="static/front/upload/images/20170309144220722.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="ggyw/201703/09144243o0il.html" target="_blank">姜明副市长深入基层调研交通管理工作</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201703/03151751ya0e.html" target="_blank">
                                <img src="static/front/upload/images/20170303151538620.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="ggyw/201703/03151751ya0e.html" target="_blank">市局召开全市公安工作会议暨2016年度总...</a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201702/17102013c28q.html" target="_blank">
                                <img src="static/front/upload/images/20170217101628983.png" height="310" width="506"/></a>
                            <p>
                                <a href="ggyw/201702/17102013c28q.html" target="_blank">姜明副市长到巢湖市局调研指导工作 </a>
                            </p>
                        </li>
                        <li>
                            <a href="ggyw/201702/17101146dha5.html" target="_blank">
                                <img src="static/front/upload/images/20170217101034629.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="ggyw/201702/17101146dha5.html" target="_blank">姜明副市长看望慰问2016年度新招录民警</a>
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
            <!--c1 end-->
            <!--c2 start-->
            <div class="fr box1C2">
                <div class="winT">
                    <h2>公安要闻</h2>
                    <a href="front/listArticles.do?CATEGORY=2"  class="more">更多>></a>
                </div>
                <ul class="winB">
                    <c:forEach items="${article2List}" var="article2">
                        <li><a href="front/view.do?ARTICLE_ID=${article2.ARTICLE_ID }" title="${article2.TITLE }" target="_blank">
                                ${article2.TITLE }
                        </a><span class="date">${fn:substring(article2.LAST_EDIT, 5, 10)}</span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--c2 end-->
        </div>
        <!--box2 start-->
        <div class="win2 fl">
            <div class="winT2">
                <h2>新闻发布</h2>
                <a href="front/listArticles.do?CATEGORY=3" tppabs="http://hf.ahga.gov.cn/xwfb/index.html" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="xwfb/201703/2315443026sg.html"
                       title="合肥警方侦破50亿元特大虚开增值税专用发票案" target="_blank">
                    合肥警方侦破50亿元特大虚...
                </a><span class="date">
						03-22
				</span></li>
                <li><a href="xwfb/201703/20162719rkdf.html"
                       title="合肥多车被烧案破  男子疑因下棋被辱骂报复" target="_blank">
                    合肥多车被烧案破 男子疑...
                </a><span class="date">
						03-13
				</span></li>
                <li><a href="xwfb/201703/061631369sib.html"
                       title="拉杆箱藏女尸  合肥警方快速侦破抢劫杀人案件" target="_blank">
                    拉杆箱藏女尸 合肥警方快...
                </a><span class="date">
						03-06
				</span></li>
                <li><a href="xwfb/201703/06162813noau.html"
                       title="合肥警方侦破首例非法控制计算机信息系统挂“黑链”案" target="_blank">
                    合肥警方侦破首例非法控制计...
                </a><span class="date">
						03-02
				</span></li>
                <li><a href="xwfb/201701/25111851b8dj.html"
                       title="合肥警方快速侦破安徽省首例“假罚单”案" target="_blank">
                    合肥警方快速侦破安徽省首例...
                </a><span class="date">
						01-24
				</span></li>
                <li><a href="xwfb/201702/07112805sxqu.html"
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
                <a href="front/listArticles.do?CATEGORY=4"  class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="jwdt/201704/05113844dzjv.html"
                       title="男子楼顶割腕欲跳楼  肥西民警“攀岩”一把救下" target="_blank">
                    男子楼顶割腕欲跳楼 肥西...
                </a><span class="date">
						04-05
				</span></li>
                <li><a href="jwdt/201704/05113810o1ev.html"
                       title="男子网购个人信息被刑拘  新站分局破获非法获取公民信息案" target="_blank">
                    男子网购个人信息被刑拘 ...
                </a><span class="date">
						04-05
				</span></li>
                <li><a href="jwdt/201704/05113441l1uz.html"
                       title="跨区用警重拳出击 合肥交警集中整治“三大车”交通违法" target="_blank">
                    跨区用警重拳出击 合肥交警...
                </a><span class="date">
						04-01
				</span></li>
                <li><a href="jwdt/201704/051132512ith.html"
                       title="25辆车连遭“黑手” 包河公安分局破获系列砸车窗盗窃案" target="_blank">
                    25辆车连遭“黑手” 包河...
                </a><span class="date">
						04-01
				</span></li>
                <li><a href="jwdt/201703/31155257j98o.html"
                       title="男子见车拉门盗窃财物　已被合肥高新区公安抓获" target="_blank">
                    男子见车拉门盗窃财物　已被...
                </a><span class="date">
						03-31
				</span></li>
                <li><a href="jwdt/201703/31155221chhc.html"
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
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006'"
                               target="_blank">政府信息公开指南</a></li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe'"
                               target="_blank">政府信息公开目录</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb'"
                               target="_blank">政府信息公开年报</a></li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd'"
                               target="_blank">政府信息公开制度</a>
                        </li>
                        <li>
                            <a href="javascript:if(confirm('http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp'))window.location='http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp'"
                               target="_blank">政府信息依申请公开</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--box2 end-->
        <div class="clearfix"></div>
        <div class="box3">
            <div class="ad fl">
                <object id="FlashID3" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="739" height="220">
                    <param name="movie" value="static/front/images/banshi.swf"/>
                    <param name="quality" value="high"/>
                    <param name="wmode" value="opaque"/>
                    <param name="swfversion" value="8.0.35.0"/>
                    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                    <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                    <!--[if !IE]>-->
                    <object type="application/x-shockwave-flash" data="static/front/images/banshi.swf"
                            width="739" height="220">
                        <!--<![endif]-->
                        <param name="quality" value="high"/>
                        <param name="wmode" value="opaque"/>
                        <param name="swfversion" value="8.0.35.0"/>
                        <param name="expressinstall" value="Scripts/expressInstall.swf"
                               />
                        <!--[if !IE]>-->
                    </object>
                    <!--<![endif]-->
                </object>
            </div>
            <div class="wsfw fr">
                <div class="rdad fl">
                    <a href="rddbyablhf/index.html" >
                        <img src="static/front/images/rdad.jpg"
                             width="240" height="50"/>
                    </a>
                </div>
                <div class="jzxx">
                    <dl>
                        <dd><a href="jzxxlb/index.html" >局长信箱</a></dd>
                        <dd class="fr"><a href="tzgg/index.html" >通知公告</a>
                        </dd>
                        <dd><a href="wjdc/index.html" >调查征集</a></dd>
                        <dd class="fr"><a href="zxdh/index.html" >咨询电话</a>
                        </dd>
                    </dl>

                </div>
                <div class="spad fl"><a href="spxw/index.html" ><img
                        src="static/front/images/sp.jpg"  width="240"
                        height="76"/></a></div>
            </div>
        </div>

        <!--box2 start-->
        <div class="win2 fl">
            <div class="winT2">
                <h2>防范常识</h2>
                <a href="front/listArticles.do?CATEGORY=6"  class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="ffcs/201703/31162128ndid.html"
                       title="警方提醒：免费WIFI可能在干四件坏事" target="_blank">
                    警方提醒：免费WIFI可能...
                </a><span class="date">
						03-20
				</span></li>
                <li><a href="ffcs/201703/31161147az3x.html"
                       title="交警支招：“荷式开门法”值得借鉴" target="_blank">
                    交警支招：“荷式开门法”值...
                </a><span class="date">
						03-14
				</span></li>
                <li><a href="ffcs/201703/15162346uetn.html"
                       title="民警支招：“猜猜我是谁”骗局又升级  报个假名试试即知" target="_blank">
                    民警支招：“猜猜我是谁”骗...
                </a><span class="date">
						03-10
				</span></li>
                <li><a href="ffcs/201703/09162629b9yr.html"
                       title="民警提醒：用过的火车票千万别乱丢！" target="_blank">
                    民警提醒：用过的火车票千万...
                </a><span class="date">
						03-08
				</span></li>
                <li><a href="ffcs/201703/0711382845qg.html"
                       title="警方提醒：谨防利用网银授权支付诈骗" target="_blank">
                    警方提醒：谨防利用网银授权...
                </a><span class="date">
						03-03
				</span></li>
                <li><a href="ffcs/201702/28155319zrea.html"
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
                <a href="front/listArticles.do?CATEGORY=5" class="more">更多</a>
            </div>
            <ul class="winB">
                <li><a href="jjbl/201606/16150425if2f.html"
                       title="中国古代争议调处机制" target="_blank">
                    中国古代争议调处机制
                </a><span class="date">
						06-16
				</span></li>
                <li><a href="jjbl/201606/16150600x1ps.html"
                       title="美国警察心理咨询的发展" target="_blank">
                    美国警察心理咨询的发展
                </a><span class="date">
						06-14
				</span></li>
                <li><a href="jjbl/201606/16153531v632.html"
                       title="世界上第一支消防队诞生在中国" target="_blank">
                    世界上第一支消防队诞生在中...
                </a><span class="date">
						05-23
				</span></li>
                <li><a href="jjbl/201606/16153652di3w.html"
                       title="国外抓捕嫌犯的奇特手段" target="_blank">
                    国外抓捕嫌犯的奇特手段
                </a><span class="date">
						05-06
				</span></li>
                <li><a href="jjbl/201604/20154007vgb7.html"
                       title="德国警察的“110”" target="_blank">
                    德国警察的“110”
                </a><span class="date">
						04-20
				</span></li>
                <li><a href="jjbl/201604/20152858exad.html"
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
                <li><a href="gawh/index.html" ><img
                        src="static/front/images/zlImg02.jpg"
                        alt="警营文化"/></a></li>
                <li><a href="mtkga/index.html" ><img
                        src="static/front/images/zlImg03.jpg"
                        alt="媒体看公安"/></a></li>
                <li><a href="zfhfpy/index.html" ><img
                        src="static/front/images/zlImg04.jpg"
                        alt="政风行风评议"/></a></li>
                <li>
                    <a href="javascript:if(confirm('http://www.mps.gov.cn/n16/n983040/n4017840/n4611416/index.html'))window.location='http://www.mps.gov.cn/n16/n983040/n4017840/n4611416/index.html'"
                        target="_blank"><img
                            src="static/front/images/qmshga.jpg" /></a>
                </li>
            </ul>
        </div>
        <!--box2 end-->
        <div class="clearfix"></div>

        <div class="linkImg">
            <a class="fl" target="_blank" style="cursor:pointer;" onclick="payment();">
                <img src="static/front/images/linkImg01.jpg"
                     alt="合肥警方微信平台"/></a>
            <a href="javascript:if(confirm('http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn'))window.location='http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn'"
               class="fl" target="_blank">
                <img src="static/front/images/linkImg02.jpg"
                     alt="中华人民共和国公安部"/></a>
            <a class="fl" target="_blank"
               href="javascript:if(confirm('http://hf.ahga.gov.cn/wzqlj/'))window.location='http://hf.ahga.gov.cn/wzqlj/'">
                <img src="static/front/images/linkImg03.jpg"
                     alt="公安网站大联盟"/></a>
            <a href="hfgawjz/index.html" tppabs="http://hf.ahga.gov.cn/hfgawjz/index.html" class="fl" target="_blank">
                <img src="static/front/images/linkImg04.jpg"
                     alt="中华人民共和国公安部"/></a>
            <a href="javascript:if(confirm('http://www.hefei.gov.cn/'))window.location='http://www.hefei.gov.cn/'"
               class="fr" target="_blank">
                <img src="static/front/images/linkImg05.jpg"
                     alt="合肥市政府"/></a>
        </div>
        <div class="clearfix"></div>

    </div>
</div>
<div class="footer w1002">
    <p>Copyright © HeFei Public Security Bureau. 2009 All Right Reserved.</p>
    <p>版权所有：合肥市公安局 皖ICP备：05015515号-1 地址：安徽省合肥市寿春路290号 <a href="login_toLogin">后台系统登录</a> </p>
    <p></p>
    <a target="_blank" href="javascript:if(confirm('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016'))window.location='http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016'"
       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img
            src="static/front/images/jbtb.png"  style="float:left;"/>
        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">皖公网安备
            34010002000016号</p></a>
    <p><font class="link_13">
        <span id="visitSiteNum"></span>
    </font>
    </p>
</div>

</body>
</html>

