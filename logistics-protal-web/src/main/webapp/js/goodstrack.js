/**
 * 查询轨迹脚本js 2017-05-17 liqingyun
 */
// 运单html是否展示
var wayBillHtmlShow = false;
// 运单数据是否已经查询
var finishShearchWayBill = false;
/**
 * 官网首页跳转进来查询
 */
$(function() {
	getCacheQueryWayBill();
	var ta = $("#billStr");
	var tav = $.trim(ta.val()) || $.trim(ta.text());
	if (tav == "" || tav == $.trim(ta.attr("ov"))) {
		return;
	}
	ajaxTrack("", $.trim($("#billStr").val()));

});
/**
 * 查询轨迹
 */
function submitBills() {
	ajaxTrack("", $.trim($("#billStr").val()));

};
/**
 * 点击运单标签查询轨迹
 * 
 * @param billNo
 */
function clickWayBillTrack(billNo) {
	ajaxTrack(billNo, $.trim($("#billStr").val()));
};
/**
 * 点击关联运单
 * 
 * @param billNo
 */
function clickRelationWayBillTrack(billNo) {
	ajaxTrack(billNo, $.trim($("#billStr").val()) + "," + billNo);
}

/**
 * 验证轨迹参数
 */
var validateTrackParam = function(billStr) {
	this.serverData = {
		"err" : false,
		"billStr" : billStr
	};
	var ta = $("#billStr");
	$(".cargowrong").remove();
	$(":input").removeClass("wrong");
	ta.removeClass("wrong");
	$(".record-list").after("<p class='cargowrong'></p>");
	// var tav = $.trim(ta.val()) || $.trim(ta.text());
	if (serverData.billStr == "" || serverData.billStr == $.trim(ta.attr("ov"))) {
		order_wrongMsg(ta, "请填写运单号！");
		ta.css("color", "red");
		return serverData;
	}
	serverData.billStr = serverData.billStr.replace(/，/g, ',').replace(/\r\n/g,
			',').replace(/\n/g, ",").replace(/,,/g, ",").replace(/\ /g, ",");
	try {
		var data = serverData.billStr.split(",");
		if (data.length > 10) {
			order_wrongMsg(ta, "一次最多查询10个单号！");
			ta.css("color", "red");
			return serverData;
		}
		;
		var patrn = /^\d*$/;
		for (var i = 0; i < data.length; i++) {
			if (!patrn.test(data[i])) {
				order_wrongMsg(ta, "运单号须为8到14位纯数字！");// 或9位
				ta.css("color", "red");
				return serverData;
			}
			;
			if (data[i].length < 8 || data[i].length > 14) {
				order_wrongMsg(ta, "运单号须为8到14位数字！");
				ta.css("color", "red");
				return serverData;
			}
		}
	} catch (e) {
		order_wrongMsg(ta, "输入的运单号格式不正确，请检查！");
		ta.css("color", "red");
		return serverData;
	}
	serverData.err = true;
	return serverData;
};
function ajaxTrack(billNo, billStr) {

	$(".introduce_info").hide();
	$(".track-err").hide();
	$(".track-success").hide();
	$(".track_info").show();

	$("#trackResultSelect").html("");
	$(".track-result #track_table").html("");
	$(".track-err .cont").text("");

	$(".track_info .title").hide();
	$(".waybill-result").hide();
	$("#clickWaybillResult").removeClass("aUp");
	$("#clickWaybillResult").addClass("aDown");

	$("#expressSignImgVerify").hide();
	$(".signImgDiv").hide();
	$(".signReturnImgDiv").hide();
	finishShearchWayBill = false;
	wayBillHtmlShow = false;
	var serverData = validateTrackParam(billStr);
	if (!serverData.err) {
		return;
	}
	$(".query-form").find("#trackBtn").val("查询中...");
	$(".query-form").find("#trackBtn").attr("disabled", "disabled");
	$.ajax({
		type : "POST",
		url : DepponCfg.LoginUrl + "/phonerest/track/searchTrack",
		timeout : 7000, // 超时时间设置，单位毫秒
		data : JSON.stringify({
			"sysCode" : DepponCfg.sysCode,
			"billNo" : billNo,
			"billStr" : serverData.billStr
		}),
		dataType : "json",
		contentType : "application/json",
		beforeSend : function(XMLHttpRequest) {
		},
		success : function(data) {
			$(".query-form").find("#trackBtn").removeAttr("disabled");
			$(".query-form").find("#trackBtn").val("查询");
			buildTrackHtml(data);
		},
		error : function(xhr, textStatus) {
			$(".query-form").find("#trackBtn").removeAttr("disabled");
			$(".query-form").find("#trackBtn").val("查询");
			$(".track-err").find(".cont").text("查询出错");
			$(".track-err").show();
		}
	});
};

