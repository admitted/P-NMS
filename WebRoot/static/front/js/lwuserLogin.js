var loginScript;
var appPath = "http://www.ahga.gov.cn/cms/";

document.write('<script src="res/js/jquery-lasted.min.js"  type="text/javascript"></script>');
document.write('<script src="res/js/md5.js"  type="text/javascript"></script>');

function getuserinfovalue(wsid) { // 得到单点登录id进行登录
	//alert("id"+wsid);
	if (wsid == null || wsid == "" || wsid.indexOf("ERROR") >= 0) {
		document.write("wsid错误:" + wsid);
	} else {
		
		to_login (wsid);
	}
}

function xiexin(wsid) { // 得到单点登录id进行登录
	if (wsid == null || wsid == "" || wsid.indexOf("ERROR") >= 0) {
		document.write("wsid错误:" + wsid);
	} else {
		
		var url = appPath + "lw-admin/common/lw-reg!check.action?wsid=" + wsid;
		$.getJSON(url + "&callback=?", function(result) {
			if (result.textStatus == "error") { // 登录失败
				//alert("您还没有登录！");	
                if(confirm("您还没有登录,是否登录?")){
					login('');
				}else return;				
			} else { // 登录成功
				var hostport = document.location.host;
				location.href = "http://" + hostport + "/" + linkUrl;
			}
		});
	}
}

function tijiao(wsid){
	var url = appPath + "lw-admin/common/lw-reg!check.action?wsid=" + wsid;
	$.getJSON(url + "&callback=?", function(result) {
			if (result.textStatus == "error") { // 登录失败
				if(confirm("您还没有登录,是否登录?")){
					login('');
				}else return;
		} else { // 登录成功
			var res = result.data.split("|");
			if(document.getElementById("item_consult_name")){
				document.getElementById("item_consult_name").value = res[1];
			}
			checkFrom();
		}
	});
}


/**
 * 写信前，判断是否登录
 * @param xiexinUrl  写信提交页面url
 */
function xx_isLogin(xiexinUrl) {
	$.getJSON(appPath + 'lw-admin/common/lw-reg!getWsLoginUrl.action?callback=?', function(result) {
		// 如果是单点登录的，要调用getuserinfovalue的js获取当前登录用户
		var url;
		if(xiexinUrl != ""){
			linkUrl = "";
			linkUrl = xiexinUrl;
			url = result.data + '?type=user&callback=xiexin';
		}else{
			url = result.data + '?type=user&callback=tijiao';
		}
		
		var head = document.getElementsByTagName('head')[0];
		if(loginScript) 
			head.removeChild(loginScript);
		loginScript = document.createElement("script");
		loginScript.language = "javascript";
		loginScript.src = url;
		head.appendChild(loginScript); // 使用这个进行webservice登录，并重新加载getuserinfovalue
	});
}

/**
 * 登录前的操作。
 * 获取单点登录的url地址，如果返回none说明是非单点登录。否则进行js调用webservice的登录
 * 
 */
function login (dictName) {
	$.getJSON(appPath + 'lw-admin/common/lw-reg!getWsLoginUrl.action?callback=?', function(result) {
		var url = self.location;
		location.href = const_dictName + "/was2/ahsga/jsp/module/user/user_login.jsp?returnUrl="+url;
	});
}

/**
 * 前台用户的登录操作，包括单点和非单点登录
 */
function to_login(wsid) {
	var url = appPath + "lw-admin/common/lw-reg!check.action?wsid=" + wsid;
	$.getJSON(url + '&callback=?', function(result) {
		if (result.textStatus  == "error") { // 登录失败
			//showLogin();
			//alert(result);
		} else { // 登录成功
			//alert("用户 " + result + " 登录成功!");
			var res = result.data.split("|");
			if(document.getElementById("loginUser")){
				document.getElementById("loginUser").value = res[1];
				if(typeof showSolicits!='undefined'&showSolicits instanceof Function){
					showSolicits();
				}       
			}
			showManager(res[0]);
		}
	});
}

/**
 * 判断前台用户是否登录
 */
