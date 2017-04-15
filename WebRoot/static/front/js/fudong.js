var LoginUI = !!window.LoginUI || {};
LoginUI.getViewportWidth = function() {
	var width = 0;
	if (document.documentElement && document.documentElement.clientWidth) {
		width = document.documentElement.clientWidth;
	} else if (document.body && document.body.clientWidth) {
		width = document.body.clientWidth;
	} else if (window.innerWidth) {
		width = window.innerWidth - 10;
	}
	return width;
};
LoginUI.getViewportHeight = function() {
	var height = 0;
	if (window.innerHeight) {
		height = (window.innerHeight / 2) + 70;
	} else if (document.documentElement
			&& document.documentElement.clientHeight) {
		height = (document.documentElement.clientHeight / 2) + 70;
	} else if (document.body && document.body.clientHeight) {
		height = document.body.clientHeight / 2;
	}
	return height;
}
LoginUI.getViewportScrollX = function() {
	var scrollX = 0;
	if (document.documentElement && document.documentElement.scrollLeft) {
		scrollX = document.documentElement.scrollLeft;
	} else if (document.body && document.body.scrollLeft) {
		scrollX = document.body.scrollLeft;
	} else if (window.pageXOffset) {
		scrollX = window.pageXOffset;
	} else if (window.scrollX) {
		scrollX = window.scrollX;
	}
	return scrollX;
}
LoginUI.getViewportScrollY = function() {
	var scrollY = 0;
	if (document.documentElement && document.documentElement.scrollTop) {
		scrollY = document.documentElement.scrollTop;
	} else if (document.body && document.body.scrollTop) {
		scrollY = document.body.scrollTop;
	} else if (window.pageYOffset) {
		scrollY = window.pageYOffset;
	} else if (window.scrollY) {
		scrollY = window.scrollY;
	}
	return scrollY;
}
function scrollMsgTip() {
	var t = LoginUI.getViewportHeight() + LoginUI.getViewportScrollY()
			- document.getElementById("msgtip").offsetHeight;
			document.getElementById("msgtip").style.top = t + "px"; 
}
function scrollTip() {
	scrollMsgTip();
}