function buildTrackHtml(response) {
	if (response.status == "fail") {
		$(".track-err").find(".cont").text(response.message);
		$(".track-err").show();
		return;
	}
	try {
		$("#curBillNo").val(response.result.billNo);
		var wayBillStateHtml = "";
		var isShow = "";
		$
				.each(
						response.result.billNoList,
						function(i, billNo) {
							if (billNo == response.result.billNo) {
								if (response.result.billNoState == null
										|| response.result.billNoState == "null") {
									response.result.billNoState = "";
								}
								wayBillStateHtml = wayBillStateHtml
										+ "<li><a href='javascript:void(0);' class='current' rel='"
										+ response.result.billNo + "'>"
										+ response.result.billNo + "&nbsp;"
										+ response.result.billNoState
										+ "</a></li>" + isShow;

							} else {
								wayBillStateHtml = wayBillStateHtml
										+ "<li><a onclick=clickWayBillTrack('"
										+ billNo
										+ "') href='javascript: void (0);; rel='"
										+ billNo + "'>" + billNo
										+ "&nbsp;</a></li>";
							}

						});

		$("#trackResultSelect").html(wayBillStateHtml);
	} catch (err) {
		$(".track-err").find(".cont").text("暂时查不到该单号的相关记录，请稍后再试");
		$(".track-err").show();
	}

	var tracks = response.result.tracks;
	if (tracks == null) {
		$(".track-err").find(".cont").text("暂时查不到该单号的相关记录，请稍后再试");
		$(".track-err").show();
		return;
	}
	var initGpsMap = false;
	var cdBtn = false;
	var trackHtml = "<tr class='tit'><td width='80' height='23'>&nbsp;</td>	<td width='80' align='center'>时间</td><td align='center' colspan=2>货物状态</td></tr>";
	// 天气提示
	if (response.result.weatherWarning != null
			&& response.result.weatherWarning != "") {
		trackHtml = trackHtml
				+ "<tr ><td width='80' height='43' colspan='4' style='font-size: 15px;color: red;background-color: blanchedalmond;padding-left: 10px;'>"
				+ response.result.weatherWarning + "</td></tr>";
	}
	for (var i = 0; i < tracks.length; i++) {
		var flag = i;
		// 展示小地图，处理派送后有预计到达或预计派送也显示小地图
		if (i == 1
				&& (tracks[0].opreateType == 'ESTIMATED_ARRIVAL' || tracks[0].opreateType == 'ESTIMATED_SIGNED')) {
			flag--;
		}
		if (flag == 0 && tracks[i].opreateType == 'SENT_SCAN') {
			trackHtml = trackHtml + "<tr> <td width='80' class='tCen'>"
					+ tracks[i].date + "</td><td width='80' class='tCen'>"
					+ tracks[i].time + "</td><td width='400'>"
					+ tracks[i].content + "<td class='tb" + i + "'></td></tr>";
			trackHtml = trackHtml
					+ "<tr><td colspan='3'><div id='mapBox' style='width: 550px;margin-top: 5px;' class='orderDetailMap' ><div id='map' style='width:550px'></div></div></td></tr>";
			initGpsMap = true;
		} else if (tracks[i].opreateType == 'ESTIMATED_SIGNED') {
			trackHtml = trackHtml
					+ "<tr><td width='80' class='tCen'></td><td width='80' class='tCen'></td>"
					+ "<td width='400'>预计&nbsp;<span style='color:red;font-weight:900;'>"
					+ tracks[i].date + "&nbsp;" + tracks[i].time
					+ "&nbsp;前</span>&nbsp;送达</td><td class='tb" + i
					+ "'></td></tr>";
		} else {
			trackHtml = trackHtml + "<tr>	<td width='80' class='tCen'>"
					+ tracks[i].date + "</td><td width='80' class='tCen'>"
					+ tracks[i].time + "</td><td width='400'>"
					+ tracks[i].content + "</td><td class='tb" + i
					+ "'></td></tr>";
		}
	}
	$(".track-result #track_table").append(trackHtml);
	// 在线客服图标
	$(".track-result #track_table .tb0")
			.append(
					"<a  href='https://dev.markd.cn:8201/' target='_blank'><img style='padding-top: 15px;' width='90' border='0' src='/r/cms/cms/eco/images/kfimg.png' name='kf'><img class='span2' src='/r/cms/cms/eco/images/NEW.png'></a>");
	// 催单图标
	if (response.result.isShow != "0" && $(".track-result #track_table .tb1")) {
		$(".track-result #track_table .tb1")
				.append(
						"<a href='#'  id='cuidan' onclick='cuidan()'><img style='padding-top: 15px;' width='90' border='0' src='/r/cms/cms/eco/images/cdimg.png' name='cd'></a>");
	}
	$(".track-success").show();
	$(".track_info .title").show();
	if (initGpsMap) {
		initMap(response.result.billNo, 1);
		setInterval(function() {
			initMap(response.result.billNo, 1);
		}, 1000 * 60);
	}
	setCacheQueryWayBill(response.result.billNo);
};
$(".record #pastBills a").live("click", function() {
	ajaxTrack(this.rel, this.rel);
})
/**
 * 缓存运单号
 * 
 * @param wayBillNo
 */
