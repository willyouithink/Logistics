$('body').live("keydown",function(event){
	var a = $("#dimCityQuery:visible");
	if(a.size() != 0 && event.keyCode == 13){
		return false;
	}
});
$(".signee1").html("<img src='/r/cms/cms/default/img/loading.gif'/>");

	/*使用jQuery插件获取cookie中相关信息*/

//获取cookie中的历史查询单号记录，并显示在首页相应位置
var cacheQueryWayBillArray =JSON.parse($.cookie('cacheQueryWayBillArray'));
if (cacheQueryWayBillArray == null
			|| cacheQueryWayBillArray.length == 0) {
	$("#orderRecords").hide();
	$("#noRecords").show();
} else{
	//把字符串中的所有双引号去掉
	var countRecords = cacheQueryWayBillArray.length;
	for(var i=0; i<countRecords; i++){
		$("#orderRecords").append("<a class='records' href='javascript:void(0);'>" + cacheQueryWayBillArray[i].wayBillNo+"</a>&nbsp;&nbsp;");
		if(i==2){
			$("#orderRecords").append("<br>");
		}
	}
	$("#noRecords").hide();
	$("#orderRecords").show();
}

$("#password").focus(function(){
  $("#password").removeAttr("placeholder");
});
$("#password").blur(function(){
  $("#password").attr("placeholder","请输入密码");
});

// 幻灯片
	// 幻灯广告
(function(){
                setTimeout(function(){ 
			var picNum=$("div.flashPic img").size(); 
			var isNum=0; 
			var str=[];
			var imgDiv=$("div.flashPic");
			var $div=$("div.picNum");//数字容器
			imgDiv.find("img").hide().eq(0).show();
			for(var i=0;i<picNum;i++){
				str[i]="<a href='javascript:'></a>";
			}
			$div.html(str.join("")); 
			$div.find("a:eq(0)").addClass("on");
			function MovePic(){
				if((isNum+1)>=picNum){
					isNum=0;
				}
				else{
					isNum=isNum+1;	
				}					
				imgDiv.find("img").hide().eq(isNum).fadeIn(500); 
				$div.find("a").removeClass("on").eq(isNum).addClass("on"); //  
			}
			var setFn=setInterval(MovePic,4000);
			// 执行点击数字 显示图片
			$div.find("a").mouseenter(function(){   //鼠标移入
			    clearInterval(setFn);  //结束自动播放功能
				var j=$(this).index(); // 定义索引
                                tab(j);
				isNum=j;
			});
                         $div.find("a").mouseleave(function(){   //鼠标移出
			       
				setFn=setInterval(MovePic,4000);//调用自动播放功能
			});
                         $(".prevBtn").click(function(){
                             var img_index = 0;
                             clearInterval(setFn);  //结束自动播放功能
                            for(var i=0;i<picNum;i++){
                                if($("div.flashPic img")[i].style.display=="inline"){
                                     img_index=i;
                                }
                            }
                            if(img_index-1>=0){
                                 tab(img_index-1);
                                 isNum=img_index-1;
                             }else{
                                  tab(picNum-1);
                                  isNum=picNum-1;
                             }    
                            setFn=setInterval(MovePic,4000);//调用自动播放功能
                        });
                          $(".nextBtn").click(function(){
                             var img_index = 0;
                             clearInterval(setFn);  //结束自动播放功能
                            for(var i=0;i<picNum;i++){
                                if($("div.flashPic img")[i].style.display=="inline"){
                                     img_index=i;
                                }
                            }
                            if(img_index+1<picNum){
                                 tab(img_index+1);
                                 isNum=img_index+1;
                             }else{
                                  tab(0); 
                                  isNum=0;
                             }    
                            setFn=setInterval(MovePic,4000);//调用自动播放功能
                        });
                          function tab(i){
                            $div.find("a").removeClass("on").eq(i).addClass("on")
			    imgDiv.find("img").hide();
			    imgDiv.find("img").eq(i).fadeIn(500);
                        }  
      }, 6000);		
			
})();

$(document).ready(function(){ 
    //左右按钮
   $(".flashPic").mouseenter(function(){
      $(".prevBtn").css({"opacity":"100"});
      $(".nextBtn").css({"opacity":"100"});
       
   })
   $(".flashPic").mouseleave(function(){    
       $(".prevBtn").css({"opacity":"0"});
       $(".nextBtn").css({"opacity":"0"});

   });
});

