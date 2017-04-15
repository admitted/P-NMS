/**
 * 在线访谈需要引用的js
 */
	var JsLib_interview = function(id, ctx, imgId) {
		this.interviewId = id; // 在线访谈id
		this.actionCtx = ctx; // 应用路径地址
		this.imgId = imgId;	// 图片id
	};
	
	var askSortFlag = '0'; // 正序
	var textSortFlag = '0';
	function onImageClick (imgId) {
		var gg = document.getElementById(imgId);
		gg.src = actionCtx + "/security/jcaptcha.jpg?update=" + Math.random();
		return ;
	};
	
	function isValidate (imgId) {
	 	var questionMan=document.getElementById("questionMan").value;
	 	var questionMantel=document.getElementById("questionMantel").value;
		var questionContent=document.getElementById("questionContent").value;						  		
		var checkInput=document.getElementById("checkInput").value;    
		if(questionMan=="") {
		   alert("称呼不能为空！");
		   return;
	    }			
		if(questionMantel=="") {
		   alert("联系方式不能为空！");
		   return;
	    }
	    if(questionContent=="") {
		   alert("问题的内容不能为空！");
		   return;
	    }
	    if(checkInput=="") {
	    	alert("请输入验证码！");
	    	return;
	    }
	   
	 	if(!checkDate()) {
	 	   alert("截止日期已过，无法评论！");
	 	} else {
	 		var val = document.getElementById("checkInput").value;
	 		ajax(imgId, val);
	 	}
	};
	
	function checkDate() {
		var endTime= $("#endTime").val();
		var dd = new Date();
	    var y = dd.getYear();
	    y=(y > 200) ? y : 1900 + y; 
		var m = dd.getMonth()+1;// 获取当前月份的日期
		var d = dd.getDate(); 
		var intHours = dd.getHours();
		var intMinutes = dd.getMinutes();
		var intSeconds = dd.getSeconds();
		var dayDate = y + "-" + m + "-" + d;	
	    var	dayDate1 = Date.parse(dayDate.replace(/-/g,"/"));
		var endTime1 = Date.parse(endTime.replace(/-/g,"/"));	    
		if(dayDate1 > endTime1) { // 当前时间大于访谈结束时间
			return false;
		}
		return true;
	}
	
	function ajax(imgId, rand) { // 校验验证码并提交
		var sUrl = actionCtx + "/lw-admin/common/lw-comment-ext!checkImg.action?callback=?&code="+rand;
		$.getJSON(sUrl, function (result) {
			if (result.textStatus == "success") {
				goAsk();
			} else {
				document.getElementById("checkInput").value="";
				onImageClick(imgId);
				document.getElementById("checkInput").focus();
				alert(result.msg);
			}
		});
	}
	
	function goAsk() { // 保存问题
		var sUrl = actionCtx + "/lw-admin/common/interview-common!saveRecord.action?callback=?";
		var tjBtn = document.getElementById("btn");
		if (tjBtn) { 
			$('#btn').attr('disabled',"true");
		}
		var params = $("#ff").serialize();
		params = decodeURIComponent(params); // 先解码serialize的编码
		params = encodeURI(encodeURI(params));
		$.getJSON(sUrl, params, function (result) {
			if (tjBtn) { 
				$('#btn').removeAttr("disabled");
			}
			if (result.textStatus == "success") {
				$(':input','#ff').not(':button, :submit, :reset, :hidden')  
				 .val('').removeAttr('checked').removeAttr('selected');   
				alert("您的问题已经提交,访谈单位会尽快回复你！");
			} else {
				alert(result.msg);
			}
		});
	}
	/* 表单提交结束 */
	
	/* 自动滚屏和按时刷新js */
	var autoScrollOnR = 1;
	var autoScrollOnL = 1;
	var timeOutIDR = null;
	var timeOutIDL = null;
	var timeR = null;
	var timeL = null;
	var reflashTimeR=30000;
	var reflashTimeL=30000;
	function scrollWindowRecordText() {
		if (autoScrollOnR == 1){
			document.getElementById("recordText").scrollTop=document.getElementById("recordText").scrollHeight;
			timeOutIDR = setTimeout(scrollWindowRecordText, 200); // 这么用不行：setTimeout('scrollWindowRecordText()', 200);
		}
	}
	function scrollWindowLiveText(){
		if (autoScrollOnL == 1) {
			document.getElementById("liveText").scrollTop=document.getElementById("liveText").scrollHeight;
			timeOutIDL = setTimeout(scrollWindowLiveText, 200);
		}
	}
	
	// 在线问答滚动
	function scrollOnR () {
		autoScrollOnR = 1;
		scrollWindowRecordText();
	};
	
	function scrollOffR() {
		autoScrollOnR = 0;
		clearTimeout(timeOutIDR);
	}
	
	// 文字直播滚动
	function scrollOnL() {
		autoScrollOnL = 1;
		scrollWindowLiveText();
	}
	
	function scrollOffL () {
		autoScrollOnL = 0;
		clearTimeout(timeOutIDL);
	}
	
	// 在线问答，是否自动滚屏
	function isScrollR() {
		if(document.getElementById("scrollR").checked==false){
			scrollOffR();
		} else {
			scrollOnR();
		}
	};
	
	// 文字直播，是否自动滚屏
	function isScrollL() {
		if(document.getElementById("scrollL").checked==false) {
			scrollOffL();
		} else {
			scrollOnL();
		}
	};

	// 获取访谈文字直播记录
	function textSelf(divId) {
		getText(divId); // 第一次要加载记录
		if (!checkDate()) {
			return;
		}
		timeL = setTimeout(function(){textSelf(divId);}, reflashTimeL);
	};
	function setTextSort(flag, divId) { // 设置问答排序
		textSortFlag = flag;
		getText(divId);
	}
	// 手工刷新获取访谈文字直播记录，刷新后还会定时执行获取
	function setTextSelf (divId) {
		clearTimeout(timeL);
	    reflashTimeL = document.getElementById("recordTimeL").value;
		timeL = setTimeout(function(){textSelf(divId);}, reflashTimeL);
	};
	
	// 获取访谈文字直播记录
	function getText (divId) {
		if (!textSortFlag) {
			textSortFlag = '0';
		}
		var url = actionCtx + '/lw-admin/common/interview-common!listText.action?callback=?&lwInterviewId='
			+ interviewId + '&sortFlag=' + textSortFlag;
		$.getJSON(url, function (result) {
			var showDiv = document.getElementById(divId);
			var htmlContent = '';
			if (result.data == 'noRecord') {
				htmlContent = "暂无文字直播数据...";
			} else if (result.data == 'loadError') {
	            htmlContent = "加载文字直播数据失败...";
			} else if (result.textStatus == "success") {
	       		htmlContent='<dl">';
				var record=eval('('+ result.data +')');
				for(var i=0;i<record.length;i++) {
	               	htmlContent+='<dt  style="clear:both;">';
	               	htmlContent+='	<span style="float:left;text-align: left;overflow: hidden;">';
	               	htmlContent+='		<strong>';
	               	htmlContent+='			【'+record[i].speaker+'】';
	               	htmlContent+='		</strong>';
	               	htmlContent+='			 &nbsp;&nbsp;'+record[i].speakTime;
	               	htmlContent+='	</span>';
	               	htmlContent+='</dt>';
	               	htmlContent+='<dt style="clear:both;text-align: left;overflow: hidden;">';
	               	htmlContent+='	<span >';
	               	htmlContent+=		record[i].content;
	               	htmlContent+='	</span>';
	           		htmlContent+='</dt>';
				}
				htmlContent+='</dl>';
			}
			showDiv.innerHTML = htmlContent;
		});
	};
	
	// 获取在线问答记录
	function recordSelf (divId) {
		getRecord(divId); // 第一次要加载
		if (!checkDate()) {
			return;
		}
		timeR = setTimeout(function(){recordSelf(divId);}, reflashTimeR);
	};
	
	function setRecordSelf (divId) {
		clearTimeout(timeR);
	    reflashTimeR = document.getElementById("recordTimeR").value;
		timeR = setTimeout(function(){recordSelf(divId);}, reflashTimeR);
	};
	function setArkSort(flag, divId) { // 设置问答排序
		askSortFlag = flag;
		getRecord(divId);
	}
	function getRecord (divId) {// 获取在线问答记录
		if (!askSortFlag) {
			askSortFlag = '0';
		}
		var url = actionCtx + '/lw-admin/common/interview-common!listRecord.action?callback=?&lwInterviewId='
			+ interviewId + '&sortFlag=' + askSortFlag;
		$.getJSON(url, function (result) {
			var showDiv = document.getElementById(divId);
			var htmlContent='';
			if (result.data == 'noRecord') {
				htmlContent = "暂无问答数据...";
			} else if (result.data == 'loadError') {
	            htmlContent = "加载问答数据失败...";
			} else if (result.textStatus == "success") {
				htmlContent='<dl style="margin-top:-5px;">';
           		var record = eval('('+ result.data +')');
           		for(var i=0;i<record.length;i++) {
	               	htmlContent+='<dt  style="clear:both;">';
	               	htmlContent+='	<span style="float:left;text-align: left;overflow: hidden;">';
	               	htmlContent+='		<strong>';
	               	htmlContent+='			【'+record[i].questionMan+'】';
	               	htmlContent+='		</strong>';
	               	htmlContent+='			 &nbsp;&nbsp;'+record[i].questionTime;
	               	htmlContent+='	</span>';
	               	htmlContent+='</dt>';
	               	htmlContent+='<dt style="clear:both;text-align: left;overflow: hidden;">';
	               	htmlContent+='	<span >';
	               	htmlContent+=		record[i].questionContent;
	               	htmlContent+='	</span>';
	           		htmlContent+='</dt>';
           		
	           		htmlContent+='<dt style="clear:both;">';
	               	htmlContent+='	<span style="float:left;text-align: left;overflow: hidden;">';
	               	htmlContent+='		<strong>';
	               	htmlContent+='			【'+record[i].answerPerson+'】';
	               	htmlContent+='		</strong>';
	               	htmlContent+='			 &nbsp;&nbsp;'+record[i].answerTime;
	               	htmlContent+='	</span>';
	               	htmlContent+='</dt>';
	               	htmlContent+='<dt  style=" clear:both;text-align: left;overflow: hidden;">';
	               	htmlContent+='	<span>';
	               	htmlContent+=		record[i].answerContent;
	               	htmlContent+='	</span>';
	           		htmlContent+='</dt>';
	        	}
	            htmlContent+='</dl>';
			}
			showDiv.innerHTML = htmlContent;
		});
	};
	