function setCacheQueryWayBill(wayBillNo) {
	var wayBill = {
		wayBillNo : wayBillNo,
		company : "德邦物流",
		running : true
	}
	var cacheQueryWayBillArray = JSON.parse($.cookie('cacheQueryWayBillArray'));
	if (cacheQueryWayBillArray == null || cacheQueryWayBillArray.length == 0) {
		cacheQueryWayBillArray = [ wayBill ];
	} else {
		for (var i = 0; i < cacheQueryWayBillArray.length; i++) {
			if (cacheQueryWayBillArray[i].wayBillNo == wayBill.wayBillNo) {
				cacheQueryWayBillArray.splice(i, 1);
				cacheQueryWayBillArray.unshift(wayBill);
				$.cookie("cacheQueryWayBillArray", JSON
						.stringify(cacheQueryWayBillArray), {
					expires : 3,
					path : '/'
				});
				return;
			}
		}
		if (cacheQueryWayBillArray.length < 6) {
			cacheQueryWayBillArray.unshift(wayBill);
		} else {
			cacheQueryWayBillArray.pop();
			cacheQueryWayBillArray.unshift(wayBill);
		}
	}
	$.cookie("cacheQueryWayBillArray", JSON.stringify(cacheQueryWayBillArray),
			{
				expires : 3,
				path : '/'
			});
}
function getCacheQueryWayBill() {
	var cacheQueryWayBillArray = JSON.parse($.cookie('cacheQueryWayBillArray'));
	if (cacheQueryWayBillArray == null || cacheQueryWayBillArray.length == 0) {
		return;
	}
	var pastBillHtml = "";
	for (var i = 0; i < cacheQueryWayBillArray.length; i++) {
		pastBillHtml = pastBillHtml + "<li><a href='javascript:void(0);' rel='"
				+ cacheQueryWayBillArray[i].wayBillNo + "'>"
				+ cacheQueryWayBillArray[i].wayBillNo + "</a></li>";
	}
	$(".record #pastBills").html(pastBillHtml);
}