//刷新账户信息
$(".a_refush_info").click(function(){
	queryData();
});

//鼠标悬浮显示用户名
function showName(){
	var username= $.cookie("depponLoginUserName");	
        $("#uname0").attr("title",username);

}

//使用其他账号登陆
$("#otherLogin").click(function(){
	$("#accountInfo_error").hide();
	$("#accountInfo").hide();
	$("#loginInfo").show();
});
//刷新账户信息
function queryData(){
	var username= $.cookie("depponLoginUserName");
	if(username!=null){
		$(".userName1").html(username);
	}
	else{
		$(".Safetyexit").trigger("click");
	}
	/*
	var obj1 = $(".ts-usermessage").find("#transOrder");
	var obj2 = $(".ts-usermessage").find("#payOrder");
	var obj3 = $("#unreadMessages");
	var obj4 = $("#unuseCoupon");
	//post请求
	$.ajax({
		type:"post",
		url:"/user/queryPayOderTranOder.action",
		data:{"isRefush":1},
		dataType:"json",
		beforeSend:function(XMLHttpRequest){
			obj1.html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
			obj2.html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
			obj3.html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
			obj4.html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		},
		success:function(msg){
			if(msg.user!=null){
				//运输中订单
				obj1.html("("+msg.user.transportingOrder+")");
				//待付款订单
				obj2.html("("+msg.user.refundPaymentOrder+")");
				obj3.html("("+msg.user.siteMessage+")");
				obj4.html("<u>("+msg.user.unuseCoupon+")</u>");
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown)
		{
			obj1.html("");
			obj2.html("");
			obj3.html("");
			obj4.html("");
		}
	});*/
}

//点击单号进行查询
(function(){
	$(".records").click(function(){
		$("#ordernum").val($(this).text());
		$("#trackForm").submit();
	});
})();

tablechange("#tabs","#tabsCont");
//公用tab切换 (请注意dom结构)
function tablechange(t,c){
	var e=$(t).children();
	var s=e.size();
	var c=$(c).children();
	e.find("a").click(function(){
		e.find("a").removeClass("current");
		$(this).blur().addClass("current");
		var index=$(this).parent().index();
		c.hide().eq(index).show();
	});
} 

