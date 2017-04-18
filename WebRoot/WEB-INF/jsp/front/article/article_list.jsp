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
    <script id="allmobilize" charset="utf-8"
            src="../a.yunshipei.com/9076761ef8310d0cfa5aa3a85711410e/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld" href="#"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="合肥市公安局,合肥警务网"/>
    <title>合肥警务网</title>

    <link rel="stylesheet" type="text/css" href="../static/front/style/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../static/front/style/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="../static/front/style/css/qikoo.css"/>
    <link rel="stylesheet" type="text/css" href="../static/front/style/css/sub.css"/>

    <script type="text/javascript" src="../static/front/js/constant.js"></script>
    <script type="text/javascript" src="../static/front/js/lwuserLogin.js"></script>
    <script type="text/javascript" src="../static/front/js/interview_common.js"></script>
    <script type="text/javascript" src="../static/front/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/swfobject_modified.js"></script>

</head>

<body>
<div class="header">
    <div class="w1002">
        <div class="fl logo">
            <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="480" height="110">
                <param name="movie" value="../static/front/images/logo.swf"/>
                <param name="quality" value="high"/>
                <param name="wmode" value="transparent"/>
                <param name="swfversion" value="15.0.0.0"/>
                <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                <param name="expressinstall" value="Scripts/expressInstall.swf"/>
                <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="../static/front/images/logo.swf" width="480"
                        height="110">
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
        <li class="on"><a href="../index.jsp">首页</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=1">机构概况</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=2">公安要闻</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=3">新闻发布</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=4">警务动态</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=5">警界博览</a></li>
        <li><a href="../front/listArticles.do?CATEGORY=6">防范常识</a></li>
    </ul>
</div>

<script type="text/javascript" src="../static/front/js/fudong.js"></script>
<script type="text/javascript">
    window.onscroll = function () {
        scrollTip();
    };
</script>

<div class="mainbody">
    <div class="w1002">
        <div class="menubar">
            <span class="currTime">
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
			</span>
        </div>

        <div class="box1 listBox">
            <div class="winT">
                <h2>${pd.categoryName } </h2>
            </div>
            <div class="listCon">
                <table cellpadding="0" cellspacing="0" width="98%">
                    <c:forEach items="${articleList}" var="article">
                        <tr>
                            <td width="5%" style="background:url(../static/front/images/liIcon.jpg) no-repeat center center;"></td>
                            <td width="85%">
                                <a href="../front/view.do?ARTICLE_ID=${article.ARTICLE_ID }"  title="${article.TITLE }" target=_blank">
                                    ${article.TITLE }
                                </a>
                            </td>
                            <td width="10%">
                                ${fn:substring(article.LAST_EDIT, 0, 10)}
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <!--page start-->
                <div class="page">
                    <span>当前第1 / 28页</span>
                    <a href="ggyw/index.html">首页</a>
                    <a class="on" href="javascript:void(0);">1</a>
                    <a href="ggyw/index_1.html">2</a>
                    <a href="ggyw/index_2.html">3</a>
                    <a href="ggyw/index_3.html">4</a>
                    <a href="ggyw/index_4.html">5</a>
                    ...
                    <a onclick="window.location.href='../ggyw/index_27.html';" style="cursor: pointer;">28</a>
                    <a onclick="window.location.href='../ggyw/index_1.html';" style="cursor: pointer;">下一页</a>
                    <a href="ggyw/index_27.html">尾页</a>
                </div>
                <!--page end-->
            </div>
        </div>

        <script>
            function goPage() {
                if (/[^\d]/.test(document.getElementById('_PageBar_Index_1').value)) {
                    alert('很抱歉，您输入的页码不存在!');
                    $('_PageBar_Index_1').focus();
                } else if (document.getElementById('_PageBar_Index_1').value > 28) {
                    alert('很抱歉，您输入的页码不存在!');
                    document.getElementById('_PageBar_Index_1').focus();
                } else {
                    var PageIndex = (document.getElementById('_PageBar_Index_1').value) > 0 ? document.getElementById('_PageBar_Index_1').value : 1;
                    PageIndex = PageIndex - 1;
                    var url = new String(window.location);
                    url = url.slice(0, url.lastIndexOf("index"));
                    if (PageIndex == 0) {
                        url += "index.html";
                    } else {
                        url += 'index_' + PageIndex + '.html';
                    }
                    window.location = url;
                }
            }
        </script>


        <div class="clearfix"></div>

    </div>
</div>
<div class="footer w1002">
    <p>Copyright © HeFei Public Security Bureau. 2009 All Right Reserved.</p>
    <p>版权所有：合肥市公安局 皖ICP备：05015515号-1 地址：安徽省合肥市寿春路290号 <a href="../login.jsp">后台系统登录</a></p>
    <p></p>
    <a target="_blank"
       href="javascript:if(confirm('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016'))window.location='http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34010002000016'"
       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img
            src="../static/front/images/jbtb.png" style="float:left;"/>
        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">皖公网安备34010002000016号</p></a>
    <p>
        <font class="link_13">
            <span id="visitSiteNum"></span>
            <script type="text/javascript" src="../static/front/js/json2.js"></script>
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