function removeTrackCookie() {
	$.cookie('cacheQueryWayBillArray', null, {
		path : '/'
	}); // 通过传递null作为cookie的值即可
	$(".record #pastBills").html("");
}
// -------------运单信息---------------
$("#clickWaybillResult").click(function() {
	if (wayBillHtmlShow == false) {
		$(this).removeClass("aDown");
		$(this).addClass("aUp");
		$(".waybill-result").show();
		wayBillHtmlShow = true;
	} else {
		$(this).removeClass("aUp");
		$(this).addClass("aDown");
		$(".waybill-result").hide();
		wayBillHtmlShow = false;
	}
	// 已经查询直接返回
	if (finishShearchWayBill) {
		return;
	}
	if ($("#curBillNo").val() == "" || $("#curBillNo").val() == null) {
		alert("参数错误!")
		return;
	}
	cleanWayBillInfo();
	$.ajax({
		type : "POST",
		url : DepponCfg.LoginUrl + "/phonerest/track/searchWayBill",
		timeout : 5000, // 超时时间设置，单位毫秒
		data : JSON.stringify({
			"billNo" : $.trim($("#curBillNo").val())
		}),
		dataType : "json",
		contentType : "application/json",
		beforeSend : function(XMLHttpRequest) {
		},
		success : function(data) {
			finishShearchWayBill = true;
			showWayBillInfo(data);
		},
		error : function(xhr, textStatus) {
			alert("暂时查不到该单号的相关记录，请稍后再试！");
		}
	});

});

function cuidan() {
	document.getElementById("reminderOrder").click();
}

function showWayBillInfo(response) {
	if (response.status == "fail") {
		alert(response.message);
		return;
	}
	var wayBill = response.result;
	if (wayBill == null) {
		alert("暂时查不到该单号的相关记录，请稍后再试！");
		return;
	}
	$("#consigneeCityName").text(wayBill.consigneeCityName);
	$("#tranProperty").text(wayBill.tranProperty);
	$("#deliveryType").text(wayBill.deliveryType);
	$("#goodName").text(wayBill.goodName);
	$("#pieces").text(wayBill.pieces);
	$("#weight").text(wayBill.weight);
	$("#cubage").text(wayBill.cubage);
	$("#ladingStationName").text(wayBill.ladingStationName);
	$("#ladingStationPhone").text(wayBill.ladingStationPhone);
	$("#ladingStationFax").text(wayBill.ladingStationFax);
	$("#ladingStationAddr").text(wayBill.ladingStationAddr);
	$("#matchingLoginUserMobile").val(wayBill.matchingLoginUserMobile);
	relationWayBillNo(wayBill);
};
/**
 * 关联运单号
 * 
 * @param wayBill
 */
function relationWayBillNo(wayBill) {
	if (wayBill == null) {
		return;
	}
	var relationWayBillNoHtml = "<ul class='clearfix'>";
	if (wayBill.isPicPackage && wayBill.childWaybillNoList != null) {
		relationWayBillNoHtml = relationWayBillNoHtml
				+ "<li><a style='' href='#' onclick=clickRelationWayBillTrack('"
				+ wayBill.parentWaybillNo + "')>" + wayBill.parentWaybillNo
				+ " (母件)</a></li>";
		$.each(wayBill.childWaybillNoList, function(i, wayBillNo) {
			relationWayBillNoHtml = relationWayBillNoHtml
					+ "<li><a href='#' onclick=clickRelationWayBillTrack('"
					+ wayBillNo + "')>" + wayBillNo + " (子件)</a></li>";
		});
		relationWayBillNoHtml = relationWayBillNoHtml + "</ul>";
		$(".relationWayBillNo").html(relationWayBillNoHtml);
	}

}

function cleanWayBillInfo() {
	$("#consigneeCityName").text("");
	$("#tranProperty").text("");
	$("#deliveryType").text("");
	$("#goodName").text("");
	$("#pieces").text("");
	$("#weight").text("");
	$("#cubage").text("");
	$("#ladingStationName").text("");
	$("#ladingStationPhone").text("");
	$("#ladingStationFax").text("");
	$("#ladingStationAddr").text("");
	$(".relationWayBillNo").html("");
}
/**
 * 货物实时位置
 */
function gpsMapTrack() {
	if ($("#curBillNo").val() == "" || $("#curBillNo").val() == null) {
		alert("参数错误!")
		return;
	}
	var params = {
		waybillNo : $("#curBillNo").val()
	};
	var url = "https://pdaweb.deppon.com/pda-web/track/page.do";
	$.get(url, params, function(data) {
		var trackDiv = $("#good-track");
		trackDiv.css({
			display : "block",
			position : ' fixed',
			padding : '50px',
			overflow : 'hidden',
			top : 0,
			left : 0,
			bottom : 0,
			right : 0,
			background : 'rgba(0,0,0,0.5)',
			zIndex : 20000
		});
		trackDiv.show();
		trackDiv.html(data);
	}, "html");
}