//为登录表单添加Enter事件
$("#loginForm").keydown(function(e){
	var ke=e.keyCode;
	if(ke==13){
		$("#loginForm").find(".ts-submit").trigger("click");
	}
});
$("#accountInfo_error").keydown(function(e){
	var ke=e.keyCode;
	if(ke==13){
		$("#accountInfo_error").find(".ts-submit").trigger("click");
	}
});
// 登录验证
(function(){
	var loginsubmit = $(".ts-submit");
	var userName = $("#userName");
	var password = $("#password");
	var remeberUserName = $("#remeberUserName");
	var Codeinput = $(".Codeinput");
	//var unpa = /^[\da-zA-Z_]{1,20}$/;
	loginsubmit.click(function(){
			$(".wrongMsg").remove();
			$("#loginForm").find("input").removeClass("wrong");
			$(this).before("<div class='wrongMsg'></div>");			   
			if($("#accountInfo_error").is(":hidden")){
				//不是session过期，重输入密码的情况。
				if($.trim(userName.val())=="" || $.trim(userName.val())==$.trim(userName.attr("ov"))){
					wrongMsg(userName,"用户名不能为空");
					return false; 
				};
				if($.trim(userName.val()).length>40){
					wrongMsg(userName,"用户名或邮箱长度不能超过40个字符");
					return false;
				};
			}else{
				//session过期，重输入密码的情况。passowrd就是password_error
				password=$("#password_error");
			}
			if($.trim(password.val())=="" || $.trim(password.val())==$.trim(password.attr("ov"))){
				wrongMsg(password,"密码不能为空");
				return false; 
			};
			if($.trim(password.val()).length<6 || $.trim(password.val()).length>20){
				wrongMsg(password,"密码必须为6-20个字符");
				password.focus().select();
				
				return false;
			};
                        var reLogin = "";
			//当不是密码重输情况才检验验证码。
			if($("#accountInfo_error").is(":hidden")){
				if($(".Usercode").css("display")!="none")
				{
					if($.trim(Codeinput.val())=="" || $.trim(Codeinput.val())==$.trim(Codeinput.attr("ov"))){
						wrongMsg(Codeinput,"请输入验证码");
						Codeinput.focus();
						return false;
					}
					var flag = 0;
					$.ajax({
						type:"post",
						async:false,
						cache:false,
						timeout:1000,
						url:"user/checkCode.action",
						data:{"securityCode":$.trim(Codeinput.val())},
						dataType:"json",
						success:function(data){
							if(data.info=="error"){
								flag = 0;
							}else{
								flag = 1;
							}		
						} 
					});
					if(flag==0){
						wrongMsg(Codeinput,"验证码输入错误");
						Codeinput.focus();
						$("#authCode").trigger("click");
						return false;
					}
				}else{
                                    reLogin = "true";
                                }
			}else{
                             reLogin = "true";
                        }
			
			loginsubmit.hide();
			$(".signee1").show();
			//ajax登录
			
			var userName1=$.trim(userName.val());
			if(!$("#accountInfo_error").is(":hidden")){
				userName1=$.trim($(".userName_error").text());
			}
			$.ajax({
				type:"post",
				url:"user/ajaxLogin.action",
				data:{"user.userName":userName1,"user.password":$.trim(password.val()),"remeberName":remeberUserName.val(),"securityCode":$.trim(Codeinput.val()),"reLogin":"true"},
				dataType:"json",
				//jsonp:"user",
				//jsonpCallback:"success_jsonp",
				success:function(msg){
					if(msg.message=="loginSuccess"){
						var user = msg.user;
						$(".userName1").html(user.userName);
						$("#userName").val(user.userName);
						//$("#email").val(user.email);
						//$("#transOrder").html("(" + user.transportingOrder + ")");
						//$("#payOrder").html("(" + user.refundPaymentOrder + ")");
						//$("#unreadMessages").html("(" + user.siteMessage + ")");

						//$("#logoutBefActionName").val(msg.logoutBefActionName);

						$(".notLogin").hide();
						$(".login").show();						
						var td = new Date();
						var h = td.getHours();
						var currTime = "";
						if(h<8){
							currTime = "早上好，";
						}
						if(h>=8&&h<12){
							currTime = "上午好，";
						}
						if(h>=12&&h<13){
							currTime = "中午好，";
						}
						if(h>=13&&h<18){
							currTime = "下午好，";
						}
						if(h>=18){
							currTime = "晚上好，";
						}
						$(".currentTime").html(currTime);
						$(".ts-suo").removeClass("ts-suo").addClass("nosuo");
						//写cookie
						$.cookie("depponLoginUserName",user.userName,60*60*30);	
						//如果用户名是数字或字母组成，则长度超过12时调整样式
						//如果用户名是数字或字母之外的，则长度超过7时调整样式
						$(".ts-username").css("height", "30px");
						$(".Safetyexit").css("float", "");
						var nameReg = /^[0-9a-zA-Z]+$/;
						var flag = nameReg.test($(".userName1").html());
						if(flag){
							nameLength = 11;
						}else{
							nameLength = 6;
						}
						if($(".userName1").html().length > nameLength){
							//$(".ts-username").removeClass("height");
							$(".ts-username").css("height", "60px");
							$(".Safetyexit").css("float", "right");
						}

						$("#loginInfo").hide();
						$("#accountInfo_error").hide();
						$("#accountInfo").show();
						$(".signee1").hide();
						loginsubmit.show();
						showAccountInfos($("#transOrder"),$("#payOrder"),$("#unreadMessages"),$("#unuseCoupon"));
						//alert("success");
						//location.href="../order/mydeppon.action";
					}else{
						//清空验证码和密码
						$("#ckCodes").val("");
						password.val("");
						wrongMsg(userName,"用户名或密码错误,请检查您的密码是否区分大小写");
						//重新发送验证请求
						$("#authCode").trigger("click");
						//显示验证码
						$(".Usercode").show();
						$(".signee1").hide();
						loginsubmit.show();
						return false;
					}
				},
				error:function(data){
					alert("ajax通信错误，请稍后再试。");
					$(".signee1").hide();
					loginsubmit.show();
					return;
				}
			});
	});
 })();
	 

 /**
 *显示账户信息
 **/
 function showAccountInfos(obj1,obj2,obj3,obj4){
        /*
	$.ajax({
		type:"post",
		url:"user/queryPayOderTranOder.action",
		dataType:"json",
		async:false,
		cache:false,
		success:function(msg){
			if(msg.user!=null){
				//运输中订单
				obj1.html("("+msg.user.transportingOrder+")");
				//待付款订单
				obj2.html("("+msg.user.refundPaymentOrder+")");
				//未读站内信
				obj3.html("("+msg.user.siteMessage+")");
				//未使用优惠券
				obj4.html("<u>("+msg.user.unuseCoupon+")</u>");
			}
		}
	}); */
         //运输中订单
	obj1.html("(查看)");
	//待付款订单
	obj2.html("(查看)");
	//未读站内信
	obj3.html("(查看)");
	//未使用优惠券
	obj4.html("<u>(查看)</u>");
}
// 运单号验证
(function(){
	var ordernum = $("#ordernum");
	var searchnumber =$(".searchnumber");
	var numbercode = $(".numbercode");
	searchnumber.click(function(){
		if($.trim(ordernum.val())=="" || $.trim(ordernum.val())==$.trim(ordernum.attr("ov"))){
			alert("请输入运单号");
			return false;
		}
		
		// 验证运单号
		var tav=$.trim(ordernum.val()) || $.trim(ordernum.text());
		tav=tav.replace("，",",");
		try {
			var data= tav.split(",");
			if(data.length>10){alert("请最多输入10条运单号！");ta.focus();return false;};
			var patrn=/^\d*$/;
			for(i=0;i<data.length;i++){
				if (!patrn.test(data[i])) {
					alert("运单号必须为数字");
					ordernum.focus();
					return false;
				};
				// 快递单号修改为8到10位
				if(data[i].length < 8 ||  data[i].length>14){
					alert("运单号必须为8到14位数字");
					ordernum.focus();
					return false;
				}
			}
		} catch (e) {
			alert("输入的运单号格式不正确，请检查");
			ordernum.focus();
			return false;
		}
                $("#trackForm").submit();
	})
})();
// 验证网点查询
(function(){
	 var city_input = $(".city_input");
	 var searchcity = $(".intbotn");
	 searchcity.click(function(){
		if($.trim(city_input.val())=="" || $.trim(city_input.val())==$.trim(city_input.attr("ov"))){
			alert("请选择查询城市信息");
			city_input.focus();
			return false;
		}
		//验证输入的是否汉字以及是否合法
		var reg = /^[\u4E00-\u9FA5]+([\-][\u4E00-\u9FA5]+)*$/; 
		var inputCityName = $.trim(city_input.val());
		if(!reg.test(inputCityName)){ 
			alert("请输入正确的查询信息"); 
			return false; 
		}

		var start = encodeURI($("#start").val());
		$("#start").val(start);
		//start = decodeURI(start);
		//location.href = "/wangdian/?start=" + start;
		$("#cityfrom").submit();
	 })
})();
// 价格查询
(function(){
	 var cityinput = $(".cityinput");
	 var cityzinput = $(".cityzinput");
	 var tsprice = $(".tsprice");
	 tsprice.click(function(){
		if($.trim(cityinput.val())=="" || $.trim(cityinput.val())==$.trim(cityinput.attr("ov"))){
			alert("请选择发货地");
			cityinput.focus();
			return false;
		}
		/*//验证发货地城市输入的是否汉字以及是否合法
		var reg = /^[\u4E00-\u9FA5]+([\-][\u4E00-\u9FA5]+)*$/; 
		var startCityName = $.trim(cityinput.val());
		if(!reg.test(startCityName)){ 
			alert("请输入正确的查询信息"); 
			cityinput.focus();
			return false; 
		}*/
		if($.trim(cityzinput.val())=="" || $.trim(cityzinput.val())==$.trim(cityzinput.attr("ov"))){
			alert("请选择目的地");
			cityzinput.focus();
			return false;
		}
		/*//验证目的地城市输入的是否汉字以及是否合法
		var reg = /^[\u4E00-\u9FA5]+([\-][\u4E00-\u9FA5]+)*$/; 
		var destiCityName = $.trim(cityzinput.val());
		if(!reg.test(destiCityName)){ 
			alert("请输入国家标准地级城市名称"); 
			cityzinput.focus();
			return false; 
		}*/

		var leavedCity = encodeURI($("#leavedCity1").val());
		var arrivedCity = encodeURI($("#arrivedCity1").val());

		$("#leavedCity").val(leavedCity);
		$("#arrivedCity").val(arrivedCity);
		$("#PriceForm").submit();
		
	 })
})();

