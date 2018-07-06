/*----------------------------- 
Name: public javascript
Design:Mc.ma
Time: 2011-12
-----------------------------*/
// Global button hover、down effects
//document.write("<scri"+"pt type='text/javascript' charset='utf-8' src='http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=466322619'></scr"+"ipt>");
//document.write("<scri"+"pt type='text/javascript' charset='utf-8' src='http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js' data-appid='100294686' data-redirecturi='http://www.deppon.com/help/qc_callback.html' charset='utf-8'></scr"+"ipt>");
var timer = new Array();

//首页小窗口注册方式选择
$(".commonReMini").click(function(){
	$(".commonMini-regist").show();
	$(".scan-regist").hide();
	$(".commonReMini").css({		
		"background": "url(/r/cms/cms/default/img/bg-commonQ1.png)",
		"color":"white",
		"border-bottom":"2px solid #373c64"
	});
	$(".scanRe").css({
		"background": "url()",
		"border-bottom":"2px solid #373c64",
	    "margin-left": "0px",
		"color":"#858585"
	});
	for(var i=0;i<timer.length;i++){
		window.clearInterval(timer[i]);
	}	
}
);
$(".scanRe").click(function(){
	$(".commonMini-regist").hide();
	$(".scan-regist").show();
	$(".commonReMini").css({
		"background": "url()",
		"border-bottom":"2px solid #373c64",
		"color":"#858585"
	});
	$(".scanRe").css({
		"background": "url(/r/cms/cms/default/img/bg-commonQ1.png)",
		"color":"white",
		"border-bottom":"2px solid #373c64",
		"margin-left": "0px"
	});
	setTimeout(lose, 180000);
	var timer1 = setInterval(qrLogin,3000);
	timer.push(timer1);
	
}
);
function qrLogin(){
	$.ajax({
		type:"post",
		url:"../user/QrLogin.action",
data:{
			"loginBefActionName" : $(
			"input[name=loginBefActionName]")
			.val()
		},
		dataType:"json",
		success:function(data){
			if(data.message=="loginSuccess"){
				 clearInterval(timer);
				 if(data.loginBefActionName==null||data.loginBefActionName==""){
					   javascript:location.href="../user/olduserloginpage.action";
				  }else{
						javascript:location.href=".."+msg.loginBefActionName;
				 }
			}else{
				//
			}
		},
	error:function(XMLHttpRequest, textStatus, errorThrown)
	{
		alert("抱歉，内部服务器故障，请稍后重试");
		$("#sp_login_loading").html("");
		$("#LoginSubmit").show();
	}
		
	});
}
//二维码失效
function lose(){
	 $('.qrCreate').css({
	        "position": "absolute",	      
	        "filter": "alpha(opacity=30)",
	        "opacity": "0.3",
	        "z-index": "2"
	    });
	 	$(".lose").css({"background-color": "#000000","z-index":"1","filter": "","opacity": ""}); 
	 	$(".loseShow").show();
	    $(".loseShow").css({    	
	    	"position":"absolute",
	    	"z-index": "3",
	    	"width":"120px",
	    	"height":"120px",
	    	"text-align":"center",
	    	"color":"white"
	    });
	    for(var i=0;i<timer.length;i++){
			window.clearInterval(timer[i]);
		}
	    
}
//鼠标悬浮事件
var a = 1;
function func1(){
	if(a==1){
		$(".qrCreate").animate({"left":"-50px"},800);
		$(".show").fadeIn("slow");	
		a = 0;
	}	
}
function func2(){
	if(a ==0){
		$(".qrCreate").animate({"left":"0"},800);
		$(".show").fadeOut("slow");	
		a = 1;
	}
	
}
	
//二维码失效，点击刷新事件
$(".loseShow").click(function(){
	$('.loseShow').hide();
	$(".lose").css({"background-color": "white","z-index":"100", "filter": "alpha(opacity=10)","opacity": "0.1"}); 
	$('.qrCreate').css({"filter": "","opacity": ""});	
    $("#qrmark").attr({"value":"false"});
	$(".qrCreate").attr("src",
			"../user/QrCode.action?d=" + new Date().valueOf());
	setTimeout(lose, 180000);
	var timer3 = setInterval(qrLogin,3000);
	timer.push(timer3);
});		
	
