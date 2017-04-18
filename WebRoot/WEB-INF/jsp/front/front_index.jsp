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
    <link rel="stylesheet" type="text/css" href="static/front/style/css/qikoo.css"/>
    <script type="text/javascript" src="static/front/js/constant.js"></script>
    <script type="text/javascript" src="static/front/js/interview_common.js"></script>
    <script type="text/javascript" src="static/front/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="static/front/js/qikoo.js"></script>
    <script type="text/javascript">
        function payment(){
            qikoo.dialog.payNotice(function(){

            });
        }
    </script>


</head>

<body>
<div class="header">
    <div class="w1002">
        <div class="fl logo">
            <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="480" height="110">
                <param name="movie" value="static/front/images/logo.swf"/>
                <param name="quality" value="high"/>
                <param name="wmode" value="transparent"/>
                <param name="swfversion" value="15.0.0.0"/>
                <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="static/front/images/logo.swf" width="480" height="110">
                    <!--<![endif]-->
                    <param name="quality" value="high"/>
                    <param name="wmode" value="transparent"/>
                    <param name="swfversion" value="15.0.0.0"/>
                    <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
    </div>
</div>
<div class="menu">
    <ul class="w1002">
        <li class="on"><a href="" >首页</a></li>
        <li><a href="front/listArticles.do?CATEGORY=1" >机构概况</a></li>
        <li><a href="front/listArticles.do?CATEGORY=2" >公安要闻</a></li>
        <li><a href="front/listArticles.do?CATEGORY=3" >新闻发布</a></li>
        <li><a href="front/listArticles.do?CATEGORY=4" >警务动态</a></li>
        <li><a href="front/listArticles.do?CATEGORY=5" >警界博览</a></li>
        <li><a href="front/listArticles.do?CATEGORY=6" >防范常识</a></li>
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
                            <a href="front/view.do?ARTICLE_ID=a3ee53ca8b654ea59114522bd4a08a0f" target="_blank">
                                <img src="static/front/upload/images/20170406091825899.jpg" height="310" width="506"/>
                            </a>
                            <p>
                                <a href="front/view.do?ARTICLE_ID=a3ee53ca8b654ea59114522bd4a08a0f" target="_blank">市公安局举行清明祭奠公安英烈活动</a>
                            </p>
                        </li>
                        <li>
                            <a href="front/view.do?ARTICLE_ID=627d5f843ad042da99e381fc5fb9cb2d" target="_blank">
                                <img src="static/front/upload/images/20170309144220722.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="front/view.do?ARTICLE_ID=627d5f843ad042da99e381fc5fb9cb2d" target="_blank">姜明副市长深入基层调研交通管理工作</a>
                            </p>
                        </li>
                        <li>
                            <a href="front/view.do?ARTICLE_ID=430cfd1a456e45279c34909d1ee819fd" target="_blank">
                                <img src="static/front/upload/images/20170303151538620.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="front/view.do?ARTICLE_ID=430cfd1a456e45279c34909d1ee819fd" target="_blank">市局召开全市公安工作会议暨2016年度总...</a>
                            </p>
                        </li>
                        <li>
                            <a href="front/view.do?ARTICLE_ID=0b721e63dc2d48048ee85981dc0cff3e" target="_blank">
                                <img src="static/front/upload/images/20170217101628983.png" height="310" width="506"/></a>
                            <p>
                                <a href="front/view.do?ARTICLE_ID=0b721e63dc2d48048ee85981dc0cff3e" target="_blank">姜明副市长到巢湖市局调研指导工作 </a>
                            </p>
                        </li>
                        <li>
                            <a href="front/view.do?ARTICLE_ID=b86d5fc67aaf47ffa67618306a91f953" target="_blank">
                                <img src="static/front/upload/images/20170217101034629.jpg" height="310" width="506"/></a>
                            <p>
                                <a href="front/view.do?ARTICLE_ID=b86d5fc67aaf47ffa67618306a91f953" target="_blank">姜明副市长看望慰问2016年度新招录民警</a>
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
            <script src="static/front/style/js/jquery.cxslide.min.js"></script>
            <script>$("#slide_x").cxSlide({plus:true,minus:true});</script>

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
                                ${fn:substring(article2.TITLE,0,18) }...
                            </a>
                            <span class="date">
                                ${fn:substring(article2.LAST_EDIT, 5, 10)}
                            </span>
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
                <a href="front/listArticles.do?CATEGORY=3"  class="more">更多</a>
            </div>
            <ul class="winB">
                <c:forEach items="${article3List}" var="article3">
                    <li><a href="front/view.do?ARTICLE_ID=${article3.ARTICLE_ID }" title="${article3.TITLE }" target="_blank">
                            ${fn:substring(article3.TITLE,0,13) }...
                    </a><span class="date">${fn:substring(article3.LAST_EDIT, 5, 10)}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="win2 fl">
            <div class="winT2">
                <h2>警务动态</h2>
                <a href="front/listArticles.do?CATEGORY=4"  class="more">更多</a>
            </div>
            <ul class="winB">
                <c:forEach items="${article4List}" var="article4">
                    <li><a href="front/view.do?ARTICLE_ID=${article4.ARTICLE_ID }" title="${article4.TITLE }" target="_blank">
                            ${fn:substring(article4.TITLE,0,13) }...
                    </a><span class="date">${fn:substring(article4.LAST_EDIT, 5, 10)}</span>
                    </li>
                </c:forEach>
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
                            <a target="_blank" href="http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006">政府信息公开指南</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=sframe">政府信息公开目录</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://zwgk.hefei.gov.cn/zwgk/public/spage.xp?doAction=sindex&unitid=0004000100010006&frame=nb">政府信息公开年报</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://zwgk.hefei.gov.cn/zwgk/public/index.xp?doAction=xxgkgd">政府信息公开制度</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://zwgk.hefei.gov.cn/zwgk/public/ysqgk.xp">政府信息依申请公开</a>
                        </li>
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
                        <img src="static/front/images/rdad.jpg" width="240" height="50"/>
                    </a>
                </div>
                <div class="jzxx">
                    <dl>
                        <dd><a href="#" >局长信箱</a></dd>
                        <dd class="fr"><a href="#" >通知公告</a></dd>
                        <dd><a href="#" >调查征集</a></dd>
                        <dd class="fr"><a href="#" >咨询电话</a></dd>
                    </dl>

                </div>
                <div class="spad fl">
                    <a href="spxw/index.html" >
                        <img src="static/front/images/sp.jpg"  width="240" height="76"/>
                    </a>
                </div>
            </div>
        </div>

        <!--box2 start-->
        <div class="win2 fl">
            <div class="winT2">
                <h2>防范常识</h2>
                <a href="front/listArticles.do?CATEGORY=6"  class="more">更多</a>
            </div>
            <ul class="winB">
                <c:forEach items="${article6List}" var="article6">
                    <li><a href="front/view.do?ARTICLE_ID=${article6.ARTICLE_ID }" title="${article6.TITLE }" target="_blank">
                            ${fn:substring(article6.TITLE,0,13) }...
                    </a><span class="date">${fn:substring(article6.LAST_EDIT, 5, 10)}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="win2 fl">
            <div class="winT2">
                <h2>警界博览</h2>
                <a href="front/listArticles.do?CATEGORY=5" class="more">更多</a>
            </div>
            <ul class="winB">
                <c:forEach items="${article5List}" var="article5">
                    <li><a href="front/view.do?ARTICLE_ID=${article5.ARTICLE_ID }" title="${article5.TITLE }" target="_blank">
                            ${fn:substring(article5.TITLE,0,13) }...
                    </a><span class="date">${fn:substring(article5.LAST_EDIT, 5, 10)}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="fr box2C3 ztzl">
            <div class="winT">
                <h2>专题专栏</h2>
            </div>
            <ul class="zlB">
                <li>
                    <a href="#" >
                    <img src="static/front/images/zlImg02.jpg" alt="警营文化"/></a>
                </li>
                <li>
                    <a href="#" >
                        <img src="static/front/images/zlImg03.jpg" alt="媒体看公安"/>
                    </a>
                </li>
                <li>
                    <a href="#" >
                        <img src="static/front/images/zlImg04.jpg" alt="政风行风评议"/>
                    </a>
                </li>
                <li>
                    <a href="#" target="_blank">
                        <img src="static/front/images/qmshga.jpg" />
                    </a>
                </li>
            </ul>
        </div>
        <!--box2 end-->
        <div class="clearfix"></div>

        <div class="linkImg">
            <a class="fl" target="_blank" style="cursor:pointer;" onclick="payment();">
                <img src="static/front/images/linkImg01.jpg" alt="合肥警方微信平台"/>
            </a>
            <a class="fl" target="_blank" href="http://weibo.com/hefeiga?zw=news&sudaref=www.hfga.gov.cn" >
                <img src="static/front/images/linkImg02.jpg" alt="合肥警方微博平台"/>
            </a>
            <a class="fl" target="_blank" href="http://hf.ahga.gov.cn/wzqlj/">
                <img src="static/front/images/linkImg03.jpg" alt="公安网站大联盟"/>
            </a>
            <a class="fl" href="http://hf.ahga.gov.cn/hfgawjz/index.html"   >
                <img src="static/front/images/linkImg04.jpg" alt="中华人民共和国公安部"/>
            </a>
            <a class="fr" href="http://www.hefei.gov.cn/"  target="_blank">
                <img src="static/front/images/linkImg05.jpg" alt="合肥市政府"/>
            </a>
        </div>
        <div class="clearfix"></div>

    </div>
</div>
<div class="footer w1002">
    <p>Copyright © HeFei Public Security Bureau. 2009 All Right Reserved.</p>
    <p>版权所有：合肥市公安局 皖ICP备：05015515号-1 地址：安徽省合肥市寿春路290号 <a href="login_toLogin">后台系统登录</a> </p>
    <p></p>
    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016"
       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
        <img src="static/front/images/jbtb.png"  style="float:left;"/>
        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">皖公网安备34010002000016号</p>
    </a>
</div>

</body>
</html>