// 轨迹地图

function initMap(wayBillNo, type) {

	$.ajax({ // 派件 type=0 派件 收件 type=1
		url : 'https://pdaweb.deppon.com/pda-web/track/position.do',
		type : 'POST',
		data : {
			type : type,
			waybillNo : wayBillNo
		},
		success : function(data) {
			mapInit(data, wayBillNo)
		},
		error : function() {
			// $("#mapBox").css({display:'none'}) //地图不展示
			return;
		}
	})
}

function mapInit(data, waybillNo) {
	var map = new BMap.Map("map", {
		enableMapClick : false
	});
	map.enableScrollWheelZoom();
	map.setMapStyle({
		style : 'googlelite'
	});

	map.clearOverlays();
	if (data.success == 0) {
		$("#mapBox").css({
			display : 'none'
		});
		return;
	}
	;
	var data = data.data;
	var start = new BMap.Point(data.courierLongitude, data.courierLatitude); // 快递员实时位置
	var end = new BMap.Point(data.goodsLongitude, data.goodsLatitude); // 顾客位置
	if (data.goodsLongitude > 3 || data.goodsLatitude > 3
			|| data.courierLongitude > 3 || data.courierLatitude > 3) {

	} else {
		$("#mapBox").css({
			display : 'none'
		})
		return;
	}
	var iconWidthStart = 76 * 0.5;
	var iconHeightStart = 78 * 0.5;
	var iconWidthEnd = 38 * 0.5;
	var iconHeightEnd = 46 * 0.5;
	var startIcon = new BMap.Icon(
			'/r/cms/cms/eco/images/track/orderDetailStart.png', new BMap.Size(
					iconWidthStart, iconHeightStart), {
				anchor : new BMap.Size(iconWidthStart / 2, iconHeightStart)
			});
	var endIcon = new BMap.Icon(
			'/r/cms/cms/eco/images/track/orderDetailEnd.png', new BMap.Size(
					iconWidthEnd, iconHeightEnd), {
				anchor : new BMap.Size(iconWidthEnd / 2, iconHeightEnd)
			});
	startIcon.imageSize = new BMap.Size(iconWidthStart, iconHeightStart);
	endIcon.imageSize = new BMap.Size(iconWidthEnd, iconHeightEnd);
	var startMarker = new BMap.Marker(start, {
		icon : startIcon
	});
	var endMarker = new BMap.Marker(end, {
		icon : endIcon
	});

	// map.clearOverlays();
	if (data.courierLongitude > 3)
		map.addOverlay(startMarker);
	if (data.goodsLongitude > 3)
		map.addOverlay(endMarker);

	setTimeout(function() {
		map.centerAndZoom(start, 11);
	}, 300);

	console.log(startMarker + " === " + endMarker);
	$("#map").css("height", $(document).height() / 4.5);
	$("#mapBox").css("height", $(document).height() / 4.5);
	$("#mapA").css("height", $(document).height() / 4.5);

	var s1, s2;

	map.addEventListener('mousedown', function() {
		s1 = new Date().getTime();
	}, false)

	map
			.addEventListener(
					'mouseup',
					function() {
						s2 = new Date().getTime();
						if (s2 - s1 < 300) {
							window.location.href = ' https://pdaweb.deppon.com/pda-web/track/page.do?waybillNo='
									+ waybillNo;
						}

					})

}
// 签收底单
function showExpressSignImg() {
	// 登录并且绑定手机号
	var matchingLoginUserMobile = $("#matchingLoginUserMobile").val();
	if (matchingLoginUserMobile == true || matchingLoginUserMobile == "true") {
		ajaxSignCounterfoil($("#curBillNo").val(), "", "")
	} else {
		$("#expressSignImgVerify").show();
	}
}
/**
 * 发送手机验证码
 */
