/**
 * @param curInputText 当前输入文本框
 * @param idText 放编码的文本框
 * @param showSucTips 是否显示匹配成功提示
 * @param showFailTips 是否显示匹配失败提示
 * @returns success:匹配成功; fail:匹配失败
 */
function validateArrivedCity(curInputText, idText, showSucTips, showFailTips){
	var inputCountyName = null;
	var msg = null;
	matchCities = new Array();
	matchCounties = new Array();
	var j = 0;	//城市用
	var x=0;	//区县用
	//获取城市和区县的名字
	var inputCityName = curInputText.val();
	if (inputCityName.indexOf("-") > 0) {
		if(inputCityName.split("-").length == 3){
			inputCountyName = inputCityName.split("-")[2];
			inputCityName = inputCityName.split("-")[1];
		} else if(inputCityName.split("-").length == 2){
			inputCityName = inputCityName.split("-")[1];
		}
	}else{
		if(curInputText.hasClass("s_city")){
			$("#dimCityQuery").hide();
			return 'fail';
		}
	}
	if(inputCountyName == null){
//		curInputText.val(curInputText.attr("ov"));
//		$("#dimCityQuery").hide();
//		curInputText.addClass("iGrays");
		//没有区县，获取城市编码
		if(!$("body").data("allExistCitys")){
			sendCitiesAjax();
		}
		var cities = $("body").data("allExistCitys").cities;
//		j = 0;
		$.each(cities, function(i, city){
			if(city.name.indexOf(inputCityName) == 0){
				matchCities[j++] = city;
			}
		});
		if(matchCities.length == 1){
			idText.val(matchCities[0].id);
			//地址为省份城市 将省份id保留
			if(idText[0].name=="leavedCityId"){
				idText.parent().children("#leavedProvinceId").val(matchCities[0].provinceId);
			}else{
				idText.parent().children("#arrivedProvinceId").val(matchCities[0].provinceId);
			}
			msg = "success";
			if(showSucTips){
				order_wrongMsg(curInputText, "自动匹配【"+matchCities[0].name+"】的价格时效。");
			}
		} else {
			idText.val("");
			msg = "fail";
			if(showFailTips){
				order_wrongMsg(curInputText, "【"+inputCityName + "】暂无到达网点");
			} else {
				wrongMsg(curInputText, "【"+inputCityName + "】暂无网点");
			}
		}
	} else {
		//判断区县是否存在网点
		if(!$("body").data("allCountys")){
			sendAllCountiesAjax();
		} 
		var countys = $("body").data("allCountys");
//		j = 0;
		$.each(countys,function(i,county){
			if(county.areaName.indexOf(inputCountyName) == 0){
				matchCounties[x++] = county;
			}
		});
		//如果匹配出一个区县，取该区县的值
		if(matchCounties.length == 1){
			idText.val(matchCounties[0].id);
			//地址为省市区  保留省市id
			if(idText[0].name=="leavedCityId"){
				idText.parent().children("#leavedProvinceId").val(matchCounties[0].provinceId);
				idText.parent().children("#leavedCityId").val(matchCounties[0].cityId);
				idText.parent().children("#leavedCountryId").val(matchCounties[0].id);
			}else{
				idText.parent().children("#arrivedProvinceId").val(matchCounties[0].provinceId);
				idText.parent().children("#arrivedCityId").val(matchCounties[0].cityId);
				idText.parent().children("#arrivedCountryId").val(matchCounties[0].id);
			}
		} else {
			//判断城市是否存在网点
			if(!$("body").data("allExistCitys")){
				sendCitiesAjax();
			}
			var cities = $("body").data("allExistCitys").cities;
			$.each(cities,function(i, city){
				if(city.name.indexOf(inputCityName) == 0){
					matchCities[j++] = city;
				}
			});
			//城市1个，没有区县，取城市的值
			if(matchCities.length == 1&& matchCounties.length==0){
				idText.val(matchCities[0].id);
				if(idText[0].name=="leavedCityId"){
					idText.parent().children("#leavedProvinceId").val(matchCities[0].provinceId);
				}else{
					idText.parent().children("#arrivedProvinceId").val(matchCities[0].provinceId);
				}
				msg = "success";
				if(showSucTips){
					order_wrongMsg(curInputText,"【"+inputCountyName+"】暂无到达网点，自动匹配【"+inputCityName+"】的价格时效。");
				}
			}else if(matchCities.length == 1 && matchCounties.length>1){
				matchCounties1=new Array();
				x=0;
				//多个区县的时候，取城市匹配的区县
				/*$.each(countys,function(i,county){
					if(county.areaName.indexOf(inputCountyName) > -1 && county.cityName.indexOf(inputCityName)> -1){
						matchCounties1[x++] = county;
					}
				});*/
				$.each(countys,function(i,county){
					if(county.areaName!=null&& county.areaName!="" && county.cityName!=null&& county.cityName!=""){
							if((county.areaName.indexOf(inputCountyName) > -1)&&(county.cityName.indexOf(inputCityName)> -1)){
								matchCounties1[x++] = county;
							}
					}
				});
				if(matchCounties1.length==1){
					idText.val(matchCounties1[0].id);
					//地址为省市区  保留省市id
					if(idText[0].name=="leavedCityId"){
						idText.parent().children("#leavedProvinceId").val(matchCounties1[0].provinceId);
						idText.parent().children("#leavedCityId").val(matchCounties1[0].cityId);
						idText.parent().children("#leavedCountryId").val(matchCounties1[0].id);
					}else{
						idText.parent().children("#arrivedProvinceId").val(matchCounties1[0].provinceId);
						idText.parent().children("#arrivedCityId").val(matchCounties1[0].cityId);
						idText.parent().children("#arrivedCountryId").val(matchCounties1[0].id);
					}
					msg="success";
				}else{
					idText.val("");
					msg = "fail";
					if(showFailTips){
						order_wrongMsg(curInputText, "【"+inputCityName + "】暂无到达网点");
					} else {
						wrongMsg(curInputText, "【"+inputCityName + "】暂无网点");
					}
				}					
			} else {
				idText.val("");
				msg = "fail";
				if(showFailTips){
					order_wrongMsg(curInputText, "【"+inputCityName + "】暂无到达网点");
				} else {
					wrongMsg(curInputText, "【"+inputCityName + "】暂无网点");
				}
			}
		}
	}
	//如果操作的是出发地址框，并且没有网点时，则没有网点时文本框不变红
	if(curInputText.hasClass("wrong")&&curInputText.hasClass("f_city")){
		$(".f_city").removeClass("wrong");
	}
	
	if(curInputText.hasClass("wrong")&&curInputText.hasClass("s_city")){
		$(".s_city").removeClass("wrong");
	}
	return msg;
}
//判断出发城市编码和到达城市编码是否为空
function isLeavedAndArrivedNull(){
	var leavedCityId = $("#leavedCityId").val();
	var arrivedCityId = $("#arrivedCityId").val();
	if(leavedCityId == "" || arrivedCityId == ""){
		return true;
	}
	return false;
}
//标示是否点击的是模糊查询结果
var isClickDimCity = false;
$("#dimCityQuery li").live("mouseenter", function(){
	isClickDimCity = true;
});
$("#dimCityQuery li").live("mouseleave", function(){
	isClickDimCity = false;
});
/**
 * 发送城市Ajax请求，获取有网点的城市列表

var matchCities = null;
var jiageCities = null;
var chooseCity = false;

jQuery.fn.extend({
	validateInputCityName : function() {
		jiageCities=null;
		if(/\w+/.test($(this).val())){
			return null;
		}
		var citymsg = null;
		var preTimeAllCities = null;
		var current = $(this);
		if($("body").data("CitysAll") != null && $("body").data("CitysAll") != undefined){
			preTimeAllCities = $("body").data("CitysAll").cities;
		}else if($("body").data("preTimeAllCities") != null && $("body").data("preTimeAllCities") != undefined){
			preTimeAllCities = $("body").data("preTimeAllCities").cities;
		}
		if (preTimeAllCities == null) {
			$.ajax({
				type : "post",
				// 查询所有城市
				url : '../common/queryCities.action',
				async : false,
				dataType : "json",
				success : function(data) {
					preTimeAllCities = data.cities;
					 $("body").data("preTimeAllCities",preTimeAllCities);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					//alert(textStatus);
				}
			});
		}

		matchCities = new Array();
		var j = 0;
		citymsg = null;
		chooseCity = false;
		var inputCityName = $.trim($(this).val());
		if (inputCityName.indexOf("-") > 0 && inputCityName.split("-").length >= 2) {
			inputCityNameBak = inputCityName.split("-")[0];
			inputCityName = inputCityName.split("-")[1];
			chooseCity = true;
		}
		$.each(preTimeAllCities, function(i, city) {
			var cityName = city.name;
			if (cityName.indexOf(inputCityName) == 0) {
				// alert(city.name+"true");
				matchCities[j] = city;
				j = j + 1;
			}
		});
		if(matchCities.length == 1){
			if(current.attr("id")=='sdeptProCity'){
				return citymsg;
			}
//			jiageCities = null;
			var cityId = matchCities[0].id;
			var url = "../common/queryOldCityByNewId.action";
			var param = cityId;
//			if(current.attr("name") == "arrivedCity" || current.attr("id") == "caddrProCity"){
//				url = "../common/validatePreTimeArrivedCity.action";
//				param = cityName;
//			}
			
			//查询该城市对应的不同价格时效的旧城市ID
			$.ajax({
				type : "post",
				url : url,
				async : false,
				data:{"cityId" : param},
				dataType : "json",
				success : function(data) {
					var cityNm = null;
					var countyNm = null;
					var flag = true;
					jiageCities = data.jiageCities;
					if(current.val().indexOf("-")>0 && current.val().split("-").length>=2){
						var data = new Array();
						data = current.val().split("-");
						cityNm = data[1];
						if(data.length>2){
							countyNm = data[2];
						}
					}else{
						countyNm = current.val();
					}
					if(countyNm!=null)
					{
						$.each(jiageCities,function(i,oldCity){
							if(countyNm=='浦东新区'&&oldCity.name=='上海浦东'){
								jiageCities[0] = oldCity;
								flag = false;
							}
							else if(countyNm=='武昌区'&&oldCity.name=='武汉武昌'){
								jiageCities[0] = oldCity;
								flag = false;
							}
							else if(countyNm.indexOf(oldCity.name)>-1){
								jiageCities[0] = oldCity;
								flag = false;
							}
						});
					}
					if(flag){
						$.each(jiageCities,function(i,oldCity){
							if(cityNm.indexOf(oldCity.name)>-1){
								jiageCities[0] = oldCity;
								return;
							}
						});
						
						var countys = $("body").data("allExistCountys");
						if(countys==null||typeof countys==undefined){
							sendCountiesAjax();
							countys = $("body").data("allExistCountys");
						}
						var isExist = false;
						//判断当前区县是否存在到达网点的区县
						$.each(countys,function(i,c){
							if(c.areaName.indexOf(countyNm)>-1){
								isExist = true;
							}
						});
						//若通过城市名能查出价格时效，区县存在并且区县没有网点时
						if(jiageCities!=null&&!isExist&&countyNm!=null&&current.attr("name")!="leavedCity"&&current.attr("name")!="arrivedCity"){
							order_wrongMsg(current,"【"+countyNm+"】暂无到达网点，自动匹配【"+cityNm+"】的价格时效。");
						}
					}
					
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("系统内部错误，请稍后再试");
				}
			});
		}else{
			
//			if(!/\w/.test(inputCityName) && inputCityNameBak!="pass"){
//				citymsg = "请输入国家标准地级城市名称";
//			}
		}
		
		return citymsg;
	}
});
 */
