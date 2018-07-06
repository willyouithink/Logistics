var surveyShow = false;// 调查问卷是否显示
var surveyUrl = "http://survey.askform.cn/FormPage.aspx?UserID=139115&FormID=263126";// 链接地址

(function() {

	var surveyStr;
	var toTop;
	var hostUrl = window.location.href;//当前url地址
	/*
	 if(hostUrl!=undefined&&hostUrl!=null&hostUrl!=''){

	 $.ajax({
	 type : "post",
	 url : "../user/loadUserInfo.action",
	 dataType : "json",
	 success : function(msg) {
	 var loadUserInfoFlag = $.cookie("loadUserInfoFlag");
	 if(loadUserInfoFlag==undefined||loadUserInfoFlag==null||loadUserInfoFlag==''){
	 $.cookie("loadUserInfoFlag","1");
	 window.location.reload();
	 }else{
	 $.cookie("loadUserInfoFlag",null);
	 }
	 }
	 });
	 }
	 */

	if(hostUrl.indexOf("/hk/") > 0){
		surveyStr = "調查問卷";
		toTop = "回到頂部";
	} else {
		surveyStr = "调查问卷";
		toTop = "回到顶部";
	}
	if (surveyShow == true) {
		$("body").append("<div class='askTable'><a id='askTable' rel='external nofollow' href='"
			+surveyUrl+"' target='_blank'>"+surveyStr+"</a></div>"
			+ "<div class='goTop'><a href='#top'>"+toTop+"</a></div>");
	} else {
		$("body").append("<div class='goTop'><a href='#top'>"+toTop+"</a></div>");
	}
	$("#askTable").attr("onclick","_gaq.push(['_trackEvent', 'Survey', 'Click', 'askform'])");
})();

// 滚动条滚�?
$(window).scroll(function() {
	if ($(window).scrollTop() > 100) {
		var l = $(".container").offset().left;
		var w = $(".goTop").width();
		$(".askTable").css("right", l - w).css("bottom", "234px").css("height","90px");
		$(".askTable").fadeIn(600);
		$(".goTop").css("right", l - w).css("bottom", "295px");
		$(".goTop").fadeIn(600);
	} else {
		$(".askTable").fadeOut(600);
		$(".goTop").fadeOut(600);
	}
});

// 窗体改变大小
$(window).resize(function() {
	var l = $(".container").offset().left;
	var w = $(".goTop").width();
	$(".askTable").css("right", l - w);
	$(".goTop").css("right", l - w);
	$(".t-code").css("right", l - $(".t-code").width());
	$(".a-code").css("right", l - $(".a-code").width());
});
$(".scanLo").css("display","none");
$(".scanRe").css("display","none");