function isLogin() {
	$.getJSON(appPath + 'lw-admin/common/lw-reg!getWsLoginUrl.action?callback=?', function(result) {
		if (result.textStatus  == "error") {
			//alert(result.msg);
			return;
		}
		if (result.data == "none") { // 非单点登录的，直接进行isLogin判断
			var isurl = appPath + "lw-admin/common/lw-reg!isLogin.action?callback=?";
			$.getJSON(isurl,  function(result) {
				if (result.textStatus == "success" && result.islogin == "yes") { // 已经登录
					showManager(result.username);
				} else {
					// showLogin();
				}
			});
			return;
		} else {
			// 如果是单点登录的，要调用getuserinfovalue的js获取当前登录用户
			var url = result.data + '?type=user';
			var head = document.getElementsByTagName('head')[0];
			if(loginScript) 
				head.removeChild(loginScript);
			loginScript = document.createElement("script");
			loginScript.language = "javascript";
			loginScript.src = url;
			head.appendChild(loginScript); // 使用这个进行webservice登录，并重新加载getuserinfovalue
		}
	});
}

function isLoginbool(callbackMethod) {
	$.getJSON(appPath + 'lw-admin/common/lw-reg!getWsLoginUrl.action?callback=?', function(result) {
		if (result.textStatus  == "error") { // 登录失败
			alert(result.msg);
			return;
		}
		if (result.data == "none") { // 非单点登录的，直接进行isLogin判断
			var isurl = appPath + "lw-admin/common/lw-reg!isLogin.action?callback=?";
			$.getJSON(isurl,  function(result) {
				if (result.textStatus == "success" && result.islogin == "yes") { // 已经登录
					showManager(result.username);
				} else {
					//showLogin();
				}
			});
			return;
		} else {
			// 如果是单点登录的，要调用getuserinfovalue的js获取当前登录用户
			var url = result.data + '?type=user&fromType=cms';
			if (callbackMethod) {// 判断是否登录后的处理
				url += '&callback=' + callbackMethod;
			}
			var head = document.getElementsByTagName('head')[0];
			if(loginScript) 
				head.removeChild(loginScript);
			loginScript = document.createElement("script");
			loginScript.language = "javascript";
			loginScript.src = url;
			head.appendChild(loginScript); // 使用这个进行webservice登录，并重新加载getuserinfovalue
		}
	});
}

/**
 * 前台用户的注销
 */
function logout() {
	var url = appPath + "lw-admin/common/lw-reg!logout.action?callback=?";
	$.getJSON(url, {} , function(result) {
		if (result.textStatus == "error") {
			alert("注销失败!");
		} else if (result.data == "none") { // 非单点登录注销成功
			alert("注销成功!");
		} else {
			// 单点登录本地注销成功后，访问单点登录webservice端的注销接口
			var head = document.getElementsByTagName('head')[0];
			if(loginScript) 
				head.removeChild(loginScript);
			loginScript = document.createElement("script");
			loginScript.language = "javascript";
			loginScript.src = result.data;
			head.appendChild(loginScript); // 使用这个进行webservice登录，并重新加载getuserinfovalue
		//	alert("logout == "+url);
			alert("注销成功!");
		}
		logoutDiv();
	});
}

/**
 * TODO 显示登录框,具体项目组自定义替换里面的内容

function showLogin() {
	var html = '<li>用户名：</li>'
		+ '<li><input id="username" name="username" type="text" maxlength="12" /></li>'
		+ '<li>密码：</li>'
		+ '<li><input id="password" name="password" type="password" maxlength="12" /></li>'
		+ '<li><a href="javascript:void(0)" onclick="login()"><img src="#" alt="登录" /></a></li>';
	$("#loginDiv").html(html);
}
 */
/**
 * TODO 显示登录后管理方式,具体项目组自定义替换里面的内容
 * @param username
 */
//function showManager(username) {
//	var html = '<li>当前登录用户：</li> <li>' + username + '</li>'
//	+ '<li>    <a href="javascript:void(0)" target="_blank">进入后台管理</a></li>';
//	$("#loginDiv").html(html);
//}