$(".button-l").hover(
	function(){$(this).addClass("button-l-hover")},
	function(){$(this).removeClass("button-l-hover")}
);
$(".button-l").mousedown(function(){
	$(this).addClass("button-l-down");
	$(this).mouseup(function(){
		$(this).removeClass("button-l-down");		 
	 })
});
//中图灰色按钮
$(".tosnmiddle_btns").hover(
	function(){$(this).addClass("tosns_mouseover")},
	function(){$(this).removeClass("tosns_mouseover")}				 
);
$(".tosnmiddle_btns").mousedown(function(){
	$(this).addClass("tosns_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosns_mousedown");		 
	 })
});

//中图按钮点击 mouserdown效果

$(".tosnmiddle_btn").hover(
	function(){$(this).addClass("tosn_mouseover")},
	function(){$(this).removeClass("tosn_mouseover")}
);
$(".tosnmiddle_btn").mousedown(function(){
	$(this).addClass("tosn_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosn_mousedown");		 
	 })
});

//中图按钮长一点的

$(".tosnmiddle_btnl").hover(
	function(){$(this).addClass("tosnl_mouseover")},
	function(){$(this).removeClass("tosnl_mouseover")}
);
$(".tosnmiddle_btnl").mousedown(function(){
	$(this).addClass("tosnl_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnl_mousedown");		 
	 })
});

//小图按钮点击Mouserdown效果

$(".tosnsmall_btn").hover(
	function(){$(this).addClass("tosnsml_mouseover")},
	function(){$(this).removeClass("tosnsml_mouseover")}
);
$(".tosnsmall_btn").mousedown(function(){
	$(this).addClass("tosnsml_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnsml_mousedown");		 
	 })
});


//小图按钮长一点的

$(".tosnsmall_btnl").hover(
	function(){$(this).addClass("tosnsmll_mouseover")},
	function(){$(this).removeClass("tosnsmll_mouseover")}
);
$(".tosnsmall_btnl").mousedown(function(){
	$(this).addClass("tosnsmll_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnsmll_mousedown");		 
	 })
});
//小图灰色按钮
$(".tosnsmall_btns").hover(
	function(){$(this).addClass("tosnsmall_btns_mouseover")},
	function(){$(this).removeClass("tosnsmall_btns_mouseover")}
);
$(".tosnsmall_btns").mousedown(function(){
	$(this).addClass("tosnsmall_btns_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnsmall_btns_mousedown");		 
	 })
});
// 首页网上订单按钮
$(".tosnBig").hover(
	function(){$(this).addClass("tosnBig_mouseover")},
	function(){$(this).removeClass("tosnBig_mouseover")}
);
$(".tosnBig").mousedown(function(){
	$(this).addClass("tosnBig_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnBig_mousedown");		 
	 })
});

//去除链接，按钮虚线框 
	$("a").bind("focus",function() {
	    if(this.blur) {this.blur()};
	});
	$(":submit").bind("focus",function() {
	    if(this.blur) {this.blur()};
	});
	$(":button").bind("focus",function() {
	    if(this.blur) {this.blur()};
	});
	
//公用tab切换 (请注意dom结构)
function  tabEffect(t,c){
	var e=$(t).children();
	var s=e.size();
	var c=$(c).children();
	e.find("a").click(function(){
		e.find("a").removeClass("a_font").addClass("a_visted");
		$(this).blur().removeClass("a_visted").addClass("a_font");
		var index=$(this).parent().index();
		c.hide().eq(index).show();
	})
}



//公用focus blur 效果  (请在需要的控件上  加上 inputFocus 类， 并添加ov="原始的value"即可)
(function(){
	$(function(){
		$(".inputFocus").addClass("iGrays");		
	});
	$(".inputFocus").focus(function(){
		var ov=$.trim($(this).attr("ov"));
		var val=$.trim($(this).val());
		$(this).removeClass("iGrays");
		if(val==ov){
			$(this).val("");
		}

	});
 	$(".inputFocus").blur(function(){
		var ov=$.trim($(this).attr("ov"));
		var val=$.trim($(this).val());
		if(val==""){
			$(this).val(ov).addClass("iGrays");
		}
	 })
	}
)();

