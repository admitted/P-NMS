var appPath = "http://www.ahga.gov.cn/cms/";
var actionCtx = appPath;
var const_dictName = "http://www.ahga.gov.cn:8087";
var const_wsbs = "const_wsbs";

var ssoPath = 'http://www.ahga.gov.cn:20081/publicsso';

function getTopManagerStr(curLoginName) {
	var const_topManagerStr = '您好！<font color="red">' + curLoginName 
		+ '</font>！&nbsp;欢迎来到淮北市公安局网站！'
		+ '点击进入<a href="http://www.ahga.gov.cn:8087/was2/was/ahgaweb/jsp/common/userCentredMain/user_centrend_main.jsp"><font color="#ff6600">我的会员中心</font></a>'
		+ '<span class="l1">【<a href="javascript:void(0)" onclick="logout();">退出</span></a>】';
	return const_topManagerStr;
}

function reg() {
	var url = encodeURIComponent(self.location);
	window.location.href = ssoPath+"/views/co3/register_pc.jsp?returnUrl="+url;
	//location.href = const_dictName + "/was2/was/ahgaweb/jsp/common/user/user_register.jsp?system=64C991849E2A2B15D96BA5CC9924F9A0&returnUrl="+url;
}

// 更改网上办事iframe的src
function changeIframeWsbsSrc(fid) {
	document.getElementById(fid).src = 'http://www.ahga.gov.cn:8087/was2/was/web/hbs/jsp/module/iframe/index.jsp?system=64C991849E2A2B15D96BA5CC9924F9A0';
}

// 给iframe标签添加action的路径
function addIframePreSrc(fid, url) {
	document.getElementById(fid).src = appPath + url;
}

function getAWsbsTag(linkUrl, showName, cssStr) {
	linkUrl = '<a href="' + const_dictName + linkUrl + '" ' + cssStr + '>' + showName + '</a>';
	document.write(linkUrl);
}

// 给img标签添加action的路径
function addImgPreSrc(imgId, imgSrc) {
	document.getElementById(imgId).src = appPath + imgSrc;
}
// a标签的修改，主要是网上办事的修改
function getATag(linkUrl, showName, cssStr) {
	if (linkUrl == const_wsbs) { // 如果是网上办事的链接
		/* shongzhi 20141217 改为新版办事大厅链接地址 start */
		//linkUrl = 'http://www.ahga.gov.cn:8087/was2/was/web/hbs/index.jsp?system=64C991849E2A2B15D96BA5CC9924F9A0';
		linkUrl = 'http://www.ahga.gov.cn:8087/was2/ahsga/lwCouncilPageAction.action?system=64C991849E2A2B15D96BA5CC9924F9A0';
		/* shongzhi 20141217 改为新版办事大厅链接地址 end */
	}
	linkUrl = '<a href="' + linkUrl + '" ' + cssStr + '>' + showName + '</a>';
	document.write(linkUrl);
}

// form标签的修改,添加actionCtx
function getFormTag(url, id, extStr) {
	if (url.indexOf(actionCtx) < 0) {
		url = actionCtx + url;
	}
	var str = '<form action="' + url + '" id="' + id + '" name="' + id + '" method="post" ' + extStr + '>';
	document.write(str);
}

function submitComment(formId, iframeId) {
	$("input[type='button']").hide();
	if (!formId || formId == '') {
		formId = 'messageform';
	}
	if (!iframeId || iframeId == '') {
		iframeId = 'iframe_result';
	}
	
    $.getJSON($('#' + formId).attr("action") + '?callback=?', $("#" + formId).serialize(),
	    function (result) {
	   	if (result.textStatus == "success" && result.isSuccess == "true") {
			document.getElementById(iframeId).src = document.getElementById(iframeId).src;
			alert("评论成功");
		}
  		$("input[type='button']").show();
	});
}