/*$("#chooseMultCityId").live("click",function(){
	var choosedCity = $("input[name=multcityId]:checked").val();
	if(choosedCity == "" || choosedCity == null){
		$("#notChoosed").remove();
		$("#chooseMultCityId").after("<div id='notChoosed' style='color:red;font-size:12px;'>必需选择一个才能查询价格时效</div>");
		return;
	}
	$("#leavedCityId").val(choosedCity);
	$("#multCities").hide();
	$(".filebg").hide();
	if($("#arrivedCityId").val() != null && $("#leavedCityId").val() != null)
	{
		sendAjax();
	}
});

$("#chooseMultCity").live("click",function(){
	var choosedCity = $("input[name=multCity]:checked").val();
	if(choosedCity == "" || choosedCity == null){
		$("#notChoosed").remove();
		$("#chooseMultCity").after("<div id='notChoosed' style='color:red;font-size:12px;'>必需选择一个才能查询价格时效</div>");
		return;
	}
	$("input[name='leavedCityId']").val(choosedCity);
	$("#multCities").hide();
	$(".filebg").hide();
	if($("input[name='leavedCityId']").val()!="" && $("input[name='arrivedCityId']").val()!=""){
		$(".singleQuery").submit();
		$("input[name='leavedCityId']").val("");
		$("input[name='arrivedCityId']").val("");
	}
});
//弹出层
function showMultCities() {
	popPosition("#multCities");
	var h = $(document).height();
	if($(".provinceCity:visible").size() > 0){
		$(".provinceCity").hide();
	}
	$(".filebg").css({"height":h}).show();
	$("#multCities").show();
	//关闭
	$(".popupClo,.postBack").click(function() {
//			$("#hallSubmit").fadeOut();   fadeOut()渐隐方法浏览器不兼容可能会出现黑屏
		$("#multCities").hide();
		$(".filebg").hide();
	});
}
//弹出层定位
function popPosition(dom) {
	var width = $(dom).width();
	var height = $(dom).height();
	var css = {
		"width" : width + "px",
		"left" : "50%",
		"marginLeft" : -width / 2 + "px",
		"top" : "60%",
		"marginTop" : -height / 2 + "px"
	};
	$(dom).css(css);
	$(".filebg").css({"height":h}).show();
}

//小图按钮长一点的
$(".tosnsmall_btnl").live("mousemove",
	function(){$(this).addClass("tosnsmll_mouseover");}
);
$(".tosnsmall_btnl").live("mouseout",
	function(){$(this).removeClass("tosnsmll_mouseover");}
);
$(".tosnsmall_btnl").live("mousedown",function(){
	$(this).addClass("tosnsmll_mousedown");
	$(this).mouseup(function(){
		$(this).removeClass("tosnsmll_mousedown");		 
	 });
});
*/