// 鼠标放上去显示层 视频遮罩层
(function(){
	  var videlist = $(".videlist").find("ul li");
	  var videlist_a = $(".videlist").find("ul li a");
	  videlist_a.append("<div class='videoback'><span class='png'></span></div>")
	  videlist.hover(function(){
			$(this).find("div").toggle();
		  }
		);
})();
// 菜单展示(1)
(function(){
	$(".pngOpacity li").find("a").click(function(){	
	   $(this).siblings(".ts-updown").toggle();	
	    if($(this).find("span").hasClass("ts-left")){
	       $(this).find(".ts-left").removeClass("ts-left").addClass("ts-up");
			}
	    else
		{
	       $(this).find(".ts-up").removeClass("ts-up").addClass("ts-left");
			}
	});
		  
})();

// 菜单展示(2) 用于div结构
(function(){
    $(".trackc").click(function(){	
	   $(this).next("div").toggle();
	     if($(this).find("span").hasClass("ts-left")){
	       $(this).find(".ts-left").removeClass("ts-left").addClass("ts-up");
			}
	    else
		{
	       $(this).find(".ts-up").removeClass("ts-up").addClass("ts-left");
			}
	});
    $(".recievc").click(function(){	
	   $(this).next("div").toggle();
	     if($(this).find("span").hasClass("ts-left")){
	       $(this).find(".ts-left").removeClass("ts-left").addClass("ts-up");
			}
	    else
		{
	       $(this).find(".ts-up").removeClass("ts-up").addClass("ts-left");
			}
	});	 
	$(".overview").click(function(){	
	   $(this).next("div").toggle();
	     if($(this).find("span").hasClass("ts-left")){
	       $(this).find(".ts-left").removeClass("ts-left").addClass("ts-up");
			}
	    else
		{
	       $(this).find(".ts-up").removeClass("ts-up").addClass("ts-left");
			}
	});	 

})();
// 错误提示信息
function wrongMsg(object,msg){
	  $(".wrongMsg").text(msg);
	  object.addClass("wrong");
	}

/**
 * 导航栏
 */
$(function(){
		var li = $(".navigation ul").find(".cname");
		var currentValue = $.trim($(".header").attr("cv"));
		if(currentValue=='首页')
		{
		  //  li.eq(1).addClass("tf_count");
		}
		if(currentValue=='我的德邦')
		{
			li.eq(0).addClass("tf_count").css({"color":"#fff"});
		$("#div-mydeppon").show();
		}
		if(currentValue=='网上托运')
		{   
			li.eq(1).addClass("tf_count").css({"color":"#fff"});
		$("#div-trans-online").show();
		}
		if(currentValue=='追踪与收货')
		{
			li.eq(2).addClass("tf_count").css({"color":"#fff"});
		$("#div-track-receive").show();
		}
		if(currentValue=='业务介绍')
		{
			li.eq(3).addClass("tf_count").css({"color":"#fff"});
		}
		if(currentValue=='帮助与支持')
		{
			li.eq(4).addClass("tf_count").css({"color":"#fff"});
		}
		if(currentValue=='关于德邦')
		{
			li.eq(5).addClass("tf_count").css({"color":"#fff"});
		}
	});
  	(function(){
			 $(".menuSenc").hide();
	  		 $(".navigation ul").find("li").hover(
				  function(){
					var o = $(this).offset().right;
			        $(this).find(".menuSenc").css({"right":o});
					$(this).find(".menuSenc").show();
				  },
				  function(){
					$(this).find(".menuSenc").hide();
				  }
				);
	})();


/**
 * 首页ajax 登出
 */