function sendSignImgMobileCode() {
	var phone = $.trim($("#signImgMobile").val());
	if (phone == null || phone == undefined || phone == '') {
		alert("请输入手机号");
		return;
	}
	if (!reg.test(phone)) {
		alert("手机号码有误，请重新输入");
		return;
	}
	if (!par.test(phone)) {
		alert("请输入正确的手机号码");
		return;
	}
	$("#signImgMessage").attr("disabled", true);
	var countdown = 60;
	var setTime = setInterval(function() {
		countdown--;
		var textBut = countdown + "s";
		if (countdown <= 0) { // 当时间等于0时
			clearInterval(setTime); // 清理定时器
			textBut = "获取验证码"; // 修改按钮文字
			$("#signImgMessage").attr("disabled", false);
		}
		$("#signImgMessage").val(textBut);
	}, 1000);

	$.ajax({
		type : "post",
		async : false,
		url : DepponCfg.LoginUrl + "/phonerest/sendPhoneCode/phonetrack",
		data : JSON.stringify({
			"telephone" : phone
		}),
		dataType : "json",
		contentType : "application/json",
		success : function(data) {
			if (res.status == 'fail') {
				alert(res.message);
			}
		}
	});
}
// 手机号获取
function verifyExpressImgCode() {
	var signImgMobile = $("#signImgMobile").val();
	var signImgSecurityCode = $("#signImgSecurityCode").val();
	if (signImgMobile == null || signImgMobile == undefined
			|| signImgMobile == '') {
		alert("请输入手机号");
		return;
	}
	if (!reg.test(signImgMobile)) {
		alert("手机号码有误，请重新输入");
		return;
	}
	if (!par.test(signImgMobile)) {
		alert("请输入正确的手机号码");
		return;
	}
	if (signImgSecurityCode == null || signImgSecurityCode == '') {
		alert("请输入验证码");
		return;
	}
	ajaxSignCounterfoil($("#curBillNo").val(), signImgMobile,
			signImgSecurityCode);
}
// 获取签收图
function ajaxSignCounterfoil(billNo, phone, smsCode) {
	$("#signImg").html("");
	$(".signImgDiv").hide();
	$("#signReturnImg").html("");
	$(".signReturnImgDiv").hide();
	$.ajax({
		type : "POST",
		url : DepponCfg.LoginUrl + "/phonerest/track/signCounterfoil",
		timeout : 5000, // 超时时间设置，单位毫秒
		data : JSON.stringify({
			"billNo" : billNo,
			"phone" : phone,
			"smsCode" : smsCode
		}),
		dataType : "json",
		contentType : "application/json",
		beforeSend : function(XMLHttpRequest) {
		},
		success : function(data) {
			showSignCounterfoil(data);
		},
		error : function(xhr, textStatus) {
			alert("该运单暂无照片上传！");
		}
	});
}
function showSignCounterfoil(response) {
	if (response.status == "fail") {
		alert(response.message);
		return;
	}
	var signList = response.result.signList;
	var returnList = response.result.returnList;
	if ((signList == null || signList.length == 0)
			&& (returnList == null || returnList.length == 0)) {
		alert("该运单暂无照片上传！");
	}
	if (signList != null && signList.length != 0) {
		var signImgHtml = "";
		for (var i = 0; i < signList.length; i++) {
			signImgHtml = signImgHtml
					+ " <img id='expressImg'  style='padding-left:40px;width:40px;height:40px' modal='zoomImg' src='"
					+ signList[i] + "'>"
		}
		$("#signImg").html(signImgHtml);
		$(".signImgDiv").show();
	}
	if (returnList != null && returnList.length!=0) {
		var returnHtml = "";
		for (var i = 0; i < returnList.length; i++) {
			returnHtml = returnHtml
					+ " <img id='expressImg'  style='padding-left:40px;width:40px;height:40px' modal='zoomImg' src='"
					+ returnList[i] + "'>"
		}
		$("#signReturnImg").html(returnHtml);
		$(".signReturnImgDiv").show();
	}

};
$("img[modal='zoomImg']").live("click",function(){
	var boxImg=new BoxImg();
	boxImg.show(this);
});
// -----------------------------------phone
// track-------------------------------------------
var showError = $("#showError");
/**
 * 发送手机验证码
 */
