/**
 * Created by zhengchuanjiao on 2016/10/12. update by liqingyun 2016/11/30
 */
/**
 * 城市控件数据
 */
// TODO
var CityControlDate = function(options) {
	var _this = this;
	_this.data = {
		HotCity : null,// 存储热门城市
		Nation : null,// 存储国家
		SortNaton : null,// 存储分类后的国家
		CProvince : null,// 存储中国的省份
		Province : null,// 存储的省份
		Hmt : null,// 港澳台
		City : null,// 存储城市
		County : null,// 存储区县
		Town : null
	// 存储乡镇街道
	};
	_this.getCityControlDate = {
		sendAjax : function(url, data) {
			var response = "";
			$.ajax({
				type : "get",
				url : url,
				async : false,
				data : data,
				dataType : "json",
				success : function(data) {
					if (data.status == "success") {
						response = data.result;
					} else {
						//alert("城市数据初始化失败");
					}
				},
				error : function(xhr, textStatus) {
					//alert("sendAjax error url:" + url);
				}
			});
			return response;
		},
		/**
		 * 获取热门城市信息
		 */
		getHotCity : function() {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryHotCitys", {
				"sysCode" : DepponCfg.sysCode
			});
			_this.data.HotCity = data;
			return this;
		},
		/**
		 * 获取国家数据
		 */
		getNation : function() {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryNations", "");
			_this.data.Nation = data;
			return this;
		},
		/**
		 * 获取港澳台数据
		 */
		getHmt : function() {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryHMT", "");
			_this.data.Hmt = data;
			return this;
		},
		/**
		 * 获取省份数据
		 * 
		 * @param nationCode
		 * @param nationName
		 */
		getProvince : function(nationCode, nationName) {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryProviecn/" + nationCode, "");
			_this.data.Province = data;
			if (nationCode == "100000") {
				_this.data.CProvince = data;
			}
			return this;
		},
		/**
		 * 获取指定省份下的城市
		 */
		getCity : function(provinceCode, provinceName) {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryCity/" + provinceCode, "");
			_this.data.City = data;
			return this;
		},
		/**
		 * 热门城市-获取指定城市下的区县
		 */
		getHotCounty : function(nationCode, provinceCode, cityCode,
				provinceName, cityName) {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryCounty/" + cityCode, "");
			_this.data.County = data;
			return this;
		},
		/**
		 * 获取指定城市下的区县
		 */
		getCounty : function(cityCode, cityName) {
			var data = _this.getCityControlDate.sendAjax(DepponCfg.LoginUrl
					+ "/phonerest/citycontrol/queryCounty/" + cityCode, "");
			_this.data.County = data;
			return this;
		},
		/**
		 * 获取指定区县下的城镇
		 */
		getTown : function(countyCode, countyName) {
			var data = _this.getCityControlDate.sendAjax(
					'../citycontrol/queryTown', {
						"countyCode" : countyCode
					});
			_this.data.Town = data;
			return this;
		}
	};
	// 初始化热门城市
	_this.getCityControlDate.getHotCity();
	// 初始化国家
	_this.getCityControlDate.getNation();
	// 初始化省份[包含中国省份和港澳台]
	_this.getCityControlDate.getProvince("100000", "中国");
	// 初始化港澳台
	_this.getCityControlDate.getHmt();
};
/**
 * 城市控件
 */