$(".Safetyexit").live("click",function(){
	$.ajax({
		type:"post",
		url:"https://www.deppon.com/user/ajaxLogout.action",
		dataType:"json",
		success:function(msg){
			$(".login").hide();
			$(".notLogin").show();
			$("#accountInfo").hide();
			$("#loginInfo").show();
			$("#accountInfo_error").hide();
			$("#ckCodes").val("");
			changeImg();
			//$(".Usercode").hide();
			$(".nosuo").removeClass("nosuo").addClass("ts-suo");
			$("#password").val("");
			var remeberUserName = $.cookie("remeberUserName");			
			document.cookie = "depponLoginUserName=;path=/";
			if(remeberUserName != null){
				$("#userName").val(remeberUserName).removeClass("iGrays");
			}
			else
				$("#userName").val("用户名/email/手机号").addClass("iGrays");
		}
	});
}); 
/*
 *jQuery操作cookie插件源码
 *创建人：邓夫伟
 *时间：2012-3-19
 */
jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        var path = options.path ? '; path=' + options.path : '';
        var domain = options.domain ? '; domain=' + options.domain : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    if(cookieValue) break;
                }
            }
        }
        return cookieValue;
    }
};

//从cookie中获取记住的用户名
$(document).ready(function(){
	var remeberUserName = $.cookie("remeberUserName");
	if(remeberUserName != null){
		$("#userName").val(remeberUserName).removeClass("iGrays");
	}
});

$(document).ready(function(){
	LoginFromCookie1();
});

//企业形象其他页面使用的从cookie登陆。不去用查询用户的运单信息
function LoginFromCookie1(){
	var userName = $.cookie("depponLoginUserName");
	//如果cookie中用户名为空，则未登录，如果不为空，则发送Ajax请求获取相关数据
	if(userName == null || $.trim(userName)=="" ){
		$(".login").hide();
		$(".notLogin").show();
		
//		$("#accountInfo").hide();
//		$("#loginInfo").show();
//		$(".nosuo").removeClass("nosuo").addClass("ts-suo"); 
	}else{
	//// update by mujun ,
	
//		var queryajax = function ()
//		{
//			$("#loginInfo").hide();
//			$("#accountInfo").show();
//			var show_error = function(){
//				$("#transOrder").html("数据异常");
//				$("#payOrder").html("数据异常");
//				$("#unreadMessages").html("数据异常");
//			};
//			$.ajax({
//				type:"post",
//				url:"/user/queryPayOderTranOder.action",
//				async:false,
//				dataType:"json",
//				success:function(msg)
//				{
//					if(!msg) {
//						show_error();
//						return false;
//					}
//					var user = msg.user;
//					$(".userName1").html(user.userName);
//					$("#userName").val(user.userName);
//					if(msg.message == "TransportingOrder_queryFail")
//					{
//						$("#transOrder").html("数据异常");
//					}else{
//						$("#transOrder").html("(" + user.transportingOrder + ")");
//					}
//					
//					if(msg.message == "RefundPaymentOrder_queryFail")
//					{
//						$("#payOrder").html("数据异常");
//					}else{
//						$("#payOrder").html("(" + user.refundPaymentOrder + ")");
//					}
//					
//					$("#unreadMessages").html("(" + user.siteMessage + ")");
//				},
//				error:function(data){
//					show_error();
//				}
//			})
//		};
		
		$(".notLogin").hide();
		$(".login").show();
		
		var td = new Date();
		var h = td.getHours();
		var currTime = "";
		if(h<8){
			currTime = "早上好 ,";
		}
		if(h>=8&&h<12){
			currTime = "上午好 ,";
		}
		if(h>=12&&h<13){
			currTime = "中午好 ,";
		}
		if(h>=13&&h<18){
			currTime = "下午好 ,";
		}
		if(h>=18){
			currTime = "晚上好 ,";
		}
		$(".currentTime").html(currTime);
                $(".userName1").html(userName);
		//$("#loginInfo").hide();
		//$("#accountInfo").show();
//		$(".ts-suo").removeClass("ts-suo").addClass("nosuo"); 
		
		$("#transOrder").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		$("#payOrder").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		$("#unreadMessages").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		
//		queryajax();
	
	////
		
	////comment by mujun ;
	/*
		$.ajax({
			type:"post",
			url:"/user/queryPayOderTranOder.action",
			async:false,
			dataType:"json",
			success:function(msg){
				if(msg.message == "querySuccess" || msg.message == "queryFail"){
					var user = msg.user;
					$(".userName1").html(user.userName);
					$("#userName").val(user.userName);
					$("#transOrder").html("(" + user.transportingOrder + ")");
					$("#payOrder").html("(" + user.refundPaymentOrder + ")");
					$("#unreadMessages").html("(" + user.siteMessage + ")");

					$(".notLogin").hide();
					$(".login").show();

					var td = new Date();
					var h = td.getHours();
					var currTime = "";
					if(h<8){
						currTime = "早上好 ,";
					}
					if(h>=8&&h<12){
						currTime = "上午好 ,";
					}
					if(h>=12&&h<13){
						currTime = "中午好 ,";
					}
					if(h>=13&&h<18){
						currTime = "下午好 ,";
					}
					if(h>=18){
						currTime = "晚上好 ,";
					}
					$(".currentTime").html(currTime);

					$("#loginInfo").hide();
					$("#accountInfo").show();
					$(".ts-suo").removeClass("ts-suo").addClass("nosuo"); 
				}
			},
			error:function(data){
				for(var a in data)
				{
					alert(a +":"+data[a]);
				}
			
				//document.cookie = "depponLoginUserName=;path=/";
				return;
			}
		})
*/
		//comment by mujun end;
	}
}
//加入到收藏夹
 function addFavorite() 
 { 
	 var sURL="http://www.deppon.com";
	 var sTitle="德邦物流官方网站";
     try 
     { 
         window.external.addFavorite(sURL, sTitle); 
     } 
     catch (e) 
     { 
         try 
         { 
             window.sidebar.addPanel(sTitle, sURL, ""); 
         } 
         catch (e) 
         { 
             alert("加入收藏失败，请使用Ctrl+D进行添加"); 
         } 
     } 
 }