function sendPhoneTrackVerifyCode() {
	showError.hide();
	var phone = $.trim($("#phone").val());
	if (phone == null || phone == undefined || phone == '') {
		showError.text("请输入手机号");
		showError.show();
		return;
	}
	if (!reg.test(phone)) {
		showError.text("手机号码有误，请重新输入");
		showError.show();
		return;
	}
	if (!par.test(phone)) {
		showError.text("请输入正确的手机号码");
		showError.show();
		return;
	}
	$("#messageBtn").attr("disabled", true);
	var countdown = 60;
	var setTime = setInterval(function() {
		countdown--;
		var textBut = countdown + "s";
		if (countdown <= 0) { // 当时间等于0时
			clearInterval(setTime); // 清理定时器
			textBut = "获取验证码"; // 修改按钮文字
			$("#messageBtn").attr("disabled", false);
		}
		$("#messageBtn").val(textBut);
	}, 1000);

	$.ajax({
		type : "post",
		async : false,
		url : DepponCfg.LoginUrl + "/phonerest/sendPhoneCode/phonetrack",
		data : JSON.stringify({
			"telephone" : phone
		}),
		dataType : "json",
		contentType : "application/json",
		success : function(data) {
			if (res.status == 'fail') {
				showError.text(res.message);
			}
		}
	});
}
function clickPhoneTrack() {
	$("#pageIndex").val(1);
	ajaxWayBillList();
}

function ajaxWayBillList() {
	showError.hide();
	$(".track-result").hide();
	$(".pageLable").hide();
	$(".introduce_info").hide();

	var phone = $.trim($("#phone").val());
	if (phone == '') {
		showError.text("请输入手机号");
		showError.show();
		return;
	}
	var verifyCode = $.trim($("#codeMsg").val());
	if (verifyCode == '') {
		showError.text("请输入短信验证码");
		showError.show();
		return;
	}
	$(".query-form").find("#trackBtn").val("查询中...");
	$(".query-form").find("#trackBtn").attr("disabled", "disabled");

	var pageIndex = $("#pageIndex").val();
	var type = $("#conType option:selected").val();
	$.ajax({
		type : "POST",
		url : DepponCfg.LoginUrl + "/phonerest/track/wayBillList",
		timeout : 7000, // 超时时间设置，单位毫秒
		data : JSON.stringify({
			"sysCode" : DepponCfg.sysCode,
			"phone" : phone,
			"verifyCode" : verifyCode,
			"type" : type,
			"pageIndex" : pageIndex
		}),
		dataType : "json",
		contentType : "application/json",
		beforeSend : function(XMLHttpRequest) {
		},
		success : function(data) {
			$(".query-form").find("#trackBtn").removeAttr("disabled");
			$(".query-form").find("#trackBtn").val("查询");
			buildWayBillListHtml(data);
		},
		error : function(xhr, textStatus) {
			$(".query-form").find("#trackBtn").removeAttr("disabled");
			$(".query-form").find("#trackBtn").val("查询");
			$("#showError").text("查询出错");
			$("#showError").show();
		}
	});
}
function buildWayBillListHtml(response) {
	if (response.status == "fail") {
		$("#showError").text(response.message);
		$("#showError").show();
		return;
	}
	if (response.result == null || response.result.rows == null) {
		$("#showError").text("暂时查不到该手机号的相关记录，请稍后再试！");
		$("#showError").show();
		return;
	}
	$(".track-result").show();
	$(".pageLable").show();
	$(".track-result").find("#receiveOrderForm").html("")
	$(".pageLable").html("");
	var wayBillList = response.result.rows;
	var wayBillListHtml = "<tr class='ts-table-bg'><td width='30'>序号</td><td width='85'>运单号</td>"
			+ "<td width='70'>发货人</td><td width='70'>收货人</td><td width='70'>货物名称</td><td width='110'>目的站</td>"
			+ "<td width='90'>操作</td></tr>";

	for (var i = 0; i < wayBillList.length; i++) {
		wayBillListHtml = wayBillListHtml
				+ "<tr class='ts-table-list'style='height: 44px; line-height: 44px;'>"
				+ "<td>"
				+ ((response.result.pageIndex - 1) * response.result.pageSize
						+ i + 1)
				+ "</td>"
				+ "<td class='tdcolorGray'>"
				+ wayBillList[i].billno
				+ "</td>"
				+ "<td class='length'>"
				+ wayBillList[i].sender
				+ "</td>"
				+ "<td class='length'>"
				+ wayBillList[i].consignee
				+ "</td>"
				+ "<td>"
				+ wayBillList[i].goodName
				+ "</td>"
				+ "<td class='length'>"
				+ wayBillList[i].consigncity
				+ "</td>"
				+ "<td class='length' style='width: 90px;'>"
				+ "	<a class='zhuizong' style='text-decoration: none; cursor: pointer;' "
				+ "   onclick=\"ajaxPhoneTrack('"
				+ wayBillList[i].billno
				+ "','"
				+ i
				+ "')\">货物轨迹</a></td>	</tr>"
				+ "<tr><td colspan='7'><div class='goods-state track-success-"
				+ i
				+ " clearfix' style='height:200px;display:none'>"
				+ "<div class='detl'><table width='680px'  border='0' cellspacing='0' cellpadding='0'"
				+ "	id='track_table_" + i + "'></table></div></div></td></tr>";
	}
	$(".track-result").find("#receiveOrderForm").html(wayBillListHtml);
	$(".pageLable").html(response.result.responseText);

}
$("#pagebtn").live("click", function() {
	var inval = $.trim($("#invalue").val());
	var total = $("#total").val();
	var pageIndex = $("#pageIndex").val();

	if (inval == "") {
		alert("请输入正确的页码");
		return false;
	}
	if (!forNumber.test(inval)) {
		alert("请输入正确的页码");
		return false;
	}
	if (inval < 1 || Number(inval) > Number(total)) {
		alert("请输入1到" + total + "的页码");
		return false;
	}
	$("#pageIndex").val(inval);
	ajaxWayBillList();
});