// TODO
var CityControl = function(options) {
	var _this = this;
	/** 默认配置 */
	var dpcity_setting = {
		target : false,
		citycontrol : false,
		panel : "mainland_China", // 标记当前操作在大陆还是港澳台或者国际
		panels : {
			cn : "mainland_China",
			hmt : "HMT",
			en : "international"
		},
		panels_tabs : {
			hotCity : "hotCity",
			province : "province",
			city : "city",
			county : "county",
			town : "town"
		},
		/* 离开时的操作 即 onblur 事件 */
		callback : function(selected) {
		}
	};

	_this.opt = $.extend(dpcity_setting, options);
	// 城市控件id对象 为目标对象[name]+[_citycontrol]
	_this.opt.citycontrol = _this.opt.target.attr("id") + "_DPcityControl";
	/**
	 * 城市控件初始化入口
	 */
	_this.intiCityControl = function() {
		$(".cityControl").css({
			"display" : "none"
		});
		// 已经初始化过城市控件，直接展示
		if ($("." + _this.opt.citycontrol).attr("id")) {
			$("." + _this.opt.citycontrol).show();
			return false;
		}
		// 是否启用模糊查询
		if (_this.opt.open_key_input) {
			/** 绑定模糊匹配功能 */
			_this.opt.target.keyup(function(event) {
				$("." + _this.opt.citycontrol).hide();
				/** 实例化模糊匹配控件 */
				var key_input = new _this.Key_input({
					target : _this.opt.target,
					need_area : true,
					click : function(event) {
						var back_data = create_back_data($(this));
						/* 选择的是城市 -> 选择区县选项卡 */
						if (!back_data.countyCode) {
							$("." + _this.opt.citycontrol).show();
							_this.opt.ds.getCityControlDate.getCounty(
									back_data.cityCode, back_data.cityName);
							_this.viewCounty();
						} else {
							var obj = new Object();
							obj.currentTarget = $(this);
							_this.opt.callback(obj);
						}
						_this.opt.target.removeClass("iGrays");
						$("#dimCityQuery").hide();
						event.stopPropagation(); // 阻止事件冒泡
					}
				});
				var lastKeyPressCode = event.keyCode;// 获取键盘值
				switch (lastKeyPressCode) {
				case 40: // 方向键下
					key_input.keydown();
					return false;
				case 38: // 方向键上
					key_input.keyup();
					return false;
				case 13: // 确定键
					key_input.keyenter();
					return false;
				}
				/* 设置查询关键字 */
				key_input.setKey(_this.opt.target.val());
				event.stopPropagation();
				return false;
			});
		}
		// 初始化css和城市数据
		var init = new _this.Init();
		init.initDiv();
		init.initCss();
		// 填充html数据
		_this.viewAllHotCity();
		_this.viewProvince();
		/**
		 * viewHMT()，viewNation()没必要初始的时候填充数据，后期panels_tabs如果要求动态，可优化为点击时候在填充数据
		 */
		_this.viewHMT();
		_this.viewNation();
	};

	_this.Init = function() {
		this.initDiv = function() {
			var cityControlHtml = "<div id='"
					+ _this.opt.citycontrol
					+ "'  class='"
					+ _this.opt.citycontrol
					+ " "
					+ _this.opt.cityClass
					+ " cityControl'><ul class='classify'><li><a class='current' name='mainland_China'>大陆</a></li><li><a name='HMT'>港澳台</a></li><li><a name='international'>国际</a></li></ul><div class='panel mainland_China'><ul class='region-tab'><li class='current hotCityTab init' name='hotCity'>热门城市</li><li class='provinceTab' name='province'>省份</li><li class='cityTab' name='city'>城市</li><li class='countyTab' name='county'>区县</li><li class='townTab' name='town'>城镇</li></ul>"
					+ "<ul class='addressDetail hotCity'></ul><ul class='addressDetail province'></ul><ul class='addressDetail city'></ul><ul class='addressDetail county'></ul><ul class='addressDetail town'></ul></div>"
					+ "<div class='panel HMT'><ul class='region-tab'><li class='current provinceTab init' name='province'>省份</li><li class='cityTab' name='city'>城市</li><li class='countyTab' name='country'>区县</li></ul><ul class='addressDetail province'></ul><ul class='addressDetail city'></ul><ul class='addressDetail county'></ul></div>"
					+ "<div class='panel international'><ul class='region-tab'><li class='current nationTab init' name='nation'>国家</li><li class='provinceTab' name='province'>省份</li><li class='cityTab' name='city'>城市</li><li class='countyTab' name='county'>区县</li></ul><ul class='addressDetail nation'><div><ul class='nationGroup'></ul></div><div class='nation_group'></div></ul><ul class='addressDetail province'></ul><ul class='addressDetail city'></ul><ul class='addressDetail county'></ul></div></div>";
			if (_this.opt.cityClass) {
				$(".appendcityCortorl").append(cityControlHtml);
			} else {
				$("body").append(cityControlHtml);
			}
		};
		this.initCss = function() {
			var left = _this.opt.target.offset().left;
			var top = _this.opt.target.offset().top;
			var height = _this.opt.target.height();
			$("." + _this.opt.citycontrol).css({
				"top" : (top + height) + "px",
				"left" : left + "px",
				"display" : "block",
				"z-index" : "100"
			});
			_this.opt.panel = "mainland_China";
			$("." + _this.opt.citycontrol + " .classify li a").removeClass(
					"current");
			$("." + _this.opt.citycontrol + " .classify li").find(
					"a[name=mainland_China]").addClass("current");
			$("." + _this.opt.citycontrol + " .panel").hide();
			$("." + _this.opt.citycontrol + " .mainland_China").show();
			$("." + _this.opt.citycontrol + " .region-tab li").removeClass(
					"current");
			$("." + _this.opt.citycontrol + " .region-tab .init").addClass(
					"current");
			$("." + _this.opt.citycontrol + " .addressDetail").hide();
			$("." + _this.opt.citycontrol + " .HMT .province").show();
			$("." + _this.opt.citycontrol).bind("click", function(event) {
				event.stopPropagation();
			});
			$("." + _this.opt.citycontrol + " .classify li a").bind(
					"click",
					function() {
						var name = $(this).attr("name");
						_this.opt.panel = name;
						$("." + _this.opt.citycontrol + " .classify li a")
								.removeClass("current");
						$(this).addClass("current");
						$("." + _this.opt.citycontrol + " .panel").hide();
						$("." + _this.opt.citycontrol + " ." + name).show();
					});

			$("." + _this.opt.citycontrol + " .region-tab li").bind(
					"click",
					function() {
						var name = $(this).attr("name");
						var index = $(
								"." + _this.opt.citycontrol + " ."
										+ _this.opt.panel
										+ " .region-tab .current").index();
						if ((_this.opt.panel == "mainland_China"
								&& name == "province" || name == "hotCity")
								|| $(this).index() < index) {
							$(
									"." + _this.opt.citycontrol + " ."
											+ _this.opt.panel
											+ " .region-tab li").removeClass(
									"current");
							$(this).addClass("current");
							$(
									"." + _this.opt.citycontrol + " ."
											+ _this.opt.panel
											+ " .addressDetail").hide();
							$(
									"." + _this.opt.citycontrol + " ."
											+ _this.opt.panel + " ." + name)
									.show();
						}
					});
			$("html").bind("click", function() {
				$("." + _this.opt.citycontrol).hide();
			});
		};
	};

	/**
	 * 填充城市控件数据
	 */
	/**
	 * 显示热门城市
	 */
	_this.viewAllHotCity = function() {
		$("." + _this.opt.citycontrol + " .hotCity").empty();
		/*
		 * if (_this.opt.ds.data.HotCity == null) { alert("热门城市数据未初始化"); return; }
		 */
		$.each(_this.opt.ds.data.HotCity, function(i, city) {
			$("." + _this.opt.citycontrol + " .hotCity").append(
					"<li><a title='" + city.cityName + "' nationCode='"
							+ city.nationCode + "' nationName='"
							+ city.nationName + "'  provinceCode='"
							+ city.provinceCode + "' provinceName='"
							+ city.provinceName + "' cityCode='"
							+ city.cityCode + "'  cityName='" + city.cityName
							+ "' >" + city.cityName + "</a></li>");
		});
		$("." + _this.opt.citycontrol + " .hotCity").show();

		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
						+ _this.opt.panels_tabs.hotCity + " li a").bind(
				"click",
				function() {
					_this.opt.ds.getCityControlDate.getHotCounty($(this).attr(
							'nationCode'), $(this).attr('provinceCode'),
							$(this).attr('cityCode'), $(this).attr(
									'provinceName'), $(this).attr('cityName'));
					_this.viewCounty();
				});
		return false;
	};
	/**
	 * 显示省份
	 */
	_this.viewProvince = function() {
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .province")
				.empty();
		// 参数1：省份信息，参数2：每组分组个数
		// 区分中国和国际
		var Province = null;
		if (_this.opt.panel == _this.opt.panels.cn) {
			Province = group(_this.opt.ds.data.CProvince, 8);
		} else {
			Province = group(_this.opt.ds.data.Province, 8);
		}
		for ( var p in Province) {
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel
							+ " .province").append(
					"<div class='group " + p + "\'><label>" + p
							+ "</label><ul></ul></div>");
			for (var i = 0; i < Province[p].length; i++) {
				var p_name = Province[p][i].provinceName;
				if (_this.opt.panel == _this.opt.panels.cn) {
					if (Province[p][i].provinceName == '内蒙古自治区') {
						p_name = '内蒙古';
					} else if (Province[p][i].provinceName == '黑龙江省') {
						p_name = '黑龙江';
					} else {
						p_name = Province[p][i].provinceName.substr(0, 2);
					}
					if (Province[p][i].provinceCode != '810000'
							&& Province[p][i].provinceCode != '820000'
							&& Province[p][i].provinceCode != '710000') {
						$(
								"." + _this.opt.citycontrol + " ."
										+ _this.opt.panel + " ." + p + " ul")
								.append(
										"<li><a title='"
												+ Province[p][i].provinceName
												+ "' nationCode='"
												+ Province[p][i].nationCode
												+ "' nationName='"
												+ Province[p][i].nationName
												+ "' provinceCode='"
												+ Province[p][i].provinceCode
												+ "'  provinceName='"
												+ Province[p][i].provinceName
												+ "' >" + p_name + "</a></li>");
					}
				} else {
					$(
							"." + _this.opt.citycontrol + " ."
									+ _this.opt.panel + " ." + p + " ul")
							.append(
									"<li><a title='" + Province[p][i].name
											+ "' nationCode='"
											+ Province[p][i].nationCode
											+ "' nationName='"
											+ Province[p][i].nationName
											+ "' provinceCode='"
											+ Province[p][i].provinceCode
											+ "'  provinceName='"
											+ Province[p][i].provinceName
											+ "'>" + p_name + "</a></li>");
				}
			}
		}
		if (_this.opt.panel != _this.opt.panels.cn) {
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel
							+ " .addressDetail").hide();
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel
							+ " .province").show();
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel
							+ " .region-tab li").removeClass("current");
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel
							+ " .provinceTab").addClass("current");
		}

		if (_this.opt.panel == _this.opt.panels.cn
				&& !_this.opt.panel_tab_display.cn.city) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.province + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else if (_this.opt.panel == _this.opt.panels.hmt
				&& !_this.opt.panel_tab_display.hmt.city) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.province + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else if (_this.opt.panel == _this.opt.panels.en
				&& !_this.opt.panel_tab_display.en.city) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.province + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else {
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.province + " li a").bind(
					"click",
					function() {
						_this.opt.ds.getCityControlDate.getCity($(this).attr(
								'provinceCode'), $(this).attr('provinceName'));
						_this.viewCity();
					});
		}
		return false;
	};
	/**
	 * 显示国家
	 */
	_this.viewNation = function() {
		$("." + _this.opt.citycontrol + " .nationGroup").empty();
		_this.opt.ds.data.SortNaton = group2(_this.opt.ds.data.Nation, 9);
		var i = 0;
		for ( var n in _this.opt.ds.data.SortNaton) {
			if (i == 0) {
				$("." + _this.opt.citycontrol + " .nationGroup")
						.append(
								"<li><a  class='current " + n + "\'>" + n
										+ "</a></li>");
			} else {
				$("." + _this.opt.citycontrol + " .nationGroup").append(
						"<li><a class=\'" + n + "\'>" + n + "</a></li>");
			}
			i++;
		}
		$("." + _this.opt.citycontrol + " .nation .nationGroup li a").bind(
				"click", function() {
					_this.chooseNation($(this).text());
				});
		var title = $(
				"." + _this.opt.citycontrol + " .nationGroup li a.current")
				.text();
		_this.chooseNation(title);
		return false;
	};
	/**
	 * 根据字母选择国家
	 */
	_this.chooseNation = function(title) {
		$("." + _this.opt.citycontrol + " .nationGroup li a").removeClass(
				"current");
		$("." + title).addClass("current");
		var nation = _this.opt.ds.data.SortNaton[title];
		$("." + _this.opt.citycontrol + " .nation_group").empty();
		for ( var n in nation) {
			$("." + _this.opt.citycontrol + " .nation_group").append(
					"<div class='group " + n + "\'><label>" + n
							+ "</label><ul></ul></div>");
			for (var i = 0; i < nation[n].length; i++) {
				var n_name = nation[n][i].nationName;
				if (n_name.length > 4) {
					n_name = n_name.substr(0, 4);
				}
				$("." + _this.opt.citycontrol + " ." + n + " ul").append(
						"<li><a  title='" + nation[n][i].nationName
								+ "'  nationCode='" + nation[n][i].nationCode
								+ "'  nationName= '" + nation[n][i].nationName
								+ "'>" + n_name + "</a></li>");
			}
		}
		$("." + _this.opt.citycontrol + " .nation").show();
		$("." + _this.opt.citycontrol + " .nation_group .group ul li a").bind(
				"click",
				function() {
					_this.opt.ds.getCityControlDate.getProvince($(this).attr(
							'nationCode'), $(this).attr('nationName'));
					_this.viewProvince();
				});
		return false;
	};
	/**
	 * 显示港澳台省份
	 */
	_this.viewHMT = function() {
		$("." + _this.opt.citycontrol + " .HMT .province").empty();
		var cProvince = _this.opt.ds.data.Hmt;
		for (var i = 0; i < cProvince.length; i++) {
			// 香港、澳门省份、台湾
			if (cProvince[i].provinceCode == '810000'
					|| cProvince[i].provinceCode == '820000'
					|| cProvince[i].provinceCode == '710000')
				$("." + _this.opt.citycontrol + " .HMT .province").append(
						"<li><a title='" + cProvince[i].provinceName
								+ "' nationCode='" + cProvince[i].nationCode
								+ "' nationName='" + cProvince[i].nationName
								+ "' provinceCode='"
								+ cProvince[i].provinceCode
								+ "' provinceName='"
								+ cProvince[i].provinceName + "' >"
								+ cProvince[i].provinceName + "</a></li>");
		}

		$("." + _this.opt.citycontrol + " .HMT .province li a").bind(
				"click",
				function() {
					_this.opt.ds.getCityControlDate.getCity($(this).attr(
							'provinceCode'), $(this).attr('provinceName'));
					_this.viewCity();
				});
		return false;
	};
	/**
	 * 显示指定省份下的城市
	 */
	_this.viewCity = function() {
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .city")
				.empty();
		if (_this.opt.ds.data.City == null) {
			alert("城市数据为空");
			return false;
		}
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .addressDetail").hide();
		$.each(_this.opt.ds.data.City, function(i, city) {
			var cityName = city.cityName.substr(0, 4);
			$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .city")
					.append(
							"<li><a title='" + city.cityName + "' nationCode='"
									+ city.nationCode + "' nationName='"
									+ city.nationName + "'  provinceCode='"
									+ city.provinceCode + "' provinceName='"
									+ city.provinceName + "' cityCode='"
									+ city.cityCode + "'  cityName='"
									+ city.cityName + "'>" + cityName
									+ "</a></li>");
		});
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .city")
				.show();
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .region-tab li").removeClass("current");
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .cityTab")
				.addClass("current");
		/**
		 * 根据配置级别判断，如果为true继续跳转下一级显示，否则获取选中城市数据
		 */
		if (_this.opt.panel == _this.opt.panels.cn
				&& !_this.opt.panel_tab_display.cn.county) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.city + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else if (_this.opt.panel == _this.opt.panels.hmt
				&& !_this.opt.panel_tab_display.cn.county) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.city + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else if (_this.opt.panel == _this.opt.panels.en
				&& !_this.opt.panel_tab_display.cn.county) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.city + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else {
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.city + " li a").bind(
					"click",
					function() {
						_this.opt.ds.getCityControlDate.getCounty($(this).attr(
								'cityCode'), $(this).attr('cityName'));
						_this.viewCounty();
					});
		}
		return false;
	};

	/**
	 * 显示指定城市下的区县
	 */
	_this.viewCounty = function() {
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .county")
				.empty();
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .addressDetail").hide();
		$.each(_this.opt.ds.data.County,
				function(i, county) {
					var countyName = county.countyName.substr(0, 4);
					$(
							"." + _this.opt.citycontrol + " ."
									+ _this.opt.panel + " .county").append(
							"<li><a title='" + county.countyName
									+ "' nationCode='" + county.nationCode
									+ "' nationName='" + county.nationName
									+ "'  provinceCode='" + county.provinceCode
									+ "' provinceName='" + county.provinceName
									+ "' cityCode='" + county.cityCode
									+ "'  cityName='" + county.cityName
									+ "' countyCode='" + county.countyCode
									+ "' countyName='" + county.countyName
									+ "'>" + countyName + "</a></li>");
				});
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .county")
				.show();
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .region-tab li").removeClass("current");
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .countyTab")
				.addClass("current");

		if (_this.opt.panel == _this.opt.panels.cn
				&& !_this.opt.panel_tab_display.cn.town) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.county + " li a").unbind(
					"click").bind("click", _this.opt.callback);

		} else if (_this.opt.panel == _this.opt.panels.hmt
				&& !_this.opt.panel_tab_display.hmt.town) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.county + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else if (_this.opt.panel == _this.opt.panels.en
				&& !_this.opt.panel_tab_display.en.town) {
			/* 点击事件 */
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.county + " li a").unbind(
					"click").bind("click", _this.opt.callback);
		} else {
			$(
					"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
							+ _this.opt.panels_tabs.county + " li a").bind(
					"click",
					function() {
						_this.opt.ds.getCityControlDate.getTown($(this).attr(
								'countyCode'), $(this).attr('countyName'));
						_this.viewTown();
					});
		}
		return false;
	};
	/**
	 * 显示指定区县下的城镇
	 */
	_this.viewTown = function() {
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .town")
				.empty();
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .addressDetail").hide();
		$.each(_this.opt.ds.data.Town, function(i, town) {
			var townName = town.townName.substr(0, 4);
			$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .town")
					.append(
							"<li><a title='" + town.townName + "' nationCode='"
									+ town.nationCode + "' nationName='"
									+ town.nationName + "'  provinceCode='"
									+ town.provinceCode + "' provinceName='"
									+ town.provinceName + "' cityCode='"
									+ town.cityCode + "'  cityName='"
									+ town.cityName + "' countyCode='"
									+ town.countyCode + "' countyName='"
									+ town.countyName + "' townCode='"
									+ town.townCode + "' townName= '"
									+ town.townName + "' >" + townName
									+ "</a></li>");
		});
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .town")
				.show();
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel
						+ " .region-tab li").removeClass("current");
		$("." + _this.opt.citycontrol + " ." + _this.opt.panel + " .townTab")
				.addClass("current");

		/* 点击事件 */
		$(
				"." + _this.opt.citycontrol + " ." + _this.opt.panel + " ."
						+ _this.opt.panels_tabs.town + " li a").unbind("click")
				.bind("click", _this.opt.callback);

		return false;
	};

	/**
	 * 模糊匹配
	 * 
	 */
	// TODO
	_this.Key_input = function(opt) {
		var _default = {
			inhtml : [],
			show_size : 10,
			click : function() {
				alert("im key input click:" + $(this).html());
			},
			key : '',/* 查询的key */
			before_key : '',
			top : function() {
				return this.target.offset().top + this.target.height() + 5;
			},
			left : function() {
				return this.target.offset().left - 2;
			},
			height : function() {
				return this.target.height();
			},
			page : 1,
			need_area : true,/* 是否需要支持区县,默认支持 */
			target : {}, /* 目标对象 */
			/* 清空 */
			clear : function() {
				this.page = 1;
				this.inhtml = [];
			},
			/* 把 inhtml中的li的html拼接成完整需要显示的html代码 */
			inhtmler : function() {
				if (!this.inhtml || this.inhtml.length < 1) {
					$("#dimCityQuery ul").html(
							"<li class='none'>对不起,没有找到该城市</li>");
					$("#dimCityQuery .page").html('');
				} else {/* 把 inhtml 中的字符并接成html ,加入到面板结果中 */
					var _html = '';
					for (var i = 0; i < this.show_size; i++) {
						if (this.inhtml[i])
							_html += this.inhtml[i];
					}
					$("#dimCityQuery ul").html(_html).find("li:first")
							.addClass("current");
				}
			},
			/* 初始化 */
			init_div : function() {
				if (!$("#dimCityQuery").attr("id")) {
					$("body")
							.append(
									"<div id='dimCityQuery'><ul></ul><span class='page'></span></div>");
					$("#dimCityQuery").css("top", this.top()).css("left",
							this.left()).show();
				} else
					$("#dimCityQuery").css("top", this.top()).css("left",
							this.left()).show();

				this.inhtmler();
				/* 鼠标移上效果 */
				$("#dimCityQuery li").hover(
						function() {
							$(this).addClass("current").siblings().removeClass(
									"current");
						});
				/* 点击事件 */
				$("#dimCityQuery li a").unbind("click").bind("click",
						this.click);
				$("html").bind("click", function() {
					$("#dimCityQuery").hide();
					if (_this.opt.target.length > 0) {
						var imputKey = _this.opt.target.val();
						var toarr = imputKey.split("-");
						if (toarr.length < 2 || toarr.length > 3) {
							_this.opt.target.val("");
						}
					}
				});
				/* return $("#dimCityQuery"); */
			},
			/**/
			fill : function(dataArr, type) {
				/* 填充数据; */
				for ( var i in dataArr) {
					var obj = dataArr[i];
					var li = this.creat_li(obj, type);
					if (li) {
						li = this.highlight(li, this.key);
						this.inhtml.push(li);
					}
				}
			},
			highlight : function(str, key) {
				/* 高亮搜索关键字 */
				// modify by mujun 改进高亮算法
				var reg = new RegExp("(" + key + ")", "i");
				return str.replace(/<a.*>(.*?)<\/a>/, function() {
					var args = arguments;
					return args[0].replace(args[1], args[1].replace(reg,
							"<span style='color:red'>$1</span>"));
				});
			},
			fill_area : function() {
				/* 填充区县的搜索结果 */

				this.fill(_this.opt.ds.data.County,
						_this.opt.panels_tabs.county);
			},
			fill_city : function() {
				/* 填充城市的搜索结果 */
				this.fill(_this.opt.ds.data.City, _this.opt.panels_tabs.city);
			},
			creat_li : function(obj, type) {
				/* 根据搜索结果生成li的html代码 */
				/* 简拼 */
				var li = "";
				if (type == _this.opt.panels_tabs.county) {/* 区县 */
					if (obj.matchType == 1 || obj.matchType == 3) {
						li = "<li><a class='allcityClass' href='javascript:' nationCode='"
								+ obj.nationCode
								+ "' nationName='"
								+ obj.nationName
								+ "'   provinceCode='"
								+ obj.provinceCode
								+ "' provinceName='"
								+ obj.provinceName
								+ "' cityCode='"
								+ obj.cityCode
								+ "' countyCode='"
								+ obj.countyCode
								+ "' cityName='"
								+ obj.cityName
								+ "' countyName='"
								+ obj.countyName
								+ "'>"
								+ obj.cityName
								+ "-"
								+ obj.countyName
								+ "("
								+ obj.pinYinChar
								+ ")</a></li>";
					} else {
						li = "<li><a class='allcityClass' href='javascript:' nationCode='"
								+ obj.nationCode
								+ "' nationName='"
								+ obj.nationName
								+ "'  provinceCode='"
								+ obj.provinceCode
								+ "' provinceName='"
								+ obj.provinceName
								+ "' cityCode='"
								+ obj.cityCode
								+ "' countyCode='"
								+ obj.countyCode
								+ "' cityName='"
								+ obj.cityName
								+ "' countyName='"
								+ obj.countyName
								+ "'>"
								+ obj.cityName
								+ "-"
								+ obj.countyName
								+ "("
								+ obj.pinyin
								+ ")</a></li>";
					}
				} else {
					/* 城市 */
					// 模糊匹配类型 1:简称 2:拼音 3:汉字
					if (obj.matchType == 1 || obj.matchType == 3) {
						li = "<li><a class='allcityClass' href='javascript:' nationCode='"
								+ obj.nationCode
								+ "' nationName='"
								+ obj.nationName
								+ "'  provinceCode='"
								+ obj.provinceCode
								+ "' provinceName='"
								+ obj.provinceName
								+ "' cityCode='"
								+ obj.cityCode
								+ "' cityName='"
								+ obj.cityName
								+ "'>"
								+ obj.cityName
								+ "("
								+ obj.pinYinChar
								+ ")</a></li>";
					} else {
						li = "<li><a class='allcityClass' href='javascript:' nationCode='"
								+ obj.nationCode
								+ "' nationName='"
								+ obj.nationName
								+ "'  provinceCode='"
								+ obj.provinceCode
								+ "' provinceName='"
								+ obj.provinceName
								+ "' cityCode='"
								+ obj.cityCode
								+ "' cityName='"
								+ obj.cityName
								+ "' >"
								+ obj.cityName
								+ "("
								+ obj.pinyin
								+ ")</a></li>";
					}
				}

				return li;
			}

		};

		this.opt = $.extend(_default, opt);

		/* 设置查询key;对象入口，自动触发对象 */
		this.setKey = function(q) {
			this.opt.key = q;
			if (!this.opt.key)
				return false;

			if (this.opt.before_key == this.opt.key) {
				this.opt.init_div();
				return false;
			}
			this.getCityData();
			this.getCountyData();
			if (_this.opt.ds.data.City == null
					&& _this.opt.ds.dataCounty == null) {
				alert("模糊匹配数据源未初始化");
				return false;
			}
			;
			/* 如果查询关键字没有改动，则结束 */
			this.opt.clear();
			if (this.opt.need_area) {
				this.opt.fill_area(); // 优先区县
			}
			this.opt.fill_city();
			this.opt.init_div();
			this.opt.before_key = this.opt.key; /* 记录上一次的key */
		};

		/* 向上按键 */
		this.keyup = function(event) {
			var prev = $("#dimCityQuery li.current").prev();
			if (prev.size() > 0) {
				prev.addClass("current").siblings().removeClass("current");
			} else {
				$("#dimCityQuery li").removeClass("current").last().addClass(
						"current");
			}
			;
			event.stopPropagation();
		};
		/* 向下按键 */
		this.keydown = function(event) {
			var next = $("#dimCityQuery li.current").next();
			if (next.size() > 0) {
				next.addClass("current").siblings().removeClass("current");
			} else {
				$("#dimCityQuery li").removeClass("current").first().addClass(
						"current");
			}
			event.stopPropagation();
		};
		/* 回车按键 */
		this.keyenter = function(event) {
			$("#dimCityQuery li.current a").triggerHandler("click");
			event.stopPropagation();
		};
		this.close = function() {
			$("#dimCityQuery").hide();
		};
		this.getCityData = function() {
			if (this.opt.key == null || this.opt.key == "") {
				return;
			}
			var inputKey = this.opt.key;
			$.ajax({
				type : "get",
				url : DepponCfg.LoginUrl
						+ "/phonerest/citycontrol/queryCityByKey/" + inputKey,
				async : false,
				data : {},
				dataType : "json",
				success : function(data) {
					if (data.status == "success") {
						_this.opt.ds.data.City = data.result;
					} else {
						//alert("城市数据初始化失败");
					}
				},
				error : function() {
					//alert("getCityData error");
				}
			});
		};
		this.getCountyData = function() {
			if (this.opt.key == null || this.opt.key == "") {
				return;
			}
			var inputKey = this.opt.key;
			$
					.ajax({
						type : "get",
						url : DepponCfg.LoginUrl
								+ "/phonerest/citycontrol/queryCountyByKey/"
								+ inputKey,
						async : false,
						data : {},
						dataType : "json",
						success : function(data) {
							if (data.status == "success") {
								_this.opt.ds.data.County = data.result;
							} else {
								//alert("城市数据初始化失败");
							}
						},
						error : function() {
							//alert("getCountyData error");
						}
					});
		};
		return this;
	};

};

/**
 * 非空校验
 * 
 * @param target
 * @returns {Boolean}
 */
function isNotblank(target) {
	if (target != null && target != "") {
		return true;
	}
	return false;
}
/** 构造回调的参数，选择城市区县后，回传给调用者的数据 */
var create_back_data = function(elem) {
	var obj = new Object();
	if (elem.attr('nationCode')) {
		obj.nationName = elem.attr('nationName');
		obj.nationCode = elem.attr('nationCode');
	}
	if (elem.attr('provinceCode')) {
		obj.provinceName = elem.attr('provinceName');
		obj.provinceCode = elem.attr('provinceCode');
	}
	if (elem.attr('cityCode')) {
		obj.cityName = elem.attr('cityName');
		obj.cityCode = elem.attr('cityCode');
	}
	if (elem.attr('countyCode')) {
		obj.countyName = elem.attr('countyName');
		obj.countyCode = elem.attr('countyCode');
	}
	if (elem.attr('townCode')) {
		obj.townName = elem.attr('townName');
		obj.townCode = elem.attr('townCode');
	}
	return obj;
};