//如果是IE6，则提示是否升级
$(document).ready(function(){
	var browser=$.browser.msie;
	var b_version=$.browser.version;
	if(browser && b_version=="6.0")
	{
	    $(".container ").before("<div class='Ieinfo'><a href='http://windows.microsoft.com/zh-CN/internet-explorer/downloads/ie-8'>是否升级浏览器的版本，以更好的体验德邦物流提供的服务?</a><a  class='ico m_close' href='javascript:void(0)'>X</a></div>");
	}
	$(".m_close").click(function(){
		$(".Ieinfo").remove();
	});
});

/* ‘调查问卷’，‘回到顶部’，‘調查問卷’，‘回到頂部’通过引入survey-show.js来控制 */
(function() {
	document.write('<script type="text/javascript" src="/js/survey-show.js" > <\/script>');
})();

(function(){
			var Pic=$(".workPic"); 
			var num=$(".workPicNum li").find("a"); 
			Pic.find("img").hide().eq(0).show();
			num.click(function(){
				var j=$(this).parent().index(); 
				Pic.find("img").hide();
				Pic.find("img").eq(j).fadeIn(500);
			});		
			
})();

//字符串过滤
function checksbinputs(o){
	var txt=new RegExp("[ ,\\`,\\~,\\!,\\@,\#,\\$,\\%,\\^,\\*,\\&,\\?,\\:,\\.,\\<,\\>,\\{,\\},\\'',\\;,\\=,\"]"); 
	if(txt.test(o)){
		return true;
	}	
}
//打开在线客服的JS方法
function openOSS(){
	$('#live800icon').trigger('click');
}
(function(){
	$("#live800icon").attr("onclick","_gaq.push(['_trackEvent', 'Service', 'Click', 'https://www.deppon.com/onlineservice'])"); 
})();

function toFPSSystem(){
	var newTab=window.open('about:blank');
	$.ajax({
		type:"post",
		url:"../user/toFPSSystem.action?t="+new Date().getTime(),
		dataType:"json",
		success:function(data){
			if(data==null||data.fpsFlag=='noAuth'){
				alert("未开通");
			}else{
				newTab.location.href=data.fpsLoginUrl;
			}
		},
		error:function(data){
			alert("跳转失败");
		}
	});
}