$("#to_next").live("click", function() {
	var pageIndex = parseInt($("#pageIndex").val()) + 1;
	$("#pageIndex").val(pageIndex);
	ajaxWayBillList();
});

$("#to_pre").live("click", function() {
	var pageIndex = parseInt($("#pageIndex").val()) - 1;
	$("#pageIndex").val(pageIndex);
	ajaxWayBillList();
});

function ajaxPhoneTrack(billNo, indexs) {
	$.ajax({
		type : "POST",
		url : DepponCfg.LoginUrl + "/phonerest/track/searchTrack",
		timeout : 7000, // 超时时间设置，单位毫秒
		data : JSON.stringify({
			"billNo" : billNo
		}),
		dataType : "json",
		contentType : "application/json",
		beforeSend : function(XMLHttpRequest) {
		},
		success : function(data) {
			buildPhoneTrackHtml(data, indexs);
		},
		error : function(xhr, textStatus) {
		}
	});
}

function buildPhoneTrackHtml(response, indexs) {
	if (response.status == "fail") {
		alert(response.message);
		return;
	}
	var tracks = response.result.tracks;
	if (tracks == null) {
		alert("暂时查不到该单号的轨迹，请稍后再试！");
		return;
	}
	$(".goods-state").hide();

	var initGpsMap = false;
	var trackHtml = "<tr class='tit'><td width='80' height='23'>&nbsp;</td>	<td width='80' align='center'>时间</td><td align='center'>货物状态</td></tr>";
	for (var i = 0; i < tracks.length; i++) {
		if (i == 0 && tracks[i].opreateType == 'SENT_SCAN') {
			trackHtml = trackHtml + "<tr> <td width='80' class='tCen'>"
					+ tracks[i].date + "</td><td width='80' class='tCen'>"
					+ tracks[i].time + "</td><td>" + tracks[i].content
					+ "</tr>";
			trackHtml = trackHtml
					+ "<tr><td colspan='3'><div id='mapBox' style='width: 680px;margin-top: 5px;' class='orderDetailMap' ><div id='map' style='width:680px'></div></div></td></tr>";
			initGpsMap = true;
		} else {
			trackHtml = trackHtml + "<tr>	<td width='80' class='tCen'>"
					+ tracks[i].date + "</td><td width='80' class='tCen'>"
					+ tracks[i].time + "</td><td>" + tracks[i].content
					+ "</td></tr>";
		}
	}
	$(".track-result #track_table_" + indexs + "").html(trackHtml);
	$(".track-success-" + indexs + "").show();
	/*
	 * if (initGpsMap) { initMap(response.result.billNo, 1);
	 * setInterval(function() { initMap(response.result.billNo, 1); }, 1000 *
	 * 60); }
	 */

}