//为价格时效表单添加Enter事件
$("#PriceForm").keydown(function(e){
	var reg = /^[\u4E00-\u9FA5]+([\-][\u4E00-\u9FA5]+)*$/; 
	leavedCity = $("#leavedCity1").val();
	arrivedCity = $("#arrivedCity1").val();
	if(reg.test(leavedCity)&&reg.test(arrivedCity)){ 
		var ke=e.keyCode;
		if(ke==13){
			$("#PriceForm").find(".tsprice").trigger("click");
		}
	}
	
});
$(function(){
	//$(".Usercode").hide();   
})
var showcode = function(){
	$(".Usercode").show();
}
function changeImg(){       
	$("#authCode").attr("src","/user/authCode.action?d="+new Date().valueOf());       
}
function changeTrackCode(){
	$("#trackCode").attr("src","/user/authCode.action?type=track&&d="+new Date().valueOf()); 
}
/**
 * 记住用户名
 */
 function remeber(){
	$("#remeberUserName").attr("value",'');
	if($("#remeberNameCheck").get(0).checked){
		$("#remeberUserName").attr("value","yes");
	}else{
		$("#remeberUserName").attr("value","no");
	}
	//alert("记住用户名：  "+$("#remeberUserName").val());
}

$(".channegButn").live("mouseover",
	function(){$(this).addClass("tosnsmll_mouseover_2")}
);
$(".channegButn").live("mouseout",
	function(){$(this).removeClass("tosnsmll_mouseover_2");
});
$(".channegButn").live("mousedown",
	function(){$(this).addClass("tosnsmll_mousedown_2")}
);
$(".channegButn").live("mouseup",
	function(){$(this).removeClass("tosnsmll_mousedown_2");
});




$(document).ready(function(){
/*	sendProvinceAjax();
	sendAllProvinceAjax();
	viewHotCities();
	viewAllHotCities();
*/
	//获取Cookie中保存的记住用户名
	var remeberUserName = $.cookie("remeberUserName");
	if(remeberUserName != null){
		$("#userName").val(remeberUserName).removeClass("iGrays");
	}
});

//加载cookie中的价格时效查询城市
$(document).ready(function(){
	var leavedCity = $.cookie("leavedCity");
	var arrivedCity = $.cookie("arrivedCity");
	if(leavedCity != null){
		$("#leavedCity1").val(decodeURI(leavedCity)).removeClass("iGrays");
	}
	if(arrivedCity != null){
		$("#arrivedCity1").val(decodeURI(arrivedCity)).removeClass("iGrays");
	}
});

$(document).ready(function(){
	var nameReg = /^[0-9a-zA-Z]+$/;
	if(nameReg.test($(".userName1").html())){
		nameLength = 11;
	}else{
		nameLength = 6;
	}
	if($(".userName1").html().length > nameLength){
		$(".ts-username").css("height", "60px");
		$(".ts-username .Safetyexit").css("float", "right");
	}
});
//调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中
/*
QC.Login({
   //btnId：插入按钮的节点id，必选
   btnId:"qqLoginBtn",	
   //用户需要确认的scope授权项，可选，默认all
   scope:"get_user_info",
   //按钮尺寸，可用值[A_XL| A_L| A_M| A_S|  B_M| B_S| C_S]，可选，默认B_S
   size: "B_S"
	}, function(reqData, opts){//登录成功
	   QC.Login.getMe(function(openId, accessToken){
			//AJAX查看openId是否已经绑定，若已绑定，则把用户名存入Session，调用刷新账户信息的方法，否则；重定向到bingding.action
			$.ajax({
				type:"post",
				url:"../otherlogin/isExistAccount.action",
				data:{"bindingAccount":"qq"+openId},
				dataType:"json",
				success:function(msg){
				//	没有绑定跳转到绑定页面
					if(msg.message=="nobinding"){
						location.replace("../otherlogin/tobinding.action?bindingAccount="+msg.bindingAccount);
						//alert(msg.message);
					}
					else{
						LoginFromCookie();
					}
				},
				error:function(XMLHttpRequest, textStatus, errorThrown)
				{
					alert("抱歉，查询绑定信息过程异常！");
					if(WB2.checkLogin()){
						WB2.logout(function(){});
					}
					return false;
				}
			});
	   });
	}, function(opts){//注销成功
	}
);
*/
//微薄登录
function wbLogin(){
	WB2.login(function(){
		WB2.anyWhere(function(W){
			//获取用户信息
			W.parseCMD("/account/get_uid.json", function(sResult, bStatus){
				if(bStatus){
					$.ajax({
						type:"post",
						url:"otherlogin/isExistAccount.action",
						data:{"bindingAccount":"sina"+sResult.uid},
						dataType:"json",
						success:function(msg){
						//	没有绑定跳转到绑定页面
							if(msg.message=="nobinding"){
								location.replace("otherlogin/tobinding.action?bindingAccount="+msg.bindingAccount);
								//alert(msg.message);
							}
							else{
								LoginFromCookie();
							}
						},
						error:function(XMLHttpRequest, textStatus, errorThrown)
						{
							alert("抱歉，查询绑定信息过程异常！");	
							if(QC.Login.check()){
								QC.Login.signOut();
							}
							return false;
						}
					});
				}else alert("通过新浪微薄登录过程中发生错误！请稍后再试。");
			},{
				source:"466322619"
			},{
				method: 'get'
			});
		});
	});
}

//淘宝登录
function tbLogin(){
	var url = window.location.href;
	$.ajax({
		type:"post",
		url:"../otherlogin/saveUrl.action",
		data:{"saveURL":url},
		dataType:"json",
		success:function(msg){
		//	没有绑定跳转到绑定页面
		location.replace("https://oauth.taobao.com/authorize?response_type=token&client_id=21224707&redirect_uri=http://www.deppon.com/otherlogin/tbcallback.action&scope=item&state=1212");
		},
		error:function(XMLHttpRequest, textStatus, errorThrown)
		{
			alert("抱歉，查询绑定信息过程异常！");
			return false;
		}
	});
}

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
	LoginFromCookie();
});

//企业形象首页使用的从cookie登陆
function LoginFromCookie(){
	var userName = $.cookie("depponLoginUserName");
	//如果cookie中用户名为空，则未登录，如果不为空，则发送Ajax请求获取相关数据
	if(userName == null || $.trim(userName)=="" ){
		$(".login").hide();
		$(".notLogin").show();
		
		$("#accountInfo").hide();
		$("#loginInfo").show();
		$(".nosuo").removeClass("nosuo").addClass("ts-suo"); 
	}else{
	//// update by mujun ,
	
		var queryajax = function ()
		{
			$("#loginInfo").hide();
			$("#accountInfo").show();
			var show_error = function(){
//				$("#transOrder").html("查询失败");
//				$("#payOrder").html("查询失败");
//				$("#unreadMessages").html("查询失败");
//				$("#unuseCoupon").html("<u>查询失败");
				$("#loginInfo").hide();
				$("#accountInfo").hide();
				$("#accountInfo_error").show();
				$(".currentTime").html(currTime);
			};
			/*$.ajax({
				type:"post",
				url:"/user/queryPayOderTranOder.action",
				dataType:"json",
				success:function(msg)
				{
					if(!msg) {
						show_error();
						return false;
					}
					var user = msg.user;
                                        if(userName.length > 10){
					    user.userName = userName.substr(0,8)+"...";
					    $(".userName1").html(user.userName);
					    $("#userName").val(user.userName);
					}
					$(".userName1").html(user.userName);
					$("#userName").val(user.userName);
					if(msg.message == "TransportingOrder_queryFail")
					{
						$("#transOrder").html("查询失败");
					}else{
						//$("#transOrder").html("(" + user.transportingOrder + ")");
                                                $("#transOrder").html("(查看)");
					}
					
					if(msg.message == "RefundPaymentOrder_queryFail")
					{
						$("#payOrder").html("查询失败");
					}else{
						//$("#payOrder").html("(" + user.refundPaymentOrder + ")");
						$("#payOrder").html("(查看)");
					}
					
					$("#unreadMessages").html("(" + user.siteMessage + ")");
					$("#unuseCoupon").html("<u>(" + user.unuseCoupon+")</u>");
                                        $("#unreadMessages").html("(查看)");
					$("#unuseCoupon").html("<u>(查看)</u>");
				},
				error:function(data){
					show_error();
				}
			})*/
$("#transOrder").html("(查看)");
$("#payOrder").html("(查看)");
 $("#unreadMessages").html("(查看)");
					$("#unuseCoupon").html("<u>(查看)</u>");
		};
		
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
		$(".ts-suo").removeClass("ts-suo").addClass("nosuo"); 
		
		$("#transOrder").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		$("#payOrder").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		$("#unreadMessages").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		$("#unuseCoupon").html("<img src='/r/cms/cms/default/img/loading.gif' height=20 width=20/>");
		
		queryajax();
	
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

//微信图片的隐藏
(function(){
	$(".t-code").find("a").click(function(event){
	    $(".t-code").hide();
	});
})();
(function(){
	$(".a-code").find("a").click(function(event){
	    $(".a-code").hide();
	});
})();


function loginToVehicle(){
	$.ajax({
		type:"post",
		url:"/user/loginFromPro.action",
		dataType:"json",
		success:function(data){
			if(data.user!=null){
				var userName = data.user.userName;
				var passWord = data.user.password;
				//window.location.href="http://zhengche.deppon.com/user/loginFromPro.action?userName="+userName+"&passWord="+passWord;
                                window.location.href="http://zhengche.deppon.com";
			}else{
				window.location.href="http://zhengche.deppon.com";
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
		}
	});
}

var new_ds = new CityControlDate();
		$(".wdSendAddress")
				.click(
						function(event) {
							var cc = new CityControl(
									{
										target : $(".wdSendAddress"),
										ds : new_ds,
										open_key_input : true,
										panel_tab_display : {
											cn : {
												province : true,
												city : true,
												county : true,
												town : false
											},
											hmt : {
												province : true,
												city : true,
												county : true,
												town : false
											},
											en : {
												nation : true,
												province : true,
												city : true,
												county : true,
												town : false
											}
										},
										city_control_code : {
											city_address_code : null,
											nationCodeObj : null,
											provinceCodeObj : null,
											cityCodeObj : null,
											countyCodeObj : null,
											townCodeObj : null
										},
										callback : function(selected) {
											$(".cityControl").hide();
											var back_data = create_back_data($(selected.currentTarget));
											var addr =back_data.provinceName
													+ "-" + back_data.cityName
													+ "-"
													+ back_data.countyName;
											$(".wdSendAddress").val(addr).removeClass("iGrays");
                                                                                        $("#start").val(addr);
										}
									});
							cc.intiCityControl();
							event.stopPropagation();
						});
		$(".sendAddress")
				.click(
						function(event) {
							var cc = new CityControl(
									{
										target : $(".sendAddress"),
										ds : new_ds,
										open_key_input : true,
										panel_tab_display : {
											cn : {
												province : true,
												city : true,
												county : true,
												town : false
											},
											hmt : {
												province : true,
												city : true,
												county : true,
												town : false
											},
											en : {
												nation : true,
												province : true,
												city : true,
												county : true,
												town : false
											}
										},
										city_control_code : {
											city_address_code : null,
											nationCodeObj : null,
											provinceCodeObj : $("#leavedProvinceId"),
											cityCodeObj : $("#leavedCityId"),
											countyCodeObj : $("#leavedCountryId"),
											townCodeObj : null
										},
										/* 离开时的操作 即 onblur 事件 */
										callback : function(selected) {
											$(".cityControl").hide();
											var back_data = create_back_data($(selected.currentTarget));
											var addr=back_data.provinceName
													+ "-" + back_data.cityName
													+ "-"
													+ back_data.countyName;
											$(".sendAddress").val(addr).removeClass("iGrays");
										}
									});
							cc.intiCityControl();
							event.stopPropagation();
						});
		
		
		$(".receiveAddress")
		.click(
				function(event) {
					var cc = new CityControl(
							{
								target : $(".receiveAddress"),
								ds : new_ds,
								open_key_input : true,
								panel_tab_display : {
									cn : {
										province : true,
										city : true,
										county : true,
										town : false
									},
									hmt : {
										province : true,
										city : true,
										county : true,
										town : false
									},
									en : {
										nation : true,
										province : true,
										city : true,
										county : true,
										town : false
									}
								},
								city_control_code : {
									city_address_code : null,
									nationCodeObj :null,
									provinceCodeObj : $("#arrivedProvinceId"),
									cityCodeObj : $("#arrivedCityId"),
									countyCodeObj : $("#arrivedCountryId"),
									townCodeObj : null
								},
								/* 离开时的操作 即 onblur 事件 */
								callback : function(selected) {
									$(".cityControl").hide();
									var back_data = create_back_data($(selected.currentTarget));
									var addr =back_data.provinceName
											+ "-" + back_data.cityName
											+ "-"
											+ back_data.countyName;
									$(".receiveAddress").val(addr).removeClass("iGrays");
								}
							});
					cc.intiCityControl();
					event.stopPropagation();
				});