<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: aqiang
  Date: 2018/6/9
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Cache-Control" content="no-transform" />
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <title>顺丰优选-顺丰旗下全球美食优选网购商城-进口食品、母婴、营养保健品、生鲜、粮油、酒水饮料、休闲食品-顺丰优选Sfbest.com</title>
  <meta name="Keywords" content="进口食品,网上超市,网上购物,进口奶粉,顺丰优选,sfbest,母婴用品,营养保健品,生鲜食品,粮油,酒水,休闲食品"/>
  <meta name="Description" content="顺丰优选顺丰旗下全球美食优选网购商城，精选来自60多个国家和地区的进口食品，正品行货，支持货到付款。销售包括进口奶粉、母婴用品、营养保健品、生鲜食品、粮油、酒水、休闲食品等近万种商品。"/>
  <link rel="dns-prefetch" href="//pic.sfbest.com">
  <meta property="wb:webmaster" content="3a008ad947166307"/>
  <link rel="stylesheet" type="text/css" href="../../css/base_w1200.css" />
  <link rel="stylesheet" type="text/css" href="../../css/index.css" />
  <script type="text/javascript" src="../../js/jquery-1.4.2.min.js"></script>
  <script type="text/javascript">
    var SMART_SORT_FLAG = 0;
  </script>
=================${list}
</head>
<body>

<div class="toppromo">
  <!-- 顶通 -->
  <div class="banner" style="background:url(images/869bc9e6572d8d464af4ba3b08cd4538.jpg) no-repeat top center;display: block;">
    <a name="sfbest_hp_hp_headbanner_1" class="trackref" href="/paidMember/" target="_blank">会员频道</a>
  </div>
  <span class="topclose">关闭</span>
  <!-- 顶通滚屏 -->
  <!-- 倒计时 -->
  <div class="q_ticket">
    <a href="#" target="_blank">
      <span><em id="ssyHour">00</em><em class="mark">:</em><em id="ssyMin">00</em><em class="mark">:</em><em id="ssySencond">00</em></span>
    </a>
  </div>
</div>

<div class="topMenu">
  <div class="pW">
    <ul class="fl topTh" >
      <li class="d1">冷链配送 顺丰到家 送至：</li>
      <li class="d6 tShow" id="currentCityName">
        <p class="pshort"><span class="city_title1">...</span><b></b><span class="outline1"></span><span class="blank1"></span></p>
        <div class="dd" id="headAllCity"></div>
      </li>
    </ul>
    <ul class="fr topTh">
      <li class="login" id="login"></li>
      <li class="myOrder">
        <a name="sfbest_hp_hp_head_OrderList" class="trackref" href="http://home.sfbest.com/myorder/index/" rel="nofollow">我的订单</a>
      </li>
      <li class="menus">
        <a name="sfbest_hp_hp_head_home1" href="http://home.sfbest.com/my/index/" rel="nofollow" class="trackref t">我的优选</a><b></b>
        <span class="outline"></span>
        <span class="blank"></span>
        <div class="dd">
          <div><a name="sfbest_hp_hp_head_home2" class="trackref" href="http://home.sfbest.com/myorder/index/" rel="nofollow">我的订单</a></div>
          <div><a name="sfbest_hp_hp_head_home4" class="trackref" href="http://home.sfbest.com/my/points/" rel="nofollow">我的积分</a></div>
          <div><a name="sfbest_hp_hp_head_home3" class="trackref" href="http://home.sfbest.com/favorites/index/" rel="nofollow">我的收藏</a></div>
          <div><a href="http://home.sfbest.com/giftcard/list/" rel="nofollow">我的优选卡</a></div>
          <div><a href="http://home.sfbest.com/usercoupon/list/" rel="nofollow">我的优惠券</a></div>
        </div>
      </li>
      <li class="d2 tShow">
        <s></s><q></q><a name="sfbest_hp_hp_head_app1" class="trackref" href="http://app.sfbest.com/" target="_blank" class="t">移动客户端</a>
        <div class="dd">
          <div class="sf-client">
            <span class="client-img"></span>
            <i></i>
            <div class="client-txt">
              <em>扫描我，即可下载</em>
              <strong>顺丰优选客户端</strong>
            </div>
          </div>
          <div class="app-btn">
            <a class="app-apple" target="_blank" rel="nofollow" href="http://itunes.apple.com/cn/app/id563194150"></a>
            <a class="app-android" target="_blank" rel="nofollow" href="http://android.sfimg.cn/sfandroid_gw_v1.2.apk"></a>
          </div>
          <div class="client-promo">
            <a class="trackref" rel="nofollow" href="http://app.sfbest.com" target="_blank" name="sfbest_hp_hp_head_app2">先摇券 后买单</a>
          </div>
        </div>
        <div class="corner">
          <div class="aBg"></div>
          <div class="aCt"></div>
        </div>
      </li>
      <li class="menus">
        <a name="sfbest_hp_hp_head_help1" href="http://help.sfbest.com/" target="_blank" class="trackref t">帮助中心</a><b></b>
        <span class="outline"></span>
        <span class="blank"></span>
        <div class="dd">
          <div><a name="sfbest_hp_hp_head_help2" class="trackref" href="http://help.sfbest.com/140/128.html" rel="nofollow" target="_blank">购物指南</a></div>
          <div><a name="sfbest_hp_hp_head_help3" class="trackref" href="http://help.sfbest.com/141/134.html" rel="nofollow" target="_blank">配送服务</a></div>
          <div><a name="sfbest_hp_hp_head_help4" class="trackref" href="http://help.sfbest.com/143/131.html" rel="nofollow" target="_blank">支付方式</a></div>
          <div><a name="sfbest_hp_hp_head_help5" class="trackref" href="http://help.sfbest.com/144/143.html" rel="nofollow" target="_blank">售后服务</a></div>
          <div><a name="sfbest_hp_hp_head_help7" class="trackref" href="http://help.sfbest.com/377/4407.html" rel="nofollow" target="_blank">客服邮箱</a></div>
          <div><a name="sfbest_hp_hp_head_help8" class="trackref" href="http://help.sfbest.com/377/6766.html" rel="nofollow" target="_blank">投诉与建议</a></div>
        </div>
      </li>
      <li class="allCat">
        <em class="site">网站导航</em><s></s><span class="outline"></span> <span class="blank"></span>
        <div class="dd">
          <dl>
            <dt class="dh1">商品分类</dt>
            <dd>
              <a name="sfbest_hp_hp_head_category1" class="trackref" href="/fresh/" target="_blank">肉类海鲜</a>
              <a name="sfbest_hp_hp_head_category2" class="trackref" href="/fresh/" target="_blank">新鲜果蔬</a>
              <a name="sfbest_hp_hp_head_category3" class="trackref" href="/fresh/" target="_blank">速食冷藏</a>
              <a name="sfbest_hp_hp_head_category4" class="trackref" href="/multi/7417_7431_7433_7435_7437_7439_7441-0-0-0-0-2-0-0-0-0-0.html" target="_blank">酒水饮料</a>
              <a name="sfbest_hp_hp_head_category5" class="trackref" href="/multi/7411_7413_7415-0-0-0-0-2-0-0-0-0-0.html" target="_blank">休闲糖巧</a>
              <a name="sfbest_hp_hp_head_category6" class="trackref" href="/multi/7443_7445_7447_7449-0-0-0-0-2-0-0-0-0-0.html" target="_blank">粮油干货</a>
              <a name="sfbest_hp_hp_head_category7" class="trackref" href="/mall/7451-0-0-0-0-2-0-0-0-0-0.html" target="_blank">冲调茶饮</a>
              <a name="sfbest_hp_hp_head_category8" class="trackref" href="/ht/" target="_blank">优选国际</a>
            </dd>
          </dl>
          <dl class="line"></dl>
          <dl>
            <dt class="dh2">特色频道</dt>
            <dd>
              <a name="sfbest_hp_hp_head_channel12" class="trackref" href="http://www.sfbest.hk" target="_blank">跨境直发</a>
              <a name="sfbest_hp_hp_head_channel2" class="trackref" href="/qiye/" target="_blank">企业专区</a>
              <a name="sfbest_hp_hp_head_channel3" class="trackref" href="/wine/" target="_blank">红酒廊</a>
              <a name="sfbest_hp_hp_head_channel4" class="trackref" href="/taste/" target="_blank">寰宇美食</a>
            </dd>
          </dl>
          <dl class="line"></dl>
          <dl>
            <dt class="dh3">更多</dt>
            <dd>
              <a name="sfbest_hp_hp_head_moreapp" class="trackref" href="http://app.sfbest.com/" target="_blank">客户端</a>
              <a name="sfbest_hp_hp_head_moreabout" class="trackref"  href="/www/380/5118.html" target="_blank">关注我们</a>
              <p>客服电话：9533858</p>
            </dd>
          </dl>
        </div>
      </li>
      <li class="d3 tShow">
        <a name="sfbest_hp_hp_head_weibo" class="trackref" title="关注顺丰优选微博" href="http://weibo.com/sfbest" rel="nofollow" target="_blank"><q></q></a>
      </li>
      <li class="d4 tShow">
        <!-- 微信 -->
        <q></q>
        <div class="dd">
          <div class="sf_wx_t">关注顺丰优选微信</div>
          <div class="sf_wx"></div>
        </div>
        <div class="corner">
          <div class="aBg"></div>
          <div class="aCt"></div>
        </div>
      </li>
    </ul>
    <span class="clear"></span>
  </div>
</div>

<div id="header">
  <div class="header_inner">
    <div class="logo">
      <div class="index_topad" id="playLogo" style="display:none">
        <a href="/html/activity/1528253360.html" target="_blank">
          <img src="picture/20180606142224638.gif">
        </a>
      </div>
      <script>
        // 是否显示logo
        function playLogo(){
          var sta = '2018-06-06 00:00';
          var end = '2018-07-03 00:00';

          var format = function(num,n){
            return (Array(n).join(0) + num).slice(-n);
          }

          var D = new Date();
          var day = D.getFullYear()+'-'+format(D.getMonth()+1,2)+'-'+format(D.getDate(),2);
          day += ' '+format(D.getHours(),2)+':'+format(D.getMinutes(),2);

          if(day > sta && day < end){
            $("#playLogo").show();
          }
        }
        playLogo();
        // 会员权益提醒
        $(function(){
          var url = '/paidMember/MemberTip';
          $.post(url,{},function(data){
            if(data){
              $("#playLogo").after(data);
            }
          });
        });
      </script>
      <a name="sfbest_hp_hp_head_logo" href="http://www.sfbest.com" class="trackref logoleft"></a>
      <a name="sfbest_hp_hp_head_logo" href="http://www.sfbest.com" class="trackref logoright" title="顺丰优选"><span style="text-indent:-9999px; display:block;">顺丰优选</span></a>
      <div class="logo-text"><img src="picture/logo_word.png"></div>
    </div>
    <div class="index_promo"></div>
    <div class="search">
      <form action="${pageContext.request.contextPath}/search" id="searchForm" name="query" method="GET">
        <input type="hidden" name="inputBox" value="1">
        <input type="hidden" name="categoryId" value="0">
        <input type="text" class="text keyword" name="keyword" id="keyword" value="" style="color: rgb(153, 153, 153);" onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');"  >
        <input type="button" value="" class="submit" onclick="search_keys('searchForm')" />
      </form>
      <div class="search_hot"></div>
    </div>
    <div class="shopingcar" id="topCart">
      <s class="setCart"></s><a href="http://cart.sfbest.com" class="t" rel="nofollow">我的购物车</a><b id="cartNum">0</b>
      <span class="outline"></span>
      <span class="blank"></span>
      <div id="cart_lists">
        <!--cartContent-->
        <div class="clear"></div>
      </div>
    </div>
  </div>
</div>

<div class="mainNav">
  <div class="navmenu">
    <div class="categories hover">
      <div class="dt"><a name="sfbest_hp_hp_menu_all" class="trackref topall" href="javascript:void(0);">精选商品分类</a></div>
      <div id="allSort" class="dd">
        <div id="booksort">
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="fresh"></p>
              <a class="trackref" href="/fresh/" fro_id="1" target="_blank" name="sfbest_Uhead_Uhead_menu_category1-hot0">肉类海鲜</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7543-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category1-hot1">牛肉

              </a></li>
              <li><a href="/mall/7547-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category1-hot2">羊肉

              </a></li>
              <li><a href="/mall/8621-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category1-hot3">小龙虾

              </a></li>
              <li><a href="/mall/7527-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category1-hot4">鱼</a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category1-1" class="trackref" href="/mall/7423-0-0-0-0-2-0-0-0-0-0.html" target="_blank">精品肉类</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category1-2" class="trackref" href="/mall/7543-0-0-0-0-2-0-0-0-0-0.html">牛肉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-3" class="trackref" href="/mall/7547-0-0-0-0-2-0-0-0-0-0.html">羊肉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-4" class="trackref" href="/mall/7545-0-0-0-0-2-0-0-0-0-0.html">猪肉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-5" class="trackref" href="/mall/7549-0-0-0-0-2-0-0-0-0-0.html">禽类</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-8" class="trackref" href="/mall/7557-0-0-0-0-2-0-0-0-0-0.html">加工肉类</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category1-10" class="trackref" href="/mall/7421-0-0-0-0-2-0-0-0-0-0.html">海鲜水产</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category1-11" class="trackref" href="/mall/7525-0-0-0-0-2-0-0-0-0-0.html">虾</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-12" class="trackref" href="/multi/7527_7703-0-0-0-0-2-0-0-0-0-0.html">鱼</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-14" class="trackref" href="/multi/7529_7531-0-0-0-0-2-0-0-0-0-0.html">蟹/贝类</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-15" class="trackref" href="/mall/8621-0-0-0-0-2-0-0-0-0-0.html">小龙虾</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-16" class="trackref" href="/multi/7533_7535-0-0-0-0-2-0-0-0-0-0.html">参鲍</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-17" class="trackref" href="/mall/7541-0-0-0-0-2-0-0-0-0-0.html">加工水产</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-18" class="trackref" href="/mall/8061-0-0-0-0-2-0-0-0-0-0.html">其他水产</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-19" class="trackref" href="/mall/8059-0-0-0-0-2-0-0-0-0-0.html">水产礼盒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category1-20" class="trackref" href="/multi/7697_7701-0-0-0-0-2-0-0-0-0-0.html">卡券</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1528092721.html" target="_blank"><img
                        src="picture/1528109884.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="pastry"></p>
              <a class="trackref" href="/fresh/" fro_id="2" target="_blank" name="sfbest_hp_hp_menu_category2-hot0">新鲜果蔬</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7971-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category2-hot1">柑橘橙</a></li>
              <li><a href="/mall/7981-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category2-hot2">猕猴桃</a></li>
              <li><a href="/mall/7425-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category2-hot3">蔬菜</a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category2-1" class="trackref"  href="/mall/7419-0-0-0-0-2-0-0-0-0-0.html">水果</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category2-2" class="trackref" href="/mall/7971-0-0-0-0-2-0-0-0-0-0.html">柑橘橙</a>
                      <a name="sfbest_hp_hp_menu_category2-3" class="trackref" href="/mall/7973-0-0-0-0-2-0-0-0-0-0.html">柠檬</a>
                      <a name="sfbest_hp_hp_menu_category2-4" class="trackref" href="/mall/7969-0-0-0-0-2-0-0-0-0-0.html">柚</a>
                      <a name="sfbest_hp_hp_menu_category2-5" class="trackref" href="/mall/7993-0-0-0-0-2-0-0-0-0-0.html">瓜类</a>
                      <a name="sfbest_hp_hp_menu_category2-6" class="trackref" href="/mall/7965-0-0-0-0-2-0-0-0-0-0.html">梨</a>
                      <a name="sfbest_hp_hp_menu_category2-7" class="trackref" href="/mall/7963-0-0-0-0-2-0-0-0-0-0.html">芒果</a>
                      <a name="sfbest_hp_hp_menu_category2-8" class="trackref" href="/mall/7953-0-0-0-0-2-0-0-0-0-0.html">牛油果</a>
                      <a name="sfbest_hp_hp_menu_category2-9" class="trackref" href="/multi/7959_7967-0-0-0-0-2-0-0-0-0-0.html">苹果/桃</a>
                      <a name="sfbest_hp_hp_menu_category2-10" class="trackref" href="/multi/7957_7961-0-0-0-0-2-0-0-0-0-0.html">杏/李/梅</a>
                      <a name="sfbest_hp_hp_menu_category2-11" class="trackref" href="/mall/7955-0-0-0-0-2-0-0-0-0-0.html">枣</a>
                      <a name="sfbest_hp_hp_menu_category2-13" class="trackref" href="/mall/7995-0-0-0-0-2-0-0-0-0-0.html">椰子</a>
                      <a name="sfbest_hp_hp_menu_category2-16" class="trackref" href="/mall/7987-0-0-0-0-2-0-0-0-0-0.html">火龙果</a>
                      <a name="sfbest_hp_hp_menu_category2-18" class="trackref" href="/mall/7981-0-0-0-0-2-0-0-0-0-0.html">猕猴桃/奇异果</a>
                      <a name="sfbest_hp_hp_menu_category2-21" class="trackref" href="/mall/7975-0-0-0-0-2-0-0-0-0-0.html">石榴</a>
                      <a name="sfbest_hp_hp_menu_category2-28" class="trackref" href="/mall/8007-0-0-0-0-2-0-0-0-0-0.html">龙眼</a>
                      <a name="sfbest_hp_hp_menu_category2-29" class="trackref" href="/mall/8009-0-0-0-0-2-0-0-0-0-0.html">香蕉</a>
                      <a name="sfbest_hp_hp_menu_category2-26" class="trackref" href="/mall/8011-0-0-0-0-2-0-0-0-0-0.html">其他水果</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category2-32" class="trackref"  href="/mall/7425-0-0-0-0-2-0-0-0-0-0.html">蔬菜</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category2-34" class="trackref" href="/mall/8113-0-0-0-0-2-0-0-0-0-0.html">根茎类</a>
                      <a name="sfbest_Uhead_Uhead_menu_category2-35" class="trackref" href="/mall/8109-0-0-0-0-2-0-0-0-0-0.html">叶菜类</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1527650371.html" target="_blank"><img
                        src="picture/1528126755.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="baby"></p>
              <a name="sfbest_Uhead_Uhead_menu_category3-hot0" href="/fresh/" fro_id="3" class="trackref" target="_blank" >速食冷藏</a>
            </h3>
            <ul class="subCat">
              <li><a name="sfbest_Uhead_Uhead_menu_category3-hot1" href="/mall/7429-0-0-0-0-2-0-0-0-0-0.html" target="_blank">速冻食品</a></li>
              <li><a name="sfbest_Uhead_Uhead_menu_category3-hot2" href="/mall/7563-0-0-0-0-2-0-0-0-0-0.html" target="_blank">蛋</a></li>
              <li><a name="sfbest_Uhead_Uhead_menu_category3-hot3" href="/mall/7583-0-0-0-0-2-0-0-0-0-0.html" target="_blank">冷冻甜点</a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category3-1" class="trackref" href="/mall/7575-0-0-0-0-2-0-0-0-0-0.html">肉类熟食</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category3-2" class="trackref" href="/mall/8147-0-0-0-0-2-0-0-0-0-0.html">香肠</a>
                      <a name="sfbest_hp_hp_menu_category3-3" class="trackref" href="/mall/8143-0-0-0-0-2-0-0-0-0-0.html">火腿</a>
                      <a name="sfbest_hp_hp_menu_category3-4" class="trackref" href="/mall/8145-0-0-0-0-2-0-0-0-0-0.html">培根</a>
                      <a name="sfbest_hp_hp_menu_category3-5" class="trackref" href="/mall/8141-0-0-0-0-2-0-0-0-0-0.html">其他熟食</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category3-6" class="trackref" href="/multi/7585_7587-0-0-0-0-2-0-0-0-0-0.html">主食面点</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category3-7" class="trackref" href="/mall/8181-0-0-0-0-2-0-0-0-0-0.html">包点/饼类/面条</a>
                      <a name="sfbest_hp_hp_menu_category3-8" class="trackref" href="/mall/8179-0-0-0-0-2-0-0-0-0-0.html">饺子/馄饨/云吞</a>
                      <a name="sfbest_hp_hp_menu_category3-9" class="trackref" href="/mall/8177-0-0-0-0-2-0-0-0-0-0.html">汤圆</a>
                      <a name="sfbest_hp_hp_menu_category3-10" class="trackref" href="/mall/8175-0-0-0-0-2-0-0-0-0-0.html">披萨/派</a>
                      <a name="sfbest_hp_hp_menu_category3-11" class="trackref" href="/mall/8187-0-0-0-0-2-0-0-0-0-0.html">煎炸</a>
                      <a name="sfbest_hp_hp_menu_category3-12" class="trackref" href="/mall/8185-0-0-0-0-2-0-0-0-0-0.html">简餐/汤食</a>
                      <a name="sfbest_hp_hp_menu_category3-13" class="trackref" href="/mall/8183-0-0-0-0-2-0-0-0-0-0.html">其它速冻品</a>
                      <a name="sfbest_hp_hp_menu_category3-13" class="trackref" href="/mall/7695-0-0-0-0-2-0-0-0-0-0.html">粽子</a></dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category3-14" class="trackref" href="/multi/7593_7595-0-0-0-0-2-0-0-0-0-0.html">奶制品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category3-15" class="trackref" href="/mall/8205-0-0-0-0-2-0-0-0-0-0.html">加工奶酪</a>
                      <a name="sfbest_hp_hp_menu_category3-16" class="trackref" href="/mall/8203-0-0-0-0-2-0-0-0-0-0.html">儿童奶酪</a>
                      <a name="sfbest_hp_hp_menu_category3-18" class="trackref" href="/mall/8209-0-0-0-0-2-0-0-0-0-0.html">无盐黄油</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category3-19" class="trackref" href="/multi/7573_7577_7579-0-0-0-0-2-0-0-0-0-0.html">冷藏食品

                        </a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category3-20" class="trackref" href="/mall/8137-0-0-0-0-2-0-0-0-0-0.html">低温果汁</a>
                      <a name="sfbest_Uhead_Uhead_menu_category3-21" class="trackref" href="/mall/8139-0-0-0-0-2-0-0-0-0-0.html">低温饮料</a>
                      <a name="sfbest_Uhead_Uhead_menu_category3-24" class="trackref" href="/mall/8149-0-0-0-0-2-0-0-0-0-0.html">年糕</a>
                      <a name="sfbest_Uhead_Uhead_menu_category3-26" class="trackref" href="/mall/8153-0-0-0-0-2-0-0-0-0-0.html">其他低温品</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category3-27" class="trackref" href="/multi/7581_7583-0-0-0-0-2-0-0-0-0-0.html">速食冰品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category3-28" class="trackref" href="/multi/8165_8163_8161_8159-0-0-0-0-2-0-0-0-0-0.html">冰淇淋</a>
                      <a name="sfbest_hp_hp_menu_category3-29" class="trackref" href="/mall/8173-0-0-0-0-2-0-0-0-0-0.html">冷冻蛋糕</a>
                      <a name="sfbest_hp_hp_menu_category3-31" class="trackref" href="/mall/8171-0-0-0-0-2-0-0-0-0-0.html">水果甜点</a>
                      <a name="sfbest_hp_hp_menu_category3-33" class="trackref" href="/mall/8157-0-0-0-0-2-0-0-0-0-0.html">冰淇淋券</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category3-34" class="trackref" href="/mall/7563-0-0-0-0-2-0-0-0-0-0.html">蛋品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_hp_hp_menu_category3-35" class="trackref" href="/mall/8119-0-0-0-0-2-0-0-0-0-0.html">鲜蛋类（鸡鸭鹅）</a>
                      <a name="sfbest_hp_hp_menu_category3-36" class="trackref" href="/mall/8117-0-0-0-0-2-0-0-0-0-0.html">咸蛋/皮蛋类</a>
                      <a name="sfbest_hp_hp_menu_category3-37" class="trackref" href="/mall/8115-0-0-0-0-2-0-0-0-0-0.html">其他蛋类</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1528092873.html" target="_blank"><img

                        src="picture/1528109871.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="drinks"></p>
              <a class="trackref" href="/multi/7417_7431_7433_7435_7437_7439_7441-0-0-0-0-2-0-0-0-0-0.html" fro_id="4" target="_blank"

                 name="sfbest_hp_hp_menu_category4-hot0">酒水饮料</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7439-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category4-hot1">葡萄酒

              </a></li>
              <li><a href="/mall/7437-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category4-hot2">啤酒

              </a></li>
              <li><a href="/mall/7433-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category4-hot3">白酒

              </a></li>
              <li><a href="/mall/7441-0-0-0-0-2-0-0-0-0-0.html" target="_blank" class="trackref" name="sfbest_Uhead_Uhead_menu_category4-hot4">牛奶

              </a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_hp_hp_menu_category4-1" class="trackref" href="/mall/7439-0-0-0-0-2-0-0-0-0-0.html">葡萄酒</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-2" class="trackref" href="/mall/7625-0-0-0-0-2-0-0-0-0-0.html">红葡萄酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-3" class="trackref" href="/mall/7627-0-0-0-0-2-0-0-0-0-0.html">白葡萄酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-4" class="trackref" href="/mall/7629-0-0-0-0-2-0-0-0-0-0.html">桃红葡萄酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-5" class="trackref" href="/mall/7631-0-0-0-0-2-0-0-0-0-0.html">甜葡萄酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-7" class="trackref" href="/mall/7637-0-0-0-0-2-0-0-0-0-0.html">香槟/起泡酒</a>

                      <a name="sfbest_Uhead_Uhead_menu_category4-8" class="trackref" href="/mall/7635-0-0-0-0-2-0-0-0-0-0.html">名庄酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-9" class="trackref" href="/mall/7639-0-0-0-0-2-0-0-0-0-0.html">礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-10" class="trackref"  href="/mall/7435-0-0-0-0-2-0-0-0-0-0.html">洋酒</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-11" class="trackref" href="/mall/8235-0-0-0-0-2-0-0-0-0-0.html">威士忌</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-12" class="trackref" href="/mall/8233-0-0-0-0-2-0-0-0-0-0.html">伏特加</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-13" class="trackref" href="/mall/8237-0-0-0-0-2-0-0-0-0-0.html">白兰地</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-14" class="trackref" href="/mall/8231-0-0-0-0-2-0-0-0-0-0.html">利口酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-15" class="trackref" href="/mall/8229-0-0-0-0-2-0-0-0-0-0.html">朗姆酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-16" class="trackref" href="/mall/8249-0-0-0-0-2-0-0-0-0-0.html">预调酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-17" class="trackref" href="/mall/8241-0-0-0-0-2-0-0-0-0-0.html">梅子酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-18" class="trackref" href="/mall/8247-0-0-0-0-2-0-0-0-0-0.html">果酒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-22" class="trackref"  href="/mall/7437-0-0-0-0-2-0-0-0-0-0.html">啤酒</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-23" class="trackref" href="/mall/7615-0-0-0-0-2-0-0-0-0-0.html">黑啤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-24" class="trackref" href="/mall/7617-0-0-0-0-2-0-0-0-0-0.html">黄啤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-25" class="trackref" href="/mall/7619-0-0-0-0-2-0-0-0-0-0.html">白啤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-26" class="trackref" href="/mall/7623-0-0-0-0-2-0-0-0-0-0.html">鲜啤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-27" class="trackref" href="/mall/7621-0-0-0-0-2-0-0-0-0-0.html">果味啤酒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-28" class="trackref" href="/mall/7433-0-0-0-0-2-0-0-0-0-0.html">白酒</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-29" class="trackref" href="/multi/8213_8211-0-0-0-0-2-0-0-0-0-0.html">酱香型</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-30" class="trackref" href="/multi/8217_8215-0-0-0-0-2-0-0-0-0-0.html">浓香型</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-31" class="trackref" href="/multi/8221_8219-0-0-0-0-2-0-0-0-0-0.html">清香型</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-32" class="trackref" href="/mall/8223-0-0-0-0-2-0-0-0-0-0.html">其他白酒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-33" class="trackref" href="/multi/7605_7607-0-0-0-0-2-0-0-0-0-0.html">其他酒品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-34" class="trackref" href="/mall/8227-0-0-0-0-2-0-0-0-0-0.html">滋补酒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-35" class="trackref" href="/mall/8225-0-0-0-0-2-0-0-0-0-0.html">黄酒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-36" class="trackref" href="/multi/7589_7591_7641_7643_7645_7647-0-0-0-0-2-0-0-0-0-

0.html">安心乳品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-37" class="trackref" href="/mall/7641-0-0-0-0-2-0-0-0-0-0.html">牛奶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-38" class="trackref" href="/mall/7643-0-0-0-0-2-0-0-0-0-0.html">豆奶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-39" class="trackref" href="/mall/7645-0-0-0-0-2-0-0-0-0-0.html">常温酸奶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-40" class="trackref" href="/mall/7591-0-0-0-0-2-0-0-0-0-0.html">低温酸奶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-41" class="trackref" href="/mall/7589-0-0-0-0-2-0-0-0-0-0.html">低温保鲜奶</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category4-43" class="trackref"  href="/mall/7417-0-0-0-0-2-0-0-0-0-0.html">果汁/饮料/水</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category4-44" class="trackref" href="/mall/7491-0-0-0-0-2-0-0-0-0-0.html">果蔬饮料</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-45" class="trackref" href="/mall/7493-0-0-0-0-2-0-0-0-0-0.html">纯果汁</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-46" class="trackref" href="/mall/7497-0-0-0-0-2-0-0-0-0-0.html">茶饮料</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-47" class="trackref" href="/mall/7499-0-0-0-0-2-0-0-0-0-0.html">咖啡饮料</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-45" class="trackref" href="/mall/7947-0-0-0-0-2-0-0-0-0-0.html">乳酸菌</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-49" class="trackref" href="/mall/7495-0-0-0-0-2-0-0-0-0-0.html">水</a>
                      <a name="sfbest_Uhead_Uhead_menu_category4-50" class="trackref" href="/mall/7503-0-0-0-0-2-0-0-0-0-0.html">其他饮料</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="
/html/activity/1527820296.html" target="_blank"><img src="picture/1528110574.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="food"></p>
              <a class="trackref" href="/multi/7411_7413_7415-0-0-0-0-2-0-0-0-0-0.html" fro_id="5" target="_blank"

                 name="sfbest_Uhead_Uhead_menu_category5-hot0">休闲糖巧</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7481-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot1" class="trackref">巧克力

              </a></li>
              <li><a href="/mall/7471-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot2" class="trackref">坚果

              </a></li>
              <li><a href="/mall/7893-0-0-0-0-2-0-0-0-0-0.html" target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot3" class="trackref">曲奇

              </a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category5-1" class="trackref"  href="/multi/7475_7473_7469_7477_7479-0-0-0-0-2-0-0-0-0-0.html">

                          休闲零食</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category5-2" class="trackref" href="/mall/7475-0-0-0-0-2-0-0-0-0-0.html">肉类零食</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-3" class="trackref" href="/mall/7473-0-0-0-0-2-0-0-0-0-0.html">蜜饯/干果</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-4" class="trackref" href="/mall/7469-0-0-0-0-2-0-0-0-0-0.html">膨化食品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-5" class="trackref" href="/mall/7477-0-0-0-0-2-0-0-0-0-0.html">其他零食</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-7" class="trackref" href="/mall/7831-0-0-0-0-2-0-0-0-0-0.html">节庆礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category5-8" class="trackref"  href="/mall/7471-0-0-0-0-2-0-0-0-0-0.html">坚果炒货</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category5-9" class="trackref" href="/mall/7795-0-0-0-0-2-0-0-0-0-0.html">扁桃仁/巴旦木</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-10" class="trackref" href="/mall/7799-0-0-0-0-2-0-0-0-0-0.html">开心果</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-11" class="trackref" href="/mall/7797-0-0-0-0-2-0-0-0-0-0.html">腰果</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-16" class="trackref" href="/mall/7775-0-0-0-0-2-0-0-0-0-0.html">瓜子/瓜仁</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-17" class="trackref" href="/mall/7783-0-0-0-0-2-0-0-0-0-0.html">花生</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-18" class="trackref" href="/mall/7777-0-0-0-0-2-0-0-0-0-0.html">板栗</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-19" class="trackref" href="/mall/7789-0-0-0-0-2-0-0-0-0-0.html">其他坚果</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-20" class="trackref" href="/mall/7785-0-0-0-0-2-0-0-0-0-0.html">坚果组合装</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-21" class="trackref" href="/mall/7787-0-0-0-0-2-0-0-0-0-0.html">坚果礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category5-22" class="trackref" href="/mall/7413-0-0-0-0-2-0-0-0-0-0.html">糖果/巧克力</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category5-23" class="trackref" href="/mall/7481-0-0-0-0-2-0-0-0-0-0.html">巧克力</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-24" class="trackref" href="/mall/7483-0-0-0-0-2-0-0-0-0-0.html">糖果</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-25" class="trackref" href="/mall/7835-0-0-0-0-2-0-0-0-0-0.html">巧克力礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category5-27" class="trackref" href="/mall/7415-0-0-0-0-2-0-0-0-0-0.html">饼干糕点</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category5-28" class="trackref" href="/mall/7485-0-0-0-0-2-0-0-0-0-0.html">饼干</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-29" class="trackref" href="/mall/7893-0-0-0-0-2-0-0-0-0-0.html">曲奇</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-30" class="trackref" href="/mall/7487-0-0-0-0-2-0-0-0-0-0.html">糕点</a>
                      <a name="sfbest_Uhead_Uhead_menu_category5-31" class="trackref" href="/mall/7883-0-0-0-0-2-0-0-0-0-0.html">威化</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1528091747.html" target="_blank"><img

                        src="picture/1528110442.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="oil"></p>
              <a class="trackref" href="/multi/7443_7445_7447_7449-0-0-0-0-2-0-0-0-0-0.html" fro_id="3" target="_blank"

                 name="sfbest_Uhead_Uhead_menu_category6-hot0">粮油干货</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7657-0-0-0-0-2-0-0-0-0-0.html#trackref=sfbest_Uhead_Uhead_menu_category6-hot1" target="_blank">橄榄油</a></li>
              <li><a href="/mall/8373-0-0-0-0-2-0-0-0-0-0.html#trackref=sfbest_Uhead_Uhead_menu_category6-hot2" target="_blank">泰国米</a></li>
              <li><a href="/mall/8421-0-0-0-0-2-0-0-0-0-0.html#trackref=sfbest_Uhead_Uhead_menu_category6-hot3" target="_blank">枣</a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category6-1" class="trackref" href="/multi/7657_7659-0-0-0-0-2-0-0-0-0-0.html">食用油

                      </a></strong>
                    </dt>

                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category6-2" class="trackref" href="/mall/7657-0-0-0-0-2-0-0-0-0-0.html">橄榄油</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-3" class="trackref" href="/mall/8401-0-0-0-0-2-0-0-0-0-0.html">花生油</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-4" class="trackref" href="/mall/8395-0-0-0-0-2-0-0-0-0-0.html">葵花籽油</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-5" class="trackref" href="/mall/7659-0-0-0-0-2-0-0-0-0-0.html">其他食用油</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-6" class="trackref" href="/multi/8385_8403-0-0-0-0-2-0-0-0-0-0.html">礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category6-7" class="trackref" href="/multi/7649_7651_7655_7663_7649_7653-0-0-0-0-2-0-0

-0-0-0.html">米面杂粮</a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category6-8" class="trackref" href="/multi/7649_7651-0-0-0-0-2-0-0-0-0-0.html">大米</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-9" class="trackref" href="/mall/7655-0-0-0-0-2-0-0-0-0-0.html">面粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-10" class="trackref" href="/mall/7663-0-0-0-0-2-0-0-0-0-0.html">五谷杂粮</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-11" class="trackref" href="/multi/8357_8367_8427-0-0-0-0-2-0-0-0-0-0.html">礼盒</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-12" class="trackref" href="/mall/8375-0-0-0-0-2-0-0-0-0-0.html">卡券</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category6-13" class="trackref" href="/multi/7665_7669_7671_7673_7677_7667_7675_7679-0-

0-0-0-2-0-0-0-0-0.html">厨房调料</a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category6-14" class="trackref" href="/multi/8447_8463_8483_8501_8515-0-0-0-0-2-0-0-0-0-0.html">

                        酱油/醋</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-15" class="trackref" href="/multi/8435_8461_8471_8491_8497_8511_8523_8533-0-0-0-0-2-

0-0-0-0-0.html">调味油/汁</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-16" class="trackref"

                         href="/multi/8453_8455_8465_8493_8481_8479_8499_8509_8519_8527_8531-0-0-0-0-2-0-0-0-0-0.html">调味料/粉/酱</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-17" class="trackref"

                         href="/multi/8441_8437_8459_8469_8489_8485_8473_8503_8521_8535_8529-0-0-0-0-2-0-0-0-0-0.html">调味酱/番茄酱</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-18" class="trackref" href="/multi/8475_8487-0-0-0-0-2-0-0-0-0-0.html">果酱/涂抹酱</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-19" class="trackref" href="/multi/8505_8525-0-0-0-0-2-0-0-0-0-0.html">咖喱/味噌</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-20" class="trackref" href="/multi/8449_8477-0-0-0-0-2-0-0-0-0-0.html">鸡精/盐/糖</a>
                      <!-- <a name="sfbest_Uhead_Uhead_menu_category6-21" class="trackref" href="/mall/8443-0-0-0-0-2-0-0-0-0-0.html">蚝油/鱼露</a>

-->
                      <!-- <a name="sfbest_Uhead_Uhead_menu_category6-22" class="trackref" href="/mall/8445-0-0-0-0-2-0-0-0-0-0.html">料酒/烹饪酒</a>

-->
                      <!-- <a name="sfbest_Uhead_Uhead_menu_category6-23" class="trackref" href="/mall/8551-0-0-0-0-2-0-0-0-0-0.html">汤料/底料</a>

-->
                      <!-- <a name="sfbest_Uhead_Uhead_menu_category6-24" class="trackref" href="/multi/8439_8457_8467_8495_8507-0-0-0-0-2-0-0-0-0-0.html">

下饭菜</a>
-->
                      <!-- <a name="sfbest_Uhead_Uhead_menu_category6-25" class="trackref" href="/mall/8517-0-0-0-0-2-0-0-0-0-0.html">其他</a> -->
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category6-26" class="trackref" href="/mall/7661-0-0-0-0-2-0-0-0-0-0.html">南北干货

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category6-27" class="trackref" href="/mall/8421-0-0-0-0-2-0-0-0-0-0.html">枣</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-28" class="trackref" href="/mall/8425-0-0-0-0-2-0-0-0-0-0.html">菌菇</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-29" class="trackref" href="/mall/8417-0-0-0-0-2-0-0-0-0-0.html">木耳/银耳</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-30" class="trackref" href="/mall/8423-0-0-0-0-2-0-0-0-0-0.html">桂圆</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-31" class="trackref" href="/mall/8419-0-0-0-0-2-0-0-0-0-0.html">枸杞/莲子</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-32" class="trackref" href="/mall/8415-0-0-0-0-2-0-0-0-0-0.html">海产干货</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-33" class="trackref" href="/mall/8405-0-0-0-0-2-0-0-0-0-0.html">滋补品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-34" class="trackref" href="/mall/8413-0-0-0-0-2-0-0-0-0-0.html">菜干/粉丝</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-35" class="trackref" href="/mall/8407-0-0-0-0-2-0-0-0-0-0.html">汤料</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-36" class="trackref" href="/mall/8409-0-0-0-0-2-0-0-0-0-0.html">其他</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-37" class="trackref" href="/mall/8411-0-0-0-0-2-0-0-0-0-0.html">礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category6-38" class="trackref" href="/mall/7449-0-0-0-0-2-0-0-0-0-0.html">方便速食

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category6-39" class="trackref" href="/multi/8545_8549-0-0-0-0-2-0-0-0-0-0.html">面条</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-40" class="trackref" href="/mall/8547-0-0-0-0-2-0-0-0-0-0.html">意大利面</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-41" class="trackref" href="/multi/8553_8551-0-0-0-0-2-0-0-0-0-0.html">方便面</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-42" class="trackref" href="/multi/8543_8541_8539-0-0-0-0-2-0-0-0-0-0.html">罐头</a>
                      <a name="sfbest_Uhead_Uhead_menu_category6-43" class="trackref" href="/mall/8537-0-0-0-0-2-0-0-0-0-0.html">其他</a>
                    </dd>



                  </dl>

                </div>
                <div class="i-img"><a href="/html/activity/1528190712.html" target="_blank"><img
                        src="picture/1528248699.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="tea"></p>
              <a class="trackref" href="/mall/7451-0-0-0-0-2-0-0-0-0-0.html" fro_id="7" target="_blank" name="sfbest_hp_hp_menu_category7-hot0">冲调茶饮

              </a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/8597-0-0-0-0-2-0-0-0-0-0.html" name="sfbest_hp_hp_menu_category7-hot1" target="_blank">蜂蜜</a></li>
              <li><a href="/mall/8611-0-0-0-0-2-0-0-0-0-0.html" name="sfbest_hp_hp_menu_category7-hot2" target="_blank">咖啡</a></li>
              <li><a href="/mall/8585-0-0-0-0-2-0-0-0-0-0.html" name="sfbest_hp_hp_menu_category7-hot3" target="_blank">麦片</a></li>
              <li><a href="/mall/7687-0-0-0-0-2-0-0-0-0-0.html" name="sfbest_hp_hp_menu_category7-hot4" target="_blank">茗茶</a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category7-1" class="trackref" href="/mall/7691-0-0-0-0-2-0-0-0-0-0.html">休闲冲饮

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category7-2" class="trackref" href="/mall/8597-0-0-0-0-2-0-0-0-0-0.html">蜂蜜/果酱</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-3" class="trackref" href="/mall/8585-0-0-0-0-2-0-0-0-0-0.html">麦片</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-4" class="trackref" href="/mall/8589-0-0-0-0-2-0-0-0-0-0.html">成人奶粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-5" class="trackref" href="/mall/8581-0-0-0-0-2-0-0-0-0-0.html">冲饮谷物</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-6" class="trackref" href="/mall/8587-0-0-0-0-2-0-0-0-0-0.html">谷物粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-8" class="trackref" href="/mall/8599-0-0-0-0-2-0-0-0-0-0.html">柚子茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-9" class="trackref" href="/mall/8595-0-0-0-0-2-0-0-0-0-0.html">花茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-10" class="trackref" href="/mall/8577-0-0-0-0-2-0-0-0-0-0.html">黑糖</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-11" class="trackref" href="/multi/8579_8591-0-0-0-0-2-0-0-0-0-0.html">其它</a>
                    </dd>

                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category7-13" class="trackref" href="/mall/7693-0-0-0-0-2-0-0-0-0-0.html">咖啡/伴侣

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category7-14" class="trackref" href="/mall/8611-0-0-0-0-2-0-0-0-0-0.html">速溶咖啡</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-15" class="trackref" href="/mall/8609-0-0-0-0-2-0-0-0-0-0.html">咖啡粉/豆</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-17" class="trackref" href="/mall/8607-0-0-0-0-2-0-0-0-0-0.html">可可粉</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category7-20" class="trackref" href="/mall/7689-0-0-0-0-2-0-0-0-0-0.html" >进口茶

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category7-21" class="trackref" href="/mall/8575-0-0-0-0-2-0-0-0-0-0.html" >西式茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-23" class="trackref" href="/mall/8571-0-0-0-0-2-0-0-0-0-0.html" >茶包</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-24" class="trackref" href="/mall/8569-0-0-0-0-2-0-0-0-0-0.html" >礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category7-25" class="trackref" href="/mall/7687-0-0-0-0-2-0-0-0-0-0.html">国产茗茶

                      </a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category7-26" class="trackref" href="/mall/8567-0-0-0-0-2-0-0-0-0-0.html">绿茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-27" class="trackref" href="/mall/8565-0-0-0-0-2-0-0-0-0-0.html">红茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-29" class="trackref" href="/mall/8563-0-0-0-0-2-0-0-0-0-0.html">黑茶</a>
                      <a name="sfbest_Uhead_Uhead_menu_category7-31" class="trackref" href="/mall/8559-0-0-0-0-2-0-0-0-0-0.html">青茶</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1528079651.html" target="_blank"><img

                        src="picture/1528109637.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
          <div class="item">
        <span class="i-master">
            <h3 class="dev">
              <p class="health"></p>
              <a class="trackref" href="/ht" fro_id="8" target="_blank" name="sfbest_Uhead_Uhead_menu_category8-hot0">优选国际</a>
            </h3>
            <ul class="subCat">
              <li><a href="/mall/7713-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1" name="sfbest_Uhead_Uhead_menu_category8-hot1" target="_blank">奶粉

              </a></li>
              <li><a href="/mall/7733-0-0-0-0-2-0-0-0-0-0.html?isOversea=1&modHt=1" name="sfbest_Uhead_Uhead_menu_category8-hot2" target="_blank">彩妆

              </a></li>
              <li><a href="/mall/7455-0-0-0-0-2-0-0-0-0-0.html?isOversea=1&modHt=1" name="sfbest_Uhead_Uhead_menu_category8-hot3" target="_blank">营养

              </a></li>
              <li><a href="/mall/7465-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1" name="sfbest_Uhead_Uhead_menu_category8-hot4" target="_blank">家居用品

              </a></li>
            </ul>
            <s></s>
        </span>
            <div class="i-cm">
              <div class="i-left">
                <div class="cat-sort">
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category8-1" class="trackref" href="/mall/7457-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">母

                          婴食品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category8-2" class="trackref" href="/multi/8705_8707-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">奶粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-3" class="trackref" href="/mall/8715-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">一

                        段</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-4" class="trackref" href="/mall/8713-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">二

                        段</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-5" class="trackref" href="/mall/8711-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">三

                        段</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-6" class="trackref" href="/mall/8709-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">四

                        段</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-7" class="trackref" href="/mall/8703-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">羊

                        奶粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-9" class="trackref" href="/multi/8731_8725_8723_8721-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">辅食</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-10" class="trackref" href="/mall/8729-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        米粉/米糊</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-11" class="trackref" href="/mall/8719-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        宝宝零食</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-12" class="trackref" href="/mall/8741-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">DHA</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-13" class="trackref" href="/mall/8743-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        钙铁锌</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-14" class="trackref" href="/mall/8735-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        维生素</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-15" class="trackref" href="/mall/8739-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        益生菌</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-16" class="trackref" href="/mall/8737-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        鱼肝油</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-18" class="trackref" href="/mall/8701-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        特殊配方奶粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-19" class="trackref" href="/mall/8717-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        孕妇奶粉</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-17" class="trackref" href="/mall/8733-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        其他</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong><a name="sfbest_Uhead_Uhead_menu_category8-20" class="trackref" href="/mall/7459-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">母婴用品</a></strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category8-21" class="trackref" href="/mall/7729-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        纸尿裤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-22" class="trackref" href="/mall/8795-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        拉拉裤</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-23" class="trackref" href="/mall/7727-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        婴幼洗护</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-24" class="trackref" href="/mall/8783-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        婴儿湿巾</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-25" class="trackref" href="/mall/8791-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        驱蚊防虫</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-27" class="trackref" href="/mall/8763-0-0-0-0-2-0-0-0-0-0.html">安全座椅</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-28" class="trackref" href="/mall/7725-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        喂养用品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-29" class="trackref" href="/mall/7719-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        妈妈用品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-30" class="trackref" href="/mall/8757-0-0-0-0-2-0-0-0-0-0.html">其他</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category8-31" class="trackref" href="/multi/7461_7463-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">美妆个护</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category8-32" class="trackref" href="/mall/7731-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        面部护理</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-33" class="trackref" href="/mall/7733-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        缤纷彩妆</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-34" class="trackref" href="/mall/7743-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        口腔护理</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-35" class="trackref" href="/mall/7741-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        美发护发</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-36" class="trackref" href="/multi/7731_7739-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">身体护理</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-37" class="trackref" href="/mall/7739-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        沐浴用品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-38" class="trackref" href="/mall/7735-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        美容工具</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-39" class="trackref" href="/mall/7737-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        女性护理</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-40" class="trackref" href="/mall/7745-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        男性洗护</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-41" class="trackref" href="/mall/7747-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        计生用品</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-42" class="trackref" href="/mall/7749-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        其它</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category8-43" class="trackref" href="/mall/7455-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                          营养保健</a>
                      </strong>
                    </dt>

                    <dd>






                      <a name="sfbest_Uhead_Uhead_menu_category8-44" class="trackref" href="/mall/7709-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        滋补养生</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-45" class="trackref" href="/multi/7707_7711-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">营养补充</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-46" class="trackref" href="/mall/7707-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        健康养护</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-47" class="trackref" href="/multi/8649_8651_8661-0-0-0-0-0-0-0-0-0-0.html?

isOversea=1&modHt=1">女士保养</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-48" class="trackref" href="/multi/8657_8659_8663-0-0-0-0-2-0-0-0-0-0.html?

isOversea=1&modHt=1">关爱老年</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-49" class="trackref" href="/multi/8639_8689-0-0-0-0-2-0-0-0-0-0.html?

isOversea=1&modHt=1">其他</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-50" class="trackref" href="/multi/8641_8675_8691-0-0-0-0-2-0-0-0-0-0.html?

isOversea=1&modHt=1">礼盒</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category8-51" class="trackref" href="/mall/7465-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                          家居用品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category8-52" class="trackref" href="/mall/7751-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        厨房用具</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-54" class="trackref" href="/mall/7755-0-0-0-0-0-0-0-0-0-0.html?isOversea=1&modHt=1">

                        清洁用具</a>
                    </dd>
                  </dl>
                  <dl>
                    <dt>
                      <strong>
                        <a name="sfbest_Uhead_Uhead_menu_category8-51" class="trackref" href="   /mall/9003-0-0-0-0-2-0-0-0-0-0.html">

                          进口食品</a>
                      </strong>
                    </dt>
                    <dd>
                      <a name="sfbest_Uhead_Uhead_menu_category8-52" class="trackref" href="   /mall/9005-0-0-0-0-2-0-0-0-0-0.html">

                        休闲零食</a>
                      <a name="sfbest_Uhead_Uhead_menu_category8-54" class="trackref" href="   /mall/9011-0-0-0-0-2-0-0-0-0-0.html">

                        冲调饮品</a>
                    </dd>
                  </dl>
                </div>
                <div class="i-img"><a href="/html/activity/1528078218.html" target="_blank"><img

                        src="picture/1528108624.jpg"></a></div>
              </div>
              <div class="i-right"> <span onClick="$('.item').removeClass('hover')" class="i-close"></span> </div>
            </div>
          </div>
        </div>

        <!----百度统计代码开始------->
        <script>
          var _hmt = _hmt || [];
          (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?56b4bab8080250772f08703b41839413";
            var s  = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
          })();
        </script>
        <!----百度统计代码结束------->
      </div>
    </div>
    <!-- menufloat -->
    <div class="menu1">
      <ul>
        <li><a name="sfbest_hp_hp_nav_nav1" href="http://www.sfbest.com" class="trackref btndown">首页</a></li>
        <li id="cat1"><a name="sfbest_hp_hp_nav_nav3" href="/fresh/" class="trackref">优选生鲜</a></li>
        <li><a target="_blank" href="/html/activity/1449559102.html#trackref=sfbest_hp_hp_nav_nav11" >优选厨房</a></li>
        <li id="cat2"><a target="_blank" href="/ht" rel="nofollow">优选国际</a></li>
        <li id="cat3"><a target="_blank" href="/qiye/" rel="nofollow">企业专区</a></li>
        <li><a target="_blank" href="/paidMember/" rel="nofollow">优选会员</a></li>
        <li class="ad"><a name="sfbest_hp_hp_head_ad_1" class="trackref" href="/html/web/card.html?p=1" target="_blank"><img alt="优选卡 送健康" src="picture/7a80fda907bf5107f6967add2a304a51.jpg" width="196" height="38"/></a></li>
      </ul>
    </div>
    <span class="clear"></span>
  </div>
</div>

<!-- row1 -->
<div class="slide_show" id="slide_show">
  <div class="indexW">
    <div id="index_slide" class="slide_wrap">
      <ol>
        <li>
          <a name="sfbest_hp_hp_focus_1" class="fore_pic trackref" href="/html/activity/1528092873.html" target="_blank"><img id="lunbo_1" alt="综合-端午至，粽多惊喜，买1送1" src="picture/f2dcca79620c9227f4032518805c13f5.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_2" class="fore_pic trackref" href="/html/activity/1528083243.html" target="_blank"><img id="lunbo_2" alt="综合-粽情端午 家的味道" src="picture/5f5473e13d4edee5ffc76ade0a6f9545.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_3" class="fore_pic trackref" href="/html/activity/1528079833.html" target="_blank"><img id="lunbo_3" alt="粮油-《端午家乡粽DIY 爆款食材直降大促》" src="picture/7e4882979e18d7ef9e76096628723b27.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_4" class="fore_pic trackref" href="/html/activity/1527820296.html" target="_blank"><img id="lunbo_4" alt="酒水-《世界杯酒要狂欢》" src="picture/ab26719c5872d5ab539b2d6f9e48bd0a.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_5" class="fore_pic trackref" href="/html/activity/1528092721.html" target="_blank"><img id="lunbo_5" alt="生鲜-为世界杯打Call！虾闹一夏" src="picture/f1c6ef217a4346e528d6529e69ea593b.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_6" class="fore_pic trackref" href="/html/activity/1528091747.html" target="_blank"><img id="lunbo_6" alt="休食-《父爱如山 零食送礼买1送1》" src="picture/4fb462ad86f968f665fd4e9f37c30f7b.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_7" class="fore_pic trackref" href="/html/activity/1528092774.html" target="_blank"><img id="lunbo_7" alt="激情世界杯，陪老爸一起嗨" src="picture/343483d51e521aea048b95788c6f495f.jpg" /></a>
        </li>
        <li>
          <a name="sfbest_hp_hp_focus_8" class="fore_pic trackref" href="/html/activity/1528078218.html" target="_blank"><img id="lunbo_8" alt="海淘-世界杯来啦！观赛好物提前购" src="picture/18f0780bcab84be076349f00463d6ede.jpg" /></a>
        </li>
      </ol>
    </div>
    <div class="rSide">
      <a name="sfbest_hp_hp_focus_right-ad1" class="a-img r-img1 trackref" href="/html/activity/1528191728.html" target="_blank">
        <img alt="《荔枝》" src="picture/f7639eadff8228dd584b900a77ce387a.jpg"/>
        <div class="rmask"></div>
      </a>
      <a name="sfbest_hp_hp_focus_right-ad2" class=" a-img r-img2 trackref" href="/html/activity/1528092993.html" target="_blank">
        <img s alt="来自世界杯东道主の地道味" src="picture/ec368322cb0e60dd1440c77278b03c85.jpg"/>
        <div class="rmask"></div>
      </a>

      <a name="sfbest_hp_hp_focus_right-ad3" class="a-img r-img3 trackref" href="/html/activity/1528184910.html" target="_blank">
        <img  alt="我们的眼睛喜欢怎么吃" src="picture/2241243076145e8dc106a19e64662699.jpg"/>
        <div class="rmask"></div>
      </a>
    </div>
  </div>
  <ul class="none" id="lunboNum">
    <li class="cur">1</li>
    <li class="">2</li>
    <li class="">3</li>
    <li class="">4</li>
    <li class="">5</li>
    <li class="">6</li>
    <li class="">7</li>
    <li class="">8</li>
  </ul>
  <div class="indexbg" id="indexbg">
    <dl>
      <dd style="background:#2f292e;"></dd>
      <dd style="background:#fefaf1;"></dd>
      <dd style="background:#fff5de;"></dd>
      <dd style="background:#5c5880;"></dd>
      <dd style="background:#3a3f47;"></dd>
      <dd style="background:#f4fce7;"></dd>
      <dd style="background:#78412b;"></dd>
      <dd style="background:#3b4e0e;"></dd>
    </dl>
  </div>
</div>

<!-- focus end -->
<div class="thefifthyear">
  <div class="mc">5周年庆</div>
</div>

<div class="indexW mt1">
  <div class="bestbuy">
    <!-- 口碑甄选 start -->
    <div class="b_left">
      <h2>优选必买<span></span></h2>
      <ul class="bbig" id="bigPerfect">

        <c:forEach items="${list}" var="i">
          <li class="price_list0" goods="219345" eid="b_219345_0" id="cx_b_219345_0">
            <a name="sfbest_hp_hp_goods_big-item1" class="trackref" href="/html/products/220/1800219345.html" target="_blank" title="${i.pname}">
              <img class='lazy' data="${i.pimage}" alt="${i.pdesc}"/>
            </a>
            <a class="a_buy" href="/html/products/220/1800219345.html" target="_blank" title="${i.pdesc}">${i.pdesc}</a>
            <%--<em style='color:red;'>手机</em>--%>
            <div class="a_price" id="priceK_b_219345_0"><span><i>￥</i>${i.shop_price}</span><span><b>会员价</b><i>￥</i>${i.shop_price}</span></div>

            <div class="gBtn p-btn bbtn">
              <a indexFlag="1" pid="219345" data_url="http://204.sfimg.cn/2018/1800219345/middle_1800219345_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </li>

        </c:forEach>

      </ul>
    </div>
    <!-- 口碑甄选 end -->
    <div class="rSide1">

      <div class="rImg2">
        <a name="sfbest_hp_hp_news_right-ad" class="trackref" href="/html/activity/1526367747.html" target="_blank"><img salt="吃出好成绩" src="picture/a88032d8374a34ab42dfcd00868de04c.jpg"></a>
      </div>

      <div class="sfNews">
        <div class="rTitle"><h2>优选快报</h2><a href="/www/173/" target="_blank" class="more">更多></a></div>
        <ul>

        </ul>
      </div>
    </div>
  </div>
  <div class="clr"></div>
</div>

<!-- 抢购 -->
<div class="indexW mt2" style="z-index:19;">

  <div class="rSide2">
    <a name="sfbest_hp_hp_Flash_right-ad" class="trackref" href="/html/activity/1516786260.html" target="_blank"><img alt="清仓" class="lazy" data="http://003.sfimg.cn/web/01c23371/01c233715c71e73ce6ca8f0952b246ac.jpg" border="0" /></a>
  </div>
  <div class="timedbuy p_qg" id="timed_pre">
    <div class="ttop">
      <span></span>
      <p class="t_jd">限时抢购</p>
      <p class="ttl">还剩</p>
      <p>
      <dl>
        <dd id="nowHour1">0</dd>
        <dd id="nowHour2">0</dd>
        <dd class="no">时</dd>
        <dd id="nowMin1">0</dd>
        <dd id="nowMin2">0</dd>
        <dd class="no">分</dd>
        <dd id="nowSencond1">0</dd>
        <dd id="nowSencond2">0</dd>
        <dd class="no">秒</dd>
      </dl>
      </p>
      <p class="tt2">结束</p>
      <p class="tright"><a id="t_next">下期预告</a></p>
    </div>
    <div class="tbList">
      <ul id="nowCon" class="clearfix">
      </ul>
    </div>
  </div>
  <div class="timedbuy p_qg" style="display:none;" id="timed_next">
    <div class="ttop">
      <span></span>
      <p class="t_jd">下期预告</p>
      <p class="ttl">还剩</p>
      <p>
      <dl>
        <dd id="nextHour1">0</dd>
        <dd id="nextHour2">0</dd>
        <dd class="no">时</dd>
        <dd id="nextMin1">0</dd>
        <dd id="nextMin2">0</dd>
        <dd class="no">分</dd>
        <dd id="nextSencond1">0</dd>
        <dd id="nextSencond2">0</dd>
        <dd class="no">秒</dd>
      </dl>
      </p>
      <p class="tt2">开始</p>
      <p class="tright"><a id="t_pre">返回抢购</a></p>
    </div>
    <div class="tbList">
      <ul id="nextCon" class="clearfix">
      </ul>
    </div>
  </div>
  <span class="clr"></span>
</div>

<!-- 楼层 start -->
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_1" class="trackref" href="/html/activity/1528250309.html" target="_blank">
    <img alt="《樱桃》" class="lazy" data="http://002.sfimg.cn/web/9511a8fe/9511a8feac3aae1cb15dfde716bdd4b5.jpg"/>
  </a>
</div>
<div class="indexW mt2 ie6 fresh">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="/mall/7419-0-0-0-0-2-0-0-0-0-0.html" target="_blank">水果</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="/mall/7425-0-0-0-0-2-0-0-0-0-0.html" target="_blank">蔬菜</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="/html/products/199/1800198939.html" target="_blank">
        <img alt="椰青" class="lazy" data="http://003.sfimg.cn/web/06ec95e2/06ec95e25c2eb8de8260539e32f9ec09.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-1">
        <li class="price_list1" eid="l_273713_0_0" goods="273713" id="cx_l_273713_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/274/4400273713.html#trackref=sfbest_hp_hp_floor1_item1" target="_blank" title="花果山 36or39号佳沛新西兰金奇异果10个装 82~103g">
              <img class='lazy' data="http://201.sfimg.cn/2017/4400273713/middle_w_4400273713_1_7/160x160.jpg" alt="花果山 36or39号佳沛新西兰金奇异果10个装 82~103g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="273713" data_url="http://204.sfimg.cn/2017/4400273713/middle_w_4400273713_1_7/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item1" class="trackref" href="/html/products/274/4400273713.html#trackref=sfbest_hp_hp_floor1_item1" target="_blank" title="花果山 36or39号佳沛新西兰金奇异果10个装 82~103g">花果山 36or39号佳沛新西兰金奇异果10个装 82~103g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_273713_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286489_0_0" goods="286489" id="cx_l_286489_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4400286489.html#trackref=sfbest_hp_hp_floor1_item2" target="_blank" title="海南妃子笑荔枝 5斤装">
              <img class='lazy' data="http://201.sfimg.cn/2018/4400286489/middle_4400286489_1_01/160x160.jpg" alt="海南妃子笑荔枝 5斤装" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286489" data_url="http://203.sfimg.cn/2018/4400286489/middle_4400286489_1_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item2" class="trackref" href="/html/products/287/4400286489.html#trackref=sfbest_hp_hp_floor1_item2" target="_blank" title="海南妃子笑荔枝 5斤装">海南妃子笑荔枝 5斤装</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286489_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_283471_0_0" goods="283471" id="cx_l_283471_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/284/4400283471.html#trackref=sfbest_hp_hp_floor1_item3" target="_blank" title="微玉 泰国金腰皇芒 3.8~4斤装   腰芒  芒果 4~7颗 1900g">
              <img class='lazy' data="http://204.sfimg.cn/2018/4400283471/middle_w_4400283471_1_1/160x160.jpg" alt="微玉 泰国金腰皇芒 3.8~4斤装   腰芒  芒果 4~7颗 1900g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="283471" data_url="http://204.sfimg.cn/2018/4400283471/middle_w_4400283471_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item3" class="trackref" href="/html/products/284/4400283471.html#trackref=sfbest_hp_hp_floor1_item3" target="_blank" title="微玉 泰国金腰皇芒 3.8~4斤装   腰芒  芒果 4~7颗 1900g">微玉 泰国金腰皇芒 3.8~4斤装   腰芒  芒果 4~7颗 1900g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_283471_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_198939_0_0" goods="198939" id="cx_l_198939_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/199/1800198939.html#trackref=sfbest_hp_hp_floor1_item4" target="_blank" title="泰国 椰青/粒 700g*9粒（整箱装）">
              <img class='lazy' data="http://201.sfimg.cn/2017/1800198939/middle_1800198939_9_01/160x160.jpg" alt="泰国 椰青/粒 700g*9粒（整箱装）" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="198939" data_url="http://203.sfimg.cn/2017/1800198939/middle_1800198939_9_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item4" class="trackref" href="/html/products/199/1800198939.html#trackref=sfbest_hp_hp_floor1_item4" target="_blank" title="泰国 椰青/粒 700g*9粒（整箱装）">泰国 椰青/粒 700g*9粒（整箱装）</a>
          </div>
          <div class="a_price f_price" id="priceL_l_198939_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_283583_0_0" goods="283583" id="cx_l_283583_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/284/4400283583.html#trackref=sfbest_hp_hp_floor1_item5" target="_blank" title="有味有道 福建云霄枇杷20个装 单果重40~50g 20个">
              <img class='lazy' data="http://204.sfimg.cn/2018/4400283583/middle_w_4400283583_1_3/160x160.jpg" alt="有味有道 福建云霄枇杷20个装 单果重40~50g 20个" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="283583" data_url="http://204.sfimg.cn/2018/4400283583/middle_w_4400283583_1_3/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item5" class="trackref" href="/html/products/284/4400283583.html#trackref=sfbest_hp_hp_floor1_item5" target="_blank" title="有味有道 福建云霄枇杷20个装 单果重40~50g 20个">有味有道 福建云霄枇杷20个装 单果重40~50g 20个</a>
          </div>
          <div class="a_price f_price" id="priceL_l_283583_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_288313_0_0" goods="288313" id="cx_l_288313_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/289/4400288313.html#trackref=sfbest_hp_hp_floor1_item6" target="_blank" title="花果山 唐山水蜜桃 3斤 140~170g">
              <img class='lazy' data="http://203.sfimg.cn/2018/4400288313/middle_w_4400288313_1_1/160x160.jpg" alt="花果山 唐山水蜜桃 3斤 140~170g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="288313" data_url="http://204.sfimg.cn/2018/4400288313/middle_w_4400288313_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item6" class="trackref" href="/html/products/289/4400288313.html#trackref=sfbest_hp_hp_floor1_item6" target="_blank" title="花果山 唐山水蜜桃 3斤 140~170g">花果山 唐山水蜜桃 3斤 140~170g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_288313_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_288289_0_0" goods="288289" id="cx_l_288289_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/289/4400288289.html#trackref=sfbest_hp_hp_floor1_item7" target="_blank" title="果缤纷 广西百香果一级大果3斤装 单果：70~100g">
              <img class='lazy' data="http://202.sfimg.cn/2018/4400288289/middle_w_4400288289_1_1/160x160.jpg" alt="果缤纷 广西百香果一级大果3斤装 单果：70~100g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="288289" data_url="http://202.sfimg.cn/2018/4400288289/middle_w_4400288289_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item7" class="trackref" href="/html/products/289/4400288289.html#trackref=sfbest_hp_hp_floor1_item7" target="_blank" title="果缤纷 广西百香果一级大果3斤装 单果：70~100g">果缤纷 广西百香果一级大果3斤装 单果：70~100g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_288289_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_131441_0_0" goods="131441" id="cx_l_131441_0_0">
          <div class="pImg pImg_vip">
            <a href="/html/products/132/1800131441.html#trackref=sfbest_hp_hp_floor1_item8" target="_blank" title="誉福园 湖北橘园土鸡蛋 原生蛋20枚*2（40枚装） 1600g">
              <img class='lazy' data="http://204.sfimg.cn/2015/1800131441/middle_w_1800131441_1_19/160x160.jpg" alt="誉福园 湖北橘园土鸡蛋 原生蛋20枚*2（40枚装） 1600g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="131441" data_url="http://203.sfimg.cn/2015/1800131441/middle_w_1800131441_1_19/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor1_item8" class="trackref" href="/html/products/132/1800131441.html#trackref=sfbest_hp_hp_floor1_item8" target="_blank" title="誉福园 湖北橘园土鸡蛋 原生蛋20枚*2（40枚装） 1600g">誉福园 湖北橘园土鸡蛋 原生蛋20枚*2（40枚装） 1600g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_131441_0_0">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor1_Keywords1" class="trackref" href="/mall/7981-0-0-0-0-2-0-0-0-0-0.html" target="_blank">奇异果</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords2" class="trackref" href="/mall/7965-0-0-0-0-2-0-0-0-0-0.html" target="_blank">梨</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords3" class="trackref" href="/mall/7967-0-0-0-0-2-0-0-0-0-0.html" target="_blank">苹果</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords4" class="trackref" href="/mall/8007-0-0-0-0-2-0-0-0-0-0.html" target="_blank">龙眼</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords5" class="trackref" href="/mall/7971-6870-0-0-0-2-0-0-0-0-0.html" target="_blank">柑橘</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords6" class="trackref" href="/mall/7995-0-0-0-0-2-0-0-0-0-0.html" target="_blank">椰青</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords7" class="trackref" href="/mall/7969-0-0-0-0-2-0-0-0-0-0.html" target="_blank">柚子</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords8" class="trackref" href="/mall/8113-0-0-0-0-2-0-0-0-0-0.html" target="_blank">蔬菜</a></li>
        <li><a name="sfbest_hp_hp_floor1_Keywords9" class="trackref" href="/mall/7955-0-0-0-0-2-0-0-0-0-0.html" target="_blank">枣</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor1_right-ad" class="ht1 trackref" href="/html/activity/1527659864.html" target="_blank"><img alt="精选仙居杨梅" class="lazy" data="http://004.sfimg.cn/web/2c1970ac/2c1970ac27c0158b9ad4eeb39322b6fb.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1527659864.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_2" class="trackref" href="/html/activity/1528092721.html" target="_blank">
    <img alt="为世界杯打Call！虾闹一夏" class="lazy" data="http://001.sfimg.cn/web/d5ebbbf6/d5ebbbf6212e2f4456e20dc4d3874eb2.jpg"/>
  </a>
</div>
<div class="indexW mt2 baby">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor2_floor-category1" class="trackref" href="/mall/7423-0-0-0-0-2-0-0-0-0-0.html" target="_blank">肉类</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor2_floor-category2" class="trackref" href="/mall/7421-0-0-0-0-2-0-0-0-0-0.html" target="_blank">海鲜</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor2_left-ad" class="trackref" href="/html/activity/1527816762.html" target="_blank">
        <img alt="9.9超值换购牛排or鱼丸" class="lazy" data="http://002.sfimg.cn/web/a203c8f0/a203c8f084bab227f087d5f4885d846f.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-2">
        <li class="price_list1" eid="l_270847_0_1" goods="270847" id="cx_l_270847_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/271/1800270847.html#trackref=sfbest_hp_hp_floor2_item1" target="_blank" title="德国 精选猪肋排块/八戒有肉 600g">
              <img class='lazy' data="http://204.sfimg.cn/2018/1800270847/middle_1800270847_0_1_1/160x160.jpg" alt="德国 精选猪肋排块/八戒有肉 600g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="270847" data_url="http://203.sfimg.cn/2018/1800270847/middle_1800270847_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item1" class="trackref" href="/html/products/271/1800270847.html#trackref=sfbest_hp_hp_floor2_item1" target="_blank" title="德国 精选猪肋排块/八戒有肉 600g">德国 精选猪肋排块/八戒有肉 600g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_270847_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_273025_0_1" goods="273025" id="cx_l_273025_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/274/4600273025.html#trackref=sfbest_hp_hp_floor2_item2" target="_blank" title="潮香村 儿童西冷牛排 126g">
              <img class='lazy' data="http://201.sfimg.cn/2018/4600273025/middle_4600273025_1_01/160x160.jpg" alt="潮香村 儿童西冷牛排 126g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="273025" data_url="http://202.sfimg.cn/2018/4600273025/middle_4600273025_1_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item2" class="trackref" href="/html/products/274/4600273025.html#trackref=sfbest_hp_hp_floor2_item2" target="_blank" title="潮香村 儿童西冷牛排 126g">潮香村 儿童西冷牛排 126g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_273025_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_271115_0_1" goods="271115" id="cx_l_271115_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/272/1800271115.html#trackref=sfbest_hp_hp_floor2_item3" target="_blank" title="新西兰 手工静腌眼肉牛排/澳纽宝 180g">
              <img class='lazy' data="http://203.sfimg.cn/2017/1800271115/middle_1800271115_0_1_1/160x160.jpg" alt="新西兰 手工静腌眼肉牛排/澳纽宝 180g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="271115" data_url="http://203.sfimg.cn/2017/1800271115/middle_1800271115_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item3" class="trackref" href="/html/products/272/1800271115.html#trackref=sfbest_hp_hp_floor2_item3" target="_blank" title="新西兰 手工静腌眼肉牛排/澳纽宝 180g">新西兰 手工静腌眼肉牛排/澳纽宝 180g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_271115_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_275305_0_1" goods="275305" id="cx_l_275305_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/276/4600275305.html#trackref=sfbest_hp_hp_floor2_item4" target="_blank" title="新西兰 手锤菲力牛排/嘻客小牛 190g">
              <img class='lazy' data="http://202.sfimg.cn/2017/4600275305/middle_4600275305_0_1_1/160x160.jpg" alt="新西兰 手锤菲力牛排/嘻客小牛 190g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="275305" data_url="http://204.sfimg.cn/2017/4600275305/middle_4600275305_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item4" class="trackref" href="/html/products/276/4600275305.html#trackref=sfbest_hp_hp_floor2_item4" target="_blank" title="新西兰 手锤菲力牛排/嘻客小牛 190g">新西兰 手锤菲力牛排/嘻客小牛 190g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_275305_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_257729_0_1" goods="257729" id="cx_l_257729_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/258/1800257729.html#trackref=sfbest_hp_hp_floor2_item5" target="_blank" title="三都港 无公害黄花鱼（两条装） 600g">
              <img class='lazy' data="http://201.sfimg.cn/2018/1800257729/middle_1800257729_5_5/160x160.jpg" alt="三都港 无公害黄花鱼（两条装） 600g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="257729" data_url="http://201.sfimg.cn/2018/1800257729/middle_1800257729_5_5/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item5" class="trackref" href="/html/products/258/1800257729.html#trackref=sfbest_hp_hp_floor2_item5" target="_blank" title="三都港 无公害黄花鱼（两条装） 600g">三都港 无公害黄花鱼（两条装） 600g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_257729_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_259729_0_1" goods="259729" id="cx_l_259729_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/260/1800259729.html#trackref=sfbest_hp_hp_floor2_item6" target="_blank" title="喜福多 半壳扇贝 500g">
              <img class='lazy' data="http://204.sfimg.cn/2018/1800259729/middle_1800259729_0_1_1/160x160.jpg" alt="喜福多 半壳扇贝 500g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="259729" data_url="http://202.sfimg.cn/2018/1800259729/middle_1800259729_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item6" class="trackref" href="/html/products/260/1800259729.html#trackref=sfbest_hp_hp_floor2_item6" target="_blank" title="喜福多 半壳扇贝 500g">喜福多 半壳扇贝 500g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_259729_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_267703_0_1" goods="267703" id="cx_l_267703_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/268/1800267703.html#trackref=sfbest_hp_hp_floor2_item7" target="_blank" title="鲜动生活 福建冻鲍鱼 210g">
              <img class='lazy' data="http://203.sfimg.cn/2018/1800267703/middle_1800267703_9_01/160x160.jpg" alt="鲜动生活 福建冻鲍鱼 210g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="267703" data_url="http://202.sfimg.cn/2018/1800267703/middle_1800267703_9_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item7" class="trackref" href="/html/products/268/1800267703.html#trackref=sfbest_hp_hp_floor2_item7" target="_blank" title="鲜动生活 福建冻鲍鱼 210g">鲜动生活 福建冻鲍鱼 210g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_267703_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_266223_0_1" goods="266223" id="cx_l_266223_0_1">
          <div class="pImg pImg_vip">
            <a href="/html/products/267/1800266223.html#trackref=sfbest_hp_hp_floor2_item8" target="_blank" title="新西兰 速冻野生银鳕鱼（儿童系列）/海鲜盛宴ocean gala 150g">
              <img class='lazy' data="http://203.sfimg.cn/2017/1800266223/middle_1800266223_0_1_1/160x160.jpg" alt="新西兰 速冻野生银鳕鱼（儿童系列）/海鲜盛宴ocean gala 150g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="266223" data_url="http://202.sfimg.cn/2017/1800266223/middle_1800266223_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor2_item8" class="trackref" href="/html/products/267/1800266223.html#trackref=sfbest_hp_hp_floor2_item8" target="_blank" title="新西兰 速冻野生银鳕鱼（儿童系列）/海鲜盛宴ocean gala 150g">新西兰 速冻野生银鳕鱼（儿童系列）/海鲜盛宴ocean gala 150g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_266223_0_1">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor2_Keywords1" class="trackref" href="/mall/7543-0-0-0-0-2-0-0-0-0-0.html" target="_blank">牛肉</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords2" class="trackref" href="/mall/7545-0-0-0-0-2-0-0-0-0-0.html" target="_blank">猪肉</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords3" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E8%82%8B%E6%8E%92" target="_blank">肋排</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords4" class="trackref" href="/mall/7547-0-0-0-0-2-0-0-0-0-0.html" target="_blank">羊肉</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords5" class="trackref" href="/mall/7549-0-0-0-0-2-0-0-0-0-0.html" target="_blank">禽类</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords6" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;deviceId=0&amp;couponTypeId=0&amp;keyword=鳕" target="_blank">鳕鱼</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords7" class="trackref" href="/mall/8105-0-0-0-0-2-0-0-0-0-0.html" target="_blank">肉丸</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords8" class="trackref" href="/multi/7527_7703-11155-0-0-0-2-0-0-0-0-0.html" target="_blank">鲜元素</a></li>
        <li><a name="sfbest_hp_hp_floor2_Keywords9" class="trackref" href="/multi/7527_7703-10757-0-0-0-2-0-0-0-0-0.html" target="_blank">禧美海产</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor2_right-ad" class="ht1 trackref" href="/html/activity/1527821454.html" target="_blank"><img alt="椰子鸡，一锅香甜的夏天味道" class="lazy" data="http://004.sfimg.cn/web/6cfe5266/6cfe5266b8e1773c3893717c33c10d94.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1527821454.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_3" class="trackref" href="/html/activity/1528092873.html" target="_blank">
    <img alt="端午至，粽多惊喜，买1送1" class="lazy" data="http://004.sfimg.cn/web/3eca6245/3eca6245b1ba382f6872d7512aeed985.jpg"/>
  </a>
</div>
<div class="indexW mt2 food">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor3_floor-category1" class="trackref" href="/multi/7427_7429_7431-0-0-0-0-2-0-0-0-0-0.html" target="_blank">熟食蛋奶</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor3_left-ad" class="trackref" href="/html/activity/1527751890.html" target="_blank">
        <img alt="夏日救命草，哈根达斯冰淇淋" class="lazy" data="http://004.sfimg.cn/web/06e62c04/06e62c04fef70666cd7f9ed9f84a7cc6.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-3">
        <li class="price_list1" eid="l_151947_0_2" goods="151947" id="cx_l_151947_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/152/1800151947.html#trackref=sfbest_hp_hp_floor3_item1" target="_blank" title="Haagen-Dazs哈根达斯 草莓冰淇淋 81g">
              <img class='lazy' data="http://201.sfimg.cn/2018/1800151947/middle_1800151947_9_01/160x160.jpg" alt="Haagen-Dazs哈根达斯 草莓冰淇淋 81g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="151947" data_url="http://204.sfimg.cn/2018/1800151947/middle_1800151947_9_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item1" class="trackref" href="/html/products/152/1800151947.html#trackref=sfbest_hp_hp_floor3_item1" target="_blank" title="Haagen-Dazs哈根达斯 草莓冰淇淋 81g">Haagen-Dazs哈根达斯 草莓冰淇淋 81g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_151947_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_201451_0_2" goods="201451" id="cx_l_201451_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/202/1800201451.html#trackref=sfbest_hp_hp_floor3_item2" target="_blank" title="避风塘 鲜肉糯米烧卖 240g（30g*8只）">
              <img class='lazy' data="http://202.sfimg.cn/2018/1800201451/middle_1800201451_1_01/160x160.jpg" alt="避风塘 鲜肉糯米烧卖 240g（30g*8只）" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="201451" data_url="http://204.sfimg.cn/2018/1800201451/middle_1800201451_1_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item2" class="trackref" href="/html/products/202/1800201451.html#trackref=sfbest_hp_hp_floor3_item2" target="_blank" title="避风塘 鲜肉糯米烧卖 240g（30g*8只）">避风塘 鲜肉糯米烧卖 240g（30g*8只）</a>
          </div>
          <div class="a_price f_price" id="priceL_l_201451_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_290311_0_2" goods="290311" id="cx_l_290311_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/291/4900290311.html#trackref=sfbest_hp_hp_floor3_item3" target="_blank" title="普隆别尔Plombir 巧克力末冰淇淋 50g*6">
              <img class='lazy' data="http://204.sfimg.cn/2018/4900285899/middle_4900285899_1_1/160x160.jpg" alt="普隆别尔Plombir 巧克力末冰淇淋 50g*6" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="290311" data_url="http://201.sfimg.cn/2018/4900285899/middle_4900285899_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item3" class="trackref" href="/html/products/291/4900290311.html#trackref=sfbest_hp_hp_floor3_item3" target="_blank" title="普隆别尔Plombir 巧克力末冰淇淋 50g*6">普隆别尔Plombir 巧克力末冰淇淋 50g*6</a>
          </div>
          <div class="a_price f_price" id="priceL_l_290311_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286057_0_2" goods="286057" id="cx_l_286057_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4900286057.html#trackref=sfbest_hp_hp_floor3_item4" target="_blank" title="宾格瑞苏打味冰棒131g*5">
              <img class='lazy' data="http://201.sfimg.cn/2017/1800268185/middle_1800268185_1_3/160x160.jpg" alt="宾格瑞苏打味冰棒131g*5" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286057" data_url="http://201.sfimg.cn/2017/1800268185/middle_1800268185_1_3/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item4" class="trackref" href="/html/products/287/4900286057.html#trackref=sfbest_hp_hp_floor3_item4" target="_blank" title="宾格瑞苏打味冰棒131g*5">宾格瑞苏打味冰棒131g*5</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286057_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_275593_0_2" goods="275593" id="cx_l_275593_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/276/4900275593.html#trackref=sfbest_hp_hp_floor3_item5" target="_blank" title="俏侬 牛油蛋挞皮（51个装） 1020g">
              <img class='lazy' data="http://204.sfimg.cn/2017/4900275593/middle_4900275593_0_5/160x160.jpg" alt="俏侬 牛油蛋挞皮（51个装） 1020g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="275593" data_url="http://202.sfimg.cn/2017/4900275593/middle_4900275593_0_5/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item5" class="trackref" href="/html/products/276/4900275593.html#trackref=sfbest_hp_hp_floor3_item5" target="_blank" title="俏侬 牛油蛋挞皮（51个装） 1020g">俏侬 牛油蛋挞皮（51个装） 1020g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_275593_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_34987_0_2" goods="34987" id="cx_l_34987_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/35/1800034987.html#trackref=sfbest_hp_hp_floor3_item6" target="_blank" title="和润 纯酸奶 400g">
              <img class='lazy' data="http://203.sfimg.cn/2018/1800034987/middle_1800034987_1_3/160x160.jpg" alt="和润 纯酸奶 400g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="34987" data_url="http://201.sfimg.cn/2018/1800034987/middle_1800034987_1_3/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item6" class="trackref" href="/html/products/35/1800034987.html#trackref=sfbest_hp_hp_floor3_item6" target="_blank" title="和润 纯酸奶 400g">和润 纯酸奶 400g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_34987_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_34993_0_2" goods="34993" id="cx_l_34993_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/35/1800034993.html#trackref=sfbest_hp_hp_floor3_item7" target="_blank" title="和润 低脂酸牛奶 910g">
              <img class='lazy' data="http://201.sfimg.cn/2018/1800034993/middle_1800034993_1_1/160x160.jpg" alt="和润 低脂酸牛奶 910g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="34993" data_url="http://203.sfimg.cn/2018/1800034993/middle_1800034993_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item7" class="trackref" href="/html/products/35/1800034993.html#trackref=sfbest_hp_hp_floor3_item7" target="_blank" title="和润 低脂酸牛奶 910g">和润 低脂酸牛奶 910g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_34993_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_34999_0_2" goods="34999" id="cx_l_34999_0_2">
          <div class="pImg pImg_vip">
            <a href="/html/products/35/1800034999.html#trackref=sfbest_hp_hp_floor3_item8" target="_blank" title="和润 日式酸奶 1.05kg">
              <img class='lazy' data="http://202.sfimg.cn/2018/1800034999/middle_1800034999_9_1/160x160.jpg" alt="和润 日式酸奶 1.05kg" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="34999" data_url="http://201.sfimg.cn/2018/1800034999/middle_1800034999_9_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor3_item8" class="trackref" href="/html/products/35/1800034999.html#trackref=sfbest_hp_hp_floor3_item8" target="_blank" title="和润 日式酸奶 1.05kg">和润 日式酸奶 1.05kg</a>
          </div>
          <div class="a_price f_price" id="priceL_l_34999_0_2">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor3_Keywords1" class="trackref" href="/mall/8179-0-0-0-0-2-0-0-0-0-0.html" target="_blank">饺子馄饨</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords2" class="trackref" href="/mall/8181-0-0-0-0-2-0-0-0-0-0.html" target="_blank">包点</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords3" class="trackref" href="/mall/7695-0-0-0-0-2-0-0-0-0-0.html" target="_blank">粽子</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords4" class="trackref" href="/mall/8175-0-0-0-0-2-0-0-0-0-0.html" target="_blank">匹萨</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords5" class="trackref" href="/mall/7591-0-0-0-0-2-0-0-0-0-0.html" target="_blank">低温酸奶</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords6" class="trackref" href="/mall/7695-3337-0-0-0-2-0-0-0-0-0.html" target="_blank">荃盛</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords7" class="trackref" href="/mall/7589-0-0-0-0-2-0-0-0-0-0.html" target="_blank">低温鲜奶</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords8" class="trackref" href="/multi/7593_7595-0-0-0-0-2-0-0-0-0-0.html" target="_blank">奶酪黄油</a></li>
        <li><a name="sfbest_hp_hp_floor3_Keywords9" class="trackref" href="/mall/7695-2095-0-0-0-2-0-0-0-0-0.html" target="_blank">五芳斋</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor3_right-ad" class="ht1 trackref" href="/html/activity/1527756015.html" target="_blank"><img alt="匹萨42.8元4件，鳕鱼买1送1" class="lazy" data="http://001.sfimg.cn/web/43e06b25/43e06b25a09be471d93d976513a6f57d.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1527756015.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_4" class="trackref" href="/html/activity/1528079833.html" target="_blank">
    <img alt="《端午家乡粽DIY 爆款食材直降大促》" class="lazy" data="http://004.sfimg.cn/web/83e86dbe/83e86dbe21500f50ff486889b0246bc0.jpg"/>
  </a>
</div>
<div class="indexW mt2 baby">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor4_floor-category1" class="trackref" href="/mall/7443-0-0-0-0-2-0-0-0-0-0.html" target="_blank">粮油</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor4_floor-category2" class="trackref" href="/mall/7661-0-0-0-0-2-0-0-0-0-0.html" target="_blank">干货</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor4_left-ad" class="trackref" href="/html/activity/1528079585.html" target="_blank">
        <img alt="《帝麦食用油 买1送1/第2件半价》" class="lazy" data="http://002.sfimg.cn/web/2c9ada2d/2c9ada2d3bb1e070d53d9ce2ec9531d8.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-4">
        <li class="price_list1" eid="l_270297_0_3" goods="270297" id="cx_l_270297_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/271/1300270297.html#trackref=sfbest_hp_hp_floor4_item1" target="_blank" title="神明 富山县产日本大米 2kg">
              <img class='lazy' data="http://204.sfimg.cn/2017/1300270297/middle_1300270297_1_0/160x160.jpg" alt="神明 富山县产日本大米 2kg" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="270297" data_url="http://203.sfimg.cn/2017/1300270297/middle_1300270297_1_0/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item1" class="trackref" href="/html/products/271/1300270297.html#trackref=sfbest_hp_hp_floor4_item1" target="_blank" title="神明 富山县产日本大米 2kg">神明 富山县产日本大米 2kg</a>
          </div>
          <div class="a_price f_price" id="priceL_l_270297_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_266687_0_3" goods="266687" id="cx_l_266687_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/267/1300266687.html#trackref=sfbest_hp_hp_floor4_item2" target="_blank" title="BEXA芥花籽油 （海外直采）4L">
              <img class='lazy' data="http://202.sfimg.cn/2017/1300266687/middle_1300266687_1_1_0/160x160.jpg" alt="BEXA芥花籽油 （海外直采）4L" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="266687" data_url="http://204.sfimg.cn/2017/1300266687/middle_1300266687_1_1_0/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item2" class="trackref" href="/html/products/267/1300266687.html#trackref=sfbest_hp_hp_floor4_item2" target="_blank" title="BEXA芥花籽油 （海外直采）4L">BEXA芥花籽油 （海外直采）4L</a>
          </div>
          <div class="a_price f_price" id="priceL_l_266687_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_262561_0_3" goods="262561" id="cx_l_262561_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/263/1300262561.html#trackref=sfbest_hp_hp_floor4_item3" target="_blank" title="绿源井冈 有机山茶油（冷榨） 1L">
              <img class='lazy' data="http://202.sfimg.cn/2017/1300262561/middle_1300262561_1_02/160x160.jpg" alt="绿源井冈 有机山茶油（冷榨） 1L" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="262561" data_url="http://203.sfimg.cn/2017/1300262561/middle_1300262561_1_02/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item3" class="trackref" href="/html/products/263/1300262561.html#trackref=sfbest_hp_hp_floor4_item3" target="_blank" title="绿源井冈 有机山茶油（冷榨） 1L">绿源井冈 有机山茶油（冷榨） 1L</a>
          </div>
          <div class="a_price f_price" id="priceL_l_262561_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_178703_0_3" goods="178703" id="cx_l_178703_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/179/1300178703.html#trackref=sfbest_hp_hp_floor4_item4" target="_blank" title="宁安堡 中宁枸杞贡果礼盒540g（铁盒）">
              <img class='lazy' data="http://203.sfimg.cn/2016/1300178703/middle_1300178703_9_1_5/160x160.jpg" alt="宁安堡 中宁枸杞贡果礼盒540g（铁盒）" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="178703" data_url="http://202.sfimg.cn/2016/1300178703/middle_1300178703_9_1_5/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item4" class="trackref" href="/html/products/179/1300178703.html#trackref=sfbest_hp_hp_floor4_item4" target="_blank" title="宁安堡 中宁枸杞贡果礼盒540g（铁盒）">宁安堡 中宁枸杞贡果礼盒540g（铁盒）</a>
          </div>
          <div class="a_price f_price" id="priceL_l_178703_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_264529_0_3" goods="264529" id="cx_l_264529_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/265/1300264529.html#trackref=sfbest_hp_hp_floor4_item5" target="_blank" title="正官庄 高丽参精丸（免疫调节抗疲劳）（韩国原装进口） 210mg*150">
              <img class='lazy' data="http://203.sfimg.cn/2017/1300264529/middle_1300264529_2_2/160x160.jpg" alt="正官庄 高丽参精丸（免疫调节抗疲劳）（韩国原装进口） 210mg*150" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="264529" data_url="http://204.sfimg.cn/2017/1300264529/middle_1300264529_2_2/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item5" class="trackref" href="/html/products/265/1300264529.html#trackref=sfbest_hp_hp_floor4_item5" target="_blank" title="正官庄 高丽参精丸（免疫调节抗疲劳）（韩国原装进口） 210mg*150">正官庄 高丽参精丸（免疫调节抗疲劳）（韩国原装进口） 210mg*150</a>
          </div>
          <div class="a_price f_price" id="priceL_l_264529_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_214109_0_3" goods="214109" id="cx_l_214109_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/215/1300214109.html#trackref=sfbest_hp_hp_floor4_item6" target="_blank" title="龙标 冰糖即食白官燕 75g*6">
              <img class='lazy' data="http://202.sfimg.cn/2016/1300214109/middle_1300214109_0_0_1/160x160.jpg" alt="龙标 冰糖即食白官燕 75g*6" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="214109" data_url="http://202.sfimg.cn/2016/1300214109/middle_1300214109_0_0_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item6" class="trackref" href="/html/products/215/1300214109.html#trackref=sfbest_hp_hp_floor4_item6" target="_blank" title="龙标 冰糖即食白官燕 75g*6">龙标 冰糖即食白官燕 75g*6</a>
          </div>
          <div class="a_price f_price" id="priceL_l_214109_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_214111_0_3" goods="214111" id="cx_l_214111_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/215/1300214111.html#trackref=sfbest_hp_hp_floor4_item7" target="_blank" title="龙标 龙标冰糖即食金丝官燕 75g">
              <img class='lazy' data="http://201.sfimg.cn/2016/1300214111/middle_1300214111_1_1/160x160.jpg" alt="龙标 龙标冰糖即食金丝官燕 75g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="214111" data_url="http://203.sfimg.cn/2016/1300214111/middle_1300214111_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item7" class="trackref" href="/html/products/215/1300214111.html#trackref=sfbest_hp_hp_floor4_item7" target="_blank" title="龙标 龙标冰糖即食金丝官燕 75g">龙标 龙标冰糖即食金丝官燕 75g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_214111_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_263013_0_3" goods="263013" id="cx_l_263013_0_3">
          <div class="pImg pImg_vip">
            <a href="/html/products/264/1300263013.html#trackref=sfbest_hp_hp_floor4_item8" target="_blank" title="什漠果 和田枣礼盒 2kg">
              <img class='lazy' data="http://202.sfimg.cn/2017/1300263013/middle_1300263013_1_3/160x160.jpg" alt="什漠果 和田枣礼盒 2kg" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="263013" data_url="http://204.sfimg.cn/2017/1300263013/middle_1300263013_1_3/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor4_item8" class="trackref" href="/html/products/264/1300263013.html#trackref=sfbest_hp_hp_floor4_item8" target="_blank" title="什漠果 和田枣礼盒 2kg">什漠果 和田枣礼盒 2kg</a>
          </div>
          <div class="a_price f_price" id="priceL_l_263013_0_3">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor4_Keywords1" class="trackref" href="/multi/7649_7651-0-0-0-0-2-0-0-0-0-0.html" target="_blank">大米</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords2" class="trackref" href="/mall/7657-0-0-0-0-2-0-0-0-0-0.html" target="_blank">橄榄油</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords3" class="trackref" href="/mall/7447-0-0-0-0-2-0-0-0-0-0.html" target="_blank">调味品</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords4" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=香米" target="_blank">香米</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords5" class="trackref" href="/mall/8547-0-0-0-0-2-0-0-0-0-0.html" target="_blank">意大利面</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords6" class="trackref" href="/multi/8385_8403-0-0-0-0-2-0-0-0-0-0.html" target="_blank">礼盒</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords7" class="trackref" href="/mall/8419-0-0-0-0-2-0-0-0-0-0.html" target="_blank">枸杞/莲子</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords8" class="trackref" href="/mall/8421-0-0-0-0-2-0-0-0-0-0.html" target="_blank">红枣</a></li>
        <li><a name="sfbest_hp_hp_floor4_Keywords9" class="trackref" href="/mall/8423-0-0-0-0-2-0-0-0-0-0.html" target="_blank">桂圆</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor4_right-ad" class="ht1 trackref" href="/html/activity/1528079722.html" target="_blank"><img alt="《龙标即食燕窝》" class="lazy" data="http://001.sfimg.cn/web/77abe087/77abe087ff224e37a2a7a3e54109a434.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1528079722.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 drinks">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor5_floor-category1" class="trackref" href="/multi/7411_7413_7415-0-0-0-0-2-0-0-0-0-0.html" target="_blank">休闲糖巧</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor5_left-ad" class="trackref" href="/html/activity/1528107504.html" target="_blank">
        <img alt="《甄选好味 第2件半价》" class="lazy" data="http://003.sfimg.cn/web/590dd5e8/590dd5e8ecb07c5063afa098e338456f.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-5">
        <li class="price_list1" eid="l_286741_0_4" goods="286741" id="cx_l_286741_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286741.html#trackref=sfbest_hp_hp_floor5_item1" target="_blank" title="蒙都 牛板筋香烤味 160g">
              <img class='lazy' data="http://201.sfimg.cn/2018/4000286741/middle_4000286741_9_1/160x160.jpg" alt="蒙都 牛板筋香烤味 160g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286741" data_url="http://203.sfimg.cn/2018/4000286741/middle_4000286741_9_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item1" class="trackref" href="/html/products/287/4000286741.html#trackref=sfbest_hp_hp_floor5_item1" target="_blank" title="蒙都 牛板筋香烤味 160g">蒙都 牛板筋香烤味 160g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286741_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286739_0_4" goods="286739" id="cx_l_286739_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286739.html#trackref=sfbest_hp_hp_floor5_item2" target="_blank" title="蒙都 卤汁牛肉原味 120g">
              <img class='lazy' data="http://203.sfimg.cn/2018/4000286739/middle_4000286739_9_1/160x160.jpg" alt="蒙都 卤汁牛肉原味 120g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286739" data_url="http://203.sfimg.cn/2018/4000286739/middle_4000286739_9_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item2" class="trackref" href="/html/products/287/4000286739.html#trackref=sfbest_hp_hp_floor5_item2" target="_blank" title="蒙都 卤汁牛肉原味 120g">蒙都 卤汁牛肉原味 120g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286739_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_288811_0_4" goods="288811" id="cx_l_288811_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/289/4000288811.html#trackref=sfbest_hp_hp_floor5_item3" target="_blank" title="韩欣 韩国 调味海苔（橄榄油味） 4.5g*12">
              <img class='lazy' data="http://202.sfimg.cn/2018/4000288811/middle_4000288811_1_1/160x160.jpg" alt="韩欣 韩国 调味海苔（橄榄油味） 4.5g*12" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="288811" data_url="http://202.sfimg.cn/2018/4000288811/middle_4000288811_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item3" class="trackref" href="/html/products/289/4000288811.html#trackref=sfbest_hp_hp_floor5_item3" target="_blank" title="韩欣 韩国 调味海苔（橄榄油味） 4.5g*12">韩欣 韩国 调味海苔（橄榄油味） 4.5g*12</a>
          </div>
          <div class="a_price f_price" id="priceL_l_288811_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286577_0_4" goods="286577" id="cx_l_286577_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286577.html#trackref=sfbest_hp_hp_floor5_item4" target="_blank" title="趣莱福 蒜味虾片 240g">
              <img class='lazy' data="http://202.sfimg.cn/2018/4000286577/middle_4000286577_1_1/160x160.jpg" alt="趣莱福 蒜味虾片 240g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286577" data_url="http://202.sfimg.cn/2018/4000286577/middle_4000286577_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item4" class="trackref" href="/html/products/287/4000286577.html#trackref=sfbest_hp_hp_floor5_item4" target="_blank" title="趣莱福 蒜味虾片 240g">趣莱福 蒜味虾片 240g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286577_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286579_0_4" goods="286579" id="cx_l_286579_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286579.html#trackref=sfbest_hp_hp_floor5_item5" target="_blank" title="趣莱福 玉米香脆片 336g">
              <img class='lazy' data="http://202.sfimg.cn/2018/4000286579/middle_4000286579_1_1/160x160.jpg" alt="趣莱福 玉米香脆片 336g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286579" data_url="http://202.sfimg.cn/2018/4000286579/middle_4000286579_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item5" class="trackref" href="/html/products/287/4000286579.html#trackref=sfbest_hp_hp_floor5_item5" target="_blank" title="趣莱福 玉米香脆片 336g">趣莱福 玉米香脆片 336g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286579_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286729_0_4" goods="286729" id="cx_l_286729_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286729.html#trackref=sfbest_hp_hp_floor5_item6" target="_blank" title="蒙都 风干牛肉原味 188g">
              <img class='lazy' data="http://201.sfimg.cn/2018/4000286729/middle_4000286729_9_1/160x160.jpg" alt="蒙都 风干牛肉原味 188g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286729" data_url="http://204.sfimg.cn/2018/4000286729/middle_4000286729_9_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item6" class="trackref" href="/html/products/287/4000286729.html#trackref=sfbest_hp_hp_floor5_item6" target="_blank" title="蒙都 风干牛肉原味 188g">蒙都 风干牛肉原味 188g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286729_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_286733_0_4" goods="286733" id="cx_l_286733_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/287/4000286733.html#trackref=sfbest_hp_hp_floor5_item7" target="_blank" title="蒙都 牛特辣么牛肉粒烧烤味 160g">
              <img class='lazy' data="http://204.sfimg.cn/2018/4000286733/middle_4000286733_9_1/160x160.jpg" alt="蒙都 牛特辣么牛肉粒烧烤味 160g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="286733" data_url="http://204.sfimg.cn/2018/4000286733/middle_4000286733_9_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item7" class="trackref" href="/html/products/287/4000286733.html#trackref=sfbest_hp_hp_floor5_item7" target="_blank" title="蒙都 牛特辣么牛肉粒烧烤味 160g">蒙都 牛特辣么牛肉粒烧烤味 160g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_286733_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_289031_0_4" goods="289031" id="cx_l_289031_0_4">
          <div class="pImg pImg_vip">
            <a href="/html/products/290/4200289031.html#trackref=sfbest_hp_hp_floor5_item8" target="_blank" title="茱蒂丝 巧克力味蛋卷 50g">
              <img class='lazy' data="http://202.sfimg.cn/2018/4200289031/middle_4200289031_0_1/160x160.jpg" alt="茱蒂丝 巧克力味蛋卷 50g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="289031" data_url="http://202.sfimg.cn/2018/4200289031/middle_4200289031_0_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor5_item8" class="trackref" href="/html/products/290/4200289031.html#trackref=sfbest_hp_hp_floor5_item8" target="_blank" title="茱蒂丝 巧克力味蛋卷 50g">茱蒂丝 巧克力味蛋卷 50g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_289031_0_4">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor5_Keywords1" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=EDO" target="_blank">EDO</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords2" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=U%E9%80%89%E4%B8%80%E5%93%8" target="_blank">U选一品</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords3" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E8%B4%B9%E5%88%97%E7%BD%97" target="_blank">费列罗</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords4" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E5%8D%9C%E7%8F%82" target="_blank">卜珂</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords5" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E7%B3%96%E6%9E%9C" target="_blank">糖果</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords6" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E6%B5%B7%E8%8B%94" target="_blank">海苔</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords7" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E4%B8%BD%E8%8A%9D%E5%A3%AB" target="_blank">丽芝士</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords8" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E5%8F%AF%E5%BA%B7" target="_blank">可康</a></li>
        <li><a name="sfbest_hp_hp_floor5_Keywords9" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E6%A6%B4%E8%8E%B2%E9%85%A5" target="_blank">榴莲酥</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor5_right-ad" class="ht1 trackref" href="/html/activity/1528107875.html" target="_blank"><img alt="《依妮巧克力》" class="lazy" data="http://004.sfimg.cn/web/7128c3ee/7128c3eec6ebd609e35a5370e9775a75.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1528107875.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_6" class="trackref" href="/html/activity/1528190712.html" target="_blank">
    <img alt="松茸" class="lazy" data="http://002.sfimg.cn/web/073ae515/073ae51526e39c7838ebff5272fefb5e.jpg"/>
  </a>
</div>
<div class="indexW mt2 snack">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor6_floor-category1" class="trackref" href="/mall/7451-0-0-0-0-2-0-0-0-0-0.html" target="_blank">冲调茶饮</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor6_left-ad" class="trackref" href="/html/activity/1528079610.html" target="_blank">
        <img alt="桃渊茗茶叶" class="lazy" data="http://003.sfimg.cn/web/0193f5d9/0193f5d9dd8fde4e765214f6b4b6bbf8.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-6">
        <li class="price_list1" eid="l_169639_0_5" goods="169639" id="cx_l_169639_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/170/1400169639.html#trackref=sfbest_hp_hp_floor6_item1" target="_blank" title="德亚Weidendorf 全脂纯牛奶 250ml*24">
              <img class='lazy' data="http://203.sfimg.cn/2015/1400169639/middle_1400169639_0_2/160x160.jpg" alt="德亚Weidendorf 全脂纯牛奶 250ml*24" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="169639" data_url="http://201.sfimg.cn/2015/1400169639/middle_1400169639_0_2/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item1" class="trackref" href="/html/products/170/1400169639.html#trackref=sfbest_hp_hp_floor6_item1" target="_blank" title="德亚Weidendorf 全脂纯牛奶 250ml*24">德亚Weidendorf 全脂纯牛奶 250ml*24</a>
          </div>
          <div class="a_price f_price" id="priceL_l_169639_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_173557_0_5" goods="173557" id="cx_l_173557_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/174/1400173557.html#trackref=sfbest_hp_hp_floor6_item2" target="_blank" title="爱尔兰 韦沃VIVA 部分脱脂纯牛奶 200ml*12 礼盒装">
              <img class='lazy' data="http://201.sfimg.cn/2017/1400173557/middle_1400173557_0_1_1/160x160.jpg" alt="爱尔兰 韦沃VIVA 部分脱脂纯牛奶 200ml*12 礼盒装" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="173557" data_url="http://204.sfimg.cn/2017/1400173557/middle_1400173557_0_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item2" class="trackref" href="/html/products/174/1400173557.html#trackref=sfbest_hp_hp_floor6_item2" target="_blank" title="爱尔兰 韦沃VIVA 部分脱脂纯牛奶 200ml*12 礼盒装">爱尔兰 韦沃VIVA 部分脱脂纯牛奶 200ml*12 礼盒装</a>
          </div>
          <div class="a_price f_price" id="priceL_l_173557_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_188409_0_5" goods="188409" id="cx_l_188409_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/189/1400188409.html#trackref=sfbest_hp_hp_floor6_item3" target="_blank" title="爱尔兰 韦沃VIVA 全脂纯牛奶 200ml*12 礼盒装">
              <img class='lazy' data="http://203.sfimg.cn/2016/1400188409/middle_1400188409_1_1/160x160.jpg" alt="爱尔兰 韦沃VIVA 全脂纯牛奶 200ml*12 礼盒装" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="188409" data_url="http://201.sfimg.cn/2016/1400188409/middle_1400188409_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item3" class="trackref" href="/html/products/189/1400188409.html#trackref=sfbest_hp_hp_floor6_item3" target="_blank" title="爱尔兰 韦沃VIVA 全脂纯牛奶 200ml*12 礼盒装">爱尔兰 韦沃VIVA 全脂纯牛奶 200ml*12 礼盒装</a>
          </div>
          <div class="a_price f_price" id="priceL_l_188409_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_255905_0_5" goods="255905" id="cx_l_255905_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/256/1400255905.html#trackref=sfbest_hp_hp_floor6_item4" target="_blank" title="纽麦福 全脂纯牛奶 250ml*6">
              <img class='lazy' data="http://201.sfimg.cn/2016/1400255905/middle_1400255905_1_1/160x160.jpg" alt="纽麦福 全脂纯牛奶 250ml*6" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="255905" data_url="http://204.sfimg.cn/2016/1400255905/middle_1400255905_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item4" class="trackref" href="/html/products/256/1400255905.html#trackref=sfbest_hp_hp_floor6_item4" target="_blank" title="纽麦福 全脂纯牛奶 250ml*6">纽麦福 全脂纯牛奶 250ml*6</a>
          </div>
          <div class="a_price f_price" id="priceL_l_255905_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_280629_0_5" goods="280629" id="cx_l_280629_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/281/6000280629.html#trackref=sfbest_hp_hp_floor6_item5" target="_blank" title="KEY 滴滤式研磨咖啡 80g">
              <img class='lazy' data="http://203.sfimg.cn/2017/6000280629/middle_6000280629_1_1/160x160.jpg" alt="KEY 滴滤式研磨咖啡 80g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="280629" data_url="http://204.sfimg.cn/2017/6000280629/middle_6000280629_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item5" class="trackref" href="/html/products/281/6000280629.html#trackref=sfbest_hp_hp_floor6_item5" target="_blank" title="KEY 滴滤式研磨咖啡 80g">KEY 滴滤式研磨咖啡 80g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_280629_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_279803_0_5" goods="279803" id="cx_l_279803_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/280/6000279803.html#trackref=sfbest_hp_hp_floor6_item6" target="_blank" title="瑞士小姐SWISS MISS 瑞士小姐可可冲饮粉礼盒(卡通陶罐) 170g">
              <img class='lazy' data="http://202.sfimg.cn/2017/6000279803/middle_6000279803_1_6/160x160.jpg" alt="瑞士小姐SWISS MISS 瑞士小姐可可冲饮粉礼盒(卡通陶罐) 170g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="279803" data_url="http://204.sfimg.cn/2017/6000279803/middle_6000279803_1_6/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item6" class="trackref" href="/html/products/280/6000279803.html#trackref=sfbest_hp_hp_floor6_item6" target="_blank" title="瑞士小姐SWISS MISS 瑞士小姐可可冲饮粉礼盒(卡通陶罐) 170g">瑞士小姐SWISS MISS 瑞士小姐可可冲饮粉礼盒(卡通陶罐) 170g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_279803_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_275923_0_5" goods="275923" id="cx_l_275923_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/276/6000275923.html#trackref=sfbest_hp_hp_floor6_item7" target="_blank" title="及养堂 银耳羹随手泡  180g">
              <img class='lazy' data="http://201.sfimg.cn/2017/6000275923/middle_6000275923_1_1/160x160.jpg" alt="及养堂 银耳羹随手泡  180g" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="275923" data_url="http://203.sfimg.cn/2017/6000275923/middle_6000275923_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item7" class="trackref" href="/html/products/276/6000275923.html#trackref=sfbest_hp_hp_floor6_item7" target="_blank" title="及养堂 银耳羹随手泡  180g">及养堂 银耳羹随手泡  180g</a>
          </div>
          <div class="a_price f_price" id="priceL_l_275923_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_279785_0_5" goods="279785" id="cx_l_279785_0_5">
          <div class="pImg pImg_vip">
            <a href="/html/products/280/6000279785.html#trackref=sfbest_hp_hp_floor6_item8" target="_blank" title="陈李济 经典柑普茶*罐装两颗 29g*2">
              <img class='lazy' data="http://202.sfimg.cn/2017/6000279785/middle_6000279785_1_3/160x160.jpg" alt="陈李济 经典柑普茶*罐装两颗 29g*2" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="279785" data_url="http://201.sfimg.cn/2017/6000279785/middle_6000279785_1_3/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor6_item8" class="trackref" href="/html/products/280/6000279785.html#trackref=sfbest_hp_hp_floor6_item8" target="_blank" title="陈李济 经典柑普茶*罐装两颗 29g*2">陈李济 经典柑普茶*罐装两颗 29g*2</a>
          </div>
          <div class="a_price f_price" id="priceL_l_279785_0_5">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor6_Keywords1" class="trackref" href="/mall/8609-0-0-0-0-2-0-0-0-0-0.html" target="_blank">咖啡粉</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords2" class="trackref" href="/mall/8597-0-0-0-0-2-0-0-0-0-0.html" target="_blank">蜂蜜</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords3" class="trackref" href="/mall/7687-0-0-0-0-2-0-0-0-0-0.html" target="_blank">国产茶</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords4" class="trackref" href="/mall/7689-0-0-0-0-2-0-0-0-0-0.html" target="_blank">进口茶</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords5" class="trackref" href="/mall/8611-0-0-0-0-2-0-0-0-0-0.html" target="_blank">速溶咖啡</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords6" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=DNZ" target="_blank">DNZ</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords7" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E9%BE%99%E4%BA%95" target="_blank">龙井</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords8" class="trackref" href="/mall/8565-0-0-0-0-2-0-0-0-0-0.html" target="_blank">红茶</a></li>
        <li><a name="sfbest_hp_hp_floor6_Keywords9" class="trackref" href="/mall/8585-0-0-0-0-2-0-0-0-0-0.html" target="_blank">麦片</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor6_right-ad" class="ht1 trackref" href="/html/activity/1528107255.html" target="_blank"><img alt="《香醇牛奶》" class="lazy" data="http://003.sfimg.cn/web/c2caa6c4/c2caa6c45b4b36f9f25a25afabda7a20.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1528107255.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
  <a name="sfbest_hp_hp_banner_7" class="trackref" href="/html/activity/1528106623.html" target="_blank">
    <img alt="《大牌白兰地》" class="lazy" data="http://004.sfimg.cn/web/8e30b767/8e30b767f7d1863a1480fc3cb9a2772f.jpg"/>
  </a>
</div>
<div class="indexW mt2 tea">
  <div class="category">
    <ul class="mTitle">
      <li>
        <div class="cir"></div>
        <h2>
          <em></em>
          <a name="sfbest_hp_hp_floor7_floor-category1" class="trackref" href="/multi/7417_7431_7433_7435_7437_7439_7441-0-0-0-0-2-0-0-0-0-0.html" target="_blank">酒水饮料</a>
        </h2>
      </li>
    </ul>
    <div class="lCont">
      <a name="sfbest_hp_hp_floor7_left-ad" class="trackref" href="/html/activity/1528106347.html" target="_blank">
        <img alt="《白葡萄酒VS起泡酒》" class="lazy" data="http://002.sfimg.cn/web/a5061f5f/a5061f5f1447fd215ae528877ac8369a.jpg" />
      </a>
    </div>
  </div>
  <div class="sfRight">
    <div class="subCont">
      <ul class="pList" id="floor-gap-7">
        <li class="price_list1" eid="l_282163_0_6" goods="282163" id="cx_l_282163_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/283/5400282163.html#trackref=sfbest_hp_hp_floor7_item1" target="_blank" title="洛神 黑金经典西拉赤霞珠红葡萄酒 750ml">
              <img class='lazy' data="http://201.sfimg.cn/2018/5400282163/middle_5400282163_1_1/160x160.jpg" alt="洛神 黑金经典西拉赤霞珠红葡萄酒 750ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="282163" data_url="http://203.sfimg.cn/2018/5400282163/middle_5400282163_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item1" class="trackref" href="/html/products/283/5400282163.html#trackref=sfbest_hp_hp_floor7_item1" target="_blank" title="洛神 黑金经典西拉赤霞珠红葡萄酒 750ml">洛神 黑金经典西拉赤霞珠红葡萄酒 750ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_282163_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_261473_0_6" goods="261473" id="cx_l_261473_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/262/1400261473.html#trackref=sfbest_hp_hp_floor7_item2" target="_blank" title="布琅兄弟BROWN BROTHERS 月影莎当妮白葡萄酒 750ml">
              <img class='lazy' data="http://204.sfimg.cn/2017/1400261473/middle_1400261473_0_1_2/160x160.jpg" alt="布琅兄弟BROWN BROTHERS 月影莎当妮白葡萄酒 750ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="261473" data_url="http://203.sfimg.cn/2017/1400261473/middle_1400261473_0_1_2/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item2" class="trackref" href="/html/products/262/1400261473.html#trackref=sfbest_hp_hp_floor7_item2" target="_blank" title="布琅兄弟BROWN BROTHERS 月影莎当妮白葡萄酒 750ml">布琅兄弟BROWN BROTHERS 月影莎当妮白葡萄酒 750ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_261473_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_280771_0_6" goods="280771" id="cx_l_280771_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/281/5400280771.html#trackref=sfbest_hp_hp_floor7_item3" target="_blank" title="M9 红葡萄酒六支一提装 375ml*6">
              <img class='lazy' data="http://202.sfimg.cn/2017/5400280771/middle_5400280771_1_1/160x160.jpg" alt="M9 红葡萄酒六支一提装 375ml*6" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="280771" data_url="http://201.sfimg.cn/2017/5400280771/middle_5400280771_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item3" class="trackref" href="/html/products/281/5400280771.html#trackref=sfbest_hp_hp_floor7_item3" target="_blank" title="M9 红葡萄酒六支一提装 375ml*6">M9 红葡萄酒六支一提装 375ml*6</a>
          </div>
          <div class="a_price f_price" id="priceL_l_280771_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_12206_0_6" goods="12206" id="cx_l_12206_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/13/1400012206.html#trackref=sfbest_hp_hp_floor7_item4" target="_blank" title="百加得 超级朗姆酒 750ml">
              <img class='lazy' data="http://202.sfimg.cn/2013/1400012206/middle_1400012206_1_11/160x160.jpg" alt="百加得 超级朗姆酒 750ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="12206" data_url="http://202.sfimg.cn/2013/1400012206/middle_1400012206_1_11/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item4" class="trackref" href="/html/products/13/1400012206.html#trackref=sfbest_hp_hp_floor7_item4" target="_blank" title="百加得 超级朗姆酒 750ml">百加得 超级朗姆酒 750ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_12206_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_9392_0_6" goods="9392" id="cx_l_9392_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/10/1400009392.html#trackref=sfbest_hp_hp_floor7_item5" target="_blank" title="国窖1573 52° 500ml">
              <img class='lazy' data="http://202.sfimg.cn/2016/1400009392/middle_1400009392_1_1/160x160.jpg" alt="国窖1573 52° 500ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="9392" data_url="http://204.sfimg.cn/2016/1400009392/middle_1400009392_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item5" class="trackref" href="/html/products/10/1400009392.html#trackref=sfbest_hp_hp_floor7_item5" target="_blank" title="国窖1573 52° 500ml">国窖1573 52° 500ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_9392_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_268217_0_6" goods="268217" id="cx_l_268217_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/269/1400268217.html#trackref=sfbest_hp_hp_floor7_item6" target="_blank" title="五粮液 商务用酒 52度 500ml">
              <img class='lazy' data="http://201.sfimg.cn/2017/1400268217/middle_1400268217_9_01/160x160.jpg" alt="五粮液 商务用酒 52度 500ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="268217" data_url="http://201.sfimg.cn/2017/1400268217/middle_1400268217_9_01/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item6" class="trackref" href="/html/products/269/1400268217.html#trackref=sfbest_hp_hp_floor7_item6" target="_blank" title="五粮液 商务用酒 52度 500ml">五粮液 商务用酒 52度 500ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_268217_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_147156_0_6" goods="147156" id="cx_l_147156_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/148/1400147156.html#trackref=sfbest_hp_hp_floor7_item7" target="_blank" title="PAULANER 保拉纳酵母型小麦啤酒（听） 500ml">
              <img class='lazy' data="http://201.sfimg.cn/2017/1400147156/middle_1400147156_1_1/160x160.jpg" alt="PAULANER 保拉纳酵母型小麦啤酒（听） 500ml" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="147156" data_url="http://204.sfimg.cn/2017/1400147156/middle_1400147156_1_1/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item7" class="trackref" href="/html/products/148/1400147156.html#trackref=sfbest_hp_hp_floor7_item7" target="_blank" title="PAULANER 保拉纳酵母型小麦啤酒（听） 500ml">PAULANER 保拉纳酵母型小麦啤酒（听） 500ml</a>
          </div>
          <div class="a_price f_price" id="priceL_l_147156_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
        <li class="price_list1" eid="l_276437_0_6" goods="276437" id="cx_l_276437_0_6">
          <div class="pImg pImg_vip">
            <a href="/html/products/277/4300276437.html#trackref=sfbest_hp_hp_floor7_item8" target="_blank" title="梅苏 果汁饮料 （口味随机）礼盒装 1L*4">
              <img class='lazy' data="http://204.sfimg.cn/2017/4300276437/middle_4300276437_9_1_2/160x160.jpg" alt="梅苏 果汁饮料 （口味随机）礼盒装 1L*4" />
            </a>
            <div class="gBtn p-btn">
              <a indexFlag="1" pid="276437" data_url="http://201.sfimg.cn/2017/4300276437/middle_4300276437_9_1_2/60x60.jpg" href="javascript:void(0)">加入购物车</a>
            </div>
          </div>
          <div class="title">
            <a name="sfbest_hp_hp_floor7_item8" class="trackref" href="/html/products/277/4300276437.html#trackref=sfbest_hp_hp_floor7_item8" target="_blank" title="梅苏 果汁饮料 （口味随机）礼盒装 1L*4">梅苏 果汁饮料 （口味随机）礼盒装 1L*4</a>
          </div>
          <div class="a_price f_price" id="priceL_l_276437_0_6">
            <span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="redge">
      <ul class="rHot">
        <li><a name="sfbest_hp_hp_floor7_Keywords1" class="trackref" href="/mall/7437-0-0-0-0-2-0-0-0-0-0.html" target="_blank">啤酒</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords2" class="trackref" href="/mall/7441-2815-0-0-0-2-0-0-0-0-0.html" target="_blank">韦沃</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords3" class="trackref" href="/mall/7417-11305-0-0-0-2-0-0-0-0-0.html" target="_blank">界界乐</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords4" class="trackref" href="/mall/7439-5225-0-0-0-2-0-0-0-0-0.html" target="_blank">爱之湾</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords5" class="trackref" href="/mall/8237-0-0-0-0-2-0-0-0-0-0.html" target="_blank">白兰地</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords6" class="trackref" href="/mall/8231-0-0-0-0-2-0-0-0-0-0.html" target="_blank">利口酒</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords7" class="trackref" href="/mall/7433-1331-0-0-0-2-0-0-0-0-0.html" target="_blank">五粮液</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords8" class="trackref" href="/mall/7433-2103-0-0-0-2-0-0-0-0-0.html" target="_blank">牛栏山</a></li>
        <li><a name="sfbest_hp_hp_floor7_Keywords9" class="trackref" href="/mall/7435-1630-0-0-0-2-0-0-0-0-0.html" target="_blank">马爹利</a></li>
      </ul>
      <div class="clr"></div>
      <div class="rimg">

        <a name="sfbest_hp_hp_floor7_right-ad" class="ht1 trackref" href="/html/activity/1528106860.html" target="_blank"><img alt="《果味饮料》" class="lazy" data="http://001.sfimg.cn/web/074ed0b4/074ed0b4b6ab7454332b9f94ce371f17.jpg" /></a>
        <div class="rbutton"><a href="/html/activity/1528106860.html" target="_blank"></a></div>
      </div>
    </div>
  </div>
  <!-- 天天生鲜 -->
  <span class="clr"></span>
</div>
<a name="promote"></a>
<!-- 为你推荐 -->
<div class="indexW mt2 promote" >
  <div class="top"><i></i></div>
  <ul class="ptList clearfix" id = "guess_you_like">
    <li class="price_list2" eid="l_241649_0" goods="241649" id="cx_l_241649_0">
      <div class="pImg pImg_vip">
        <a href="/html/products/242/1300241649.html#trackref=main_b_241649" target="_blank" title="十月稻田 五常稻花香大米（礼盒）5kg"><img class="lazy" data="picture/160x160.jpg" alt="十月稻田 五常稻花香大米（礼盒）5kg" src="http://p02.sfimg.cn/2016/1300241649/middle_1300241649_2_2/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="241649" data_url="http://p02.sfimg.cn/2016/1300241649/middle_1300241649_2_2/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/242/1300241649.html#trackref=main_b_241649" target="_blank" title="十月稻田 五常稻花香大米（礼盒）5kg">十月稻田 五常稻花香大米（礼盒）5kg</a>
      </div>
      <div class="a_price f_price" id="priceL_l_241649_0"><span><i>￥</i>99</span></div>
    </li>
    <li class="price_list2" eid="l_21057_1" goods="21057" id="cx_l_21057_1">
      <div class="pImg pImg_vip">
        <a href="/html/products/22/1300021057.html#trackref=main_b_21057" target="_blank" title="登鼎Dintel 特级初榨橄榄油礼盒 500ml*2"><img class="lazy" data="picture/160x160.jpg" alt="登鼎Dintel 特级初榨橄榄油礼盒 500ml*2" src="http://p02.sfimg.cn/2013/1300021057/middle_1300021057_9_01/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="21057" data_url="http://p02.sfimg.cn/2013/1300021057/middle_1300021057_9_01/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/22/1300021057.html#trackref=main_b_21057" target="_blank" title="登鼎Dintel 特级初榨橄榄油礼盒 500ml*2">登鼎Dintel 特级初榨橄榄油礼盒 500ml*2</a>
      </div>
      <div class="a_price f_price" id="priceL_l_21057_1"><span><i>￥</i>88</span></div>
    </li>
    <li class="price_list2" eid="l_285511_2" goods="285511" id="cx_l_285511_2">
      <div class="pImg pImg_vip">
        <a href="/html/products/286/5700285511.html#trackref=main_b_285511" target="_blank" title="U选一品 红枣 200g"><img class="lazy" data="picture/160x160.jpg" alt="U选一品 红枣 200g" src="http://p02.sfimg.cn/2018/5700285511/middle_5700285511_1_01/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="285511" data_url="http://p02.sfimg.cn/2018/5700285511/middle_5700285511_1_01/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/286/5700285511.html#trackref=main_b_285511" target="_blank" title="U选一品 红枣 200g">U选一品 红枣 200g</a>
      </div>
      <div class="a_price f_price" id="priceL_l_285511_2"><span><i>￥</i>36.8</span></div>
    </li>
    <li class="price_list2" eid="l_229259_3" goods="229259" id="cx_l_229259_3">
      <div class="pImg pImg_vip">
        <a href="/html/products/230/1300229259.html#trackref=main_b_229259" target="_blank" title="大华Tai Hua 生抽（酿造酱油） 305ml"><img class="lazy" data="picture/160x160.jpg" alt="大华Tai Hua 生抽（酿造酱油） 305ml" src="http://p02.sfimg.cn/2016/1300229259/middle_1300229259_9_03/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="229259" data_url="http://p02.sfimg.cn/2016/1300229259/middle_1300229259_9_03/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/230/1300229259.html#trackref=main_b_229259" target="_blank" title="大华Tai Hua 生抽（酿造酱油） 305ml">大华Tai Hua 生抽（酿造酱油） 305ml</a>
      </div>
      <div class="a_price f_price" id="priceL_l_229259_3"><span><i>￥</i>29.8</span></div>
    </li>
    <li class="price_list2" eid="l_289311_4" goods="289311" id="cx_l_289311_4">
      <div class="pImg pImg_vip">
        <a href="/html/products/290/4300289311.html#trackref=main_b_289311" target="_blank" title="宾格瑞 牌草莓味牛奶饮料（6支装） 200ml*6"><img class="lazy" data="picture/160x160.jpg" alt="宾格瑞 牌草莓味牛奶饮料（6支装） 200ml*6" src="http://p02.sfimg.cn/2018/4300289311/middle_4300289311_2_0/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="289311" data_url="http://p02.sfimg.cn/2018/4300289311/middle_4300289311_2_0/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/290/4300289311.html#trackref=main_b_289311" target="_blank" title="宾格瑞 牌草莓味牛奶饮料（6支装） 200ml*6">宾格瑞 牌草莓味牛奶饮料（6支装） 200ml*6</a>
      </div>
      <div class="a_price f_price" id="priceL_l_289311_4"><span><i>￥</i>39.9</span></div>
    </li>
    <li class="price_list2" eid="l_178885_5" goods="178885" id="cx_l_178885_5">
      <div class="pImg pImg_vip">
        <a href="/html/products/179/1400178885.html#trackref=main_b_178885" target="_blank" title="科罗娜CORONA 特级精酿啤酒 330ml*6"><img class="lazy" data="picture/160x160.jpg" alt="科罗娜CORONA 特级精酿啤酒 330ml*6" src="http://p02.sfimg.cn/2018/1400178885/middle_1400178885_0_0_1/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="178885" data_url="http://p02.sfimg.cn/2018/1400178885/middle_1400178885_0_0_1/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/179/1400178885.html#trackref=main_b_178885" target="_blank" title="科罗娜CORONA 特级精酿啤酒 330ml*6">科罗娜CORONA 特级精酿啤酒 330ml*6</a>
      </div>
      <div class="a_price f_price" id="priceL_l_178885_5"><span><i>￥</i>59</span></div>
    </li>
    <li class="price_list2" eid="l_58095_6" goods="58095" id="cx_l_58095_6">
      <div class="pImg pImg_vip">
        <a href="/html/products/59/1400058095.html#trackref=main_b_58095" target="_blank" title="习酒 新版 红习酱 53度 （酱香型） 500ml"><img class="lazy" data="picture/160x160.jpg" alt="习酒 新版 红习酱 53度 （酱香型） 500ml" src="http://p02.sfimg.cn/2015/1400058095/middle_1400058095_1_11/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="58095" data_url="http://p02.sfimg.cn/2015/1400058095/middle_1400058095_1_11/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/59/1400058095.html#trackref=main_b_58095" target="_blank" title="习酒 新版 红习酱 53度 （酱香型） 500ml">习酒 新版 红习酱 53度 （酱香型） 500ml</a>
      </div>
      <div class="a_price f_price" id="priceL_l_58095_6"><span><i>￥</i>108</span></div>
    </li>
    <li class="price_list2" eid="l_276023_7" goods="276023" id="cx_l_276023_7">
      <div class="pImg pImg_vip">
        <a href="/html/products/277/5400276023.html#trackref=main_b_276023" target="_blank" title="伊桐 经典优选赤霞珠红葡萄酒双支木盒装 750ml*2"><img class="lazy" data="picture/160x160.jpg" alt="伊桐 经典优选赤霞珠红葡萄酒双支木盒装 750ml*2" src="http://p02.sfimg.cn/2017/5400276023/middle_5400276023_0_1/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="276023" data_url="http://p02.sfimg.cn/2017/5400276023/middle_5400276023_0_1/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/277/5400276023.html#trackref=main_b_276023" target="_blank" title="伊桐 经典优选赤霞珠红葡萄酒双支木盒装 750ml*2">伊桐 经典优选赤霞珠红葡萄酒双支木盒装 750ml*2</a>
      </div>
      <div class="a_price f_price" id="priceL_l_276023_7"><span><i>￥</i>128</span></div>
    </li>
    <li class="price_list2" eid="l_282329_8" goods="282329" id="cx_l_282329_8">
      <div class="pImg pImg_vip">
        <a href="/html/products/283/4500282329.html#trackref=main_b_282329" target="_blank" title="GUOLIAN 马来西亚 黑虎虾 36/40 800g"><img class="lazy" data="picture/160x160.jpg" alt="GUOLIAN 马来西亚 黑虎虾 36/40 800g" src="http://p02.sfimg.cn/2018/4500282329/middle_4500282329_1_1/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="282329" data_url="http://p02.sfimg.cn/2018/4500282329/middle_4500282329_1_1/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/283/4500282329.html#trackref=main_b_282329" target="_blank" title="GUOLIAN 马来西亚 黑虎虾 36/40 800g">GUOLIAN 马来西亚 黑虎虾 36/40 800g</a>
      </div>
      <div class="a_price f_price" id="priceL_l_282329_8"><span><i>￥</i>119</span></div>
    </li>
    <li class="price_list2" eid="l_285231_9" goods="285231" id="cx_l_285231_9">
      <div class="pImg pImg_vip">
        <a href="/html/products/286/4600285231.html#trackref=main_b_285231" target="_blank" title="爱阁食品 智利鸡翅中 1000g"><img class="lazy" data="picture/160x160.jpg" alt="爱阁食品 智利鸡翅中 1000g" src="http://p02.sfimg.cn/2018/4600285231/middle_4600285231_4_0/160x160.jpg" style="display: block;"></a>
        <div class="gBtn p-btn" style="top: 211px;"><a pid="285231" data_url="http://p02.sfimg.cn/2018/4600285231/middle_4600285231_4_0/160x160.jpg" href="javascript:void(0)" indexflag="1">加入购物车</a></div>
      </div>
      <div class="title-a">
        <a href="/html/products/286/4600285231.html#trackref=main_b_285231" target="_blank" title="爱阁食品 智利鸡翅中 1000g">爱阁食品 智利鸡翅中 1000g</a>
      </div>
      <div class="a_price f_price" id="priceL_l_285231_9"><span><i>￥</i>59.9</span></div>
    </li>
  </ul>
</div>
<div class="promote-end" id="loading_more" style="display:none;">
  <div class="t1"></div>
  <div class="t2">正在加载...</div>
</div>
<!-- 楼层 end -->

<!-- 底通 -->
<div class="indexW mt4">
  <a name="sfbest_hp_hp_footbanner_1" class="trackref" href="/html/activity/1525748170.html" target="_blank">
    <img alt="HI，骚年→想不想当C位？" class="lazy" data="http://004.sfimg.cn/web/408ad088/408ad08855e9e14a86eb4c9beb93de99.jpg">
  </a>
</div>

<!-- 文章 -->
<div class="indexW mt2 textlist">
  <div class="zhiwei">
    <div class="caption"><p>优选味道</p></div>
    <div class="slide">
      <ul>
        <li><a name="sfbest_hp_hp_delicacy_ad1" class="trackref" href="/html/activity/1385966739.html" target="_blank" title="无白酒不成宴席"><img data="http://004.sfimg.cn/web/072d7ff9/072d7ff98d7d2278386bd22250b58d30.jpg" alt="无白酒不成宴席" class="lazy indexjk"></a></li>
        <li><a name="sfbest_hp_hp_delicacy_ad2" class="trackref" href="/html/activity/1404807423.html" target="_blank" title="醍醐味"><img data="http://002.sfimg.cn/web/1f2564d9/1f2564d9772bf819d3359b794765262c.jpg" alt="醍醐味" class="lazy"></a></li>
      </ul>
      <a style="display: none;" href="javascript:void(0);" class="btn_next"><s></s></a>
      <a style="display: none;" href="javascript:void(0);" class="btn_prev"><s></s></a>
    </div>
    <div class="info">
      <p><a name="sfbest_hp_hp_article_1" class="trackref" rel="nofollow" href="/taste/363/6668.html" target="_blank" title="花草茶 来自大自然的恩惠">花草茶 来自大自然的恩惠</a></p>
      <p><a name="sfbest_hp_hp_article_2" class="trackref" rel="nofollow" href="/taste/361/5105.html" target="_blank" title="酒桌礼仪：斟酒的讲究">酒桌礼仪：斟酒的讲究</a></p>
      <p><a name="sfbest_hp_hp_article_3" class="trackref" rel="nofollow" href="/taste/364/7105.html" target="_blank" title="30分钟 暖心慢炖红酒鸡腿">30分钟 暖心慢炖红酒鸡腿</a></p>
      <p><a name="sfbest_hp_hp_article_4" class="trackref" rel="nofollow" href="/wine/240/2940.html" target="_blank" title="拉弗尔庄园（花庄）">拉弗尔庄园（花庄）</a></p>
      <p><a name="sfbest_hp_hp_article_5" class="trackref" rel="nofollow" href="/wine/351/7123.html" target="_blank" title="喜欢甜酒 何罪之有？">喜欢甜酒 何罪之有？</a></p>
    </div>
  </div>
  <div class="share">
    <div class="caption"><p>热门晒单</p></div>
    <div class="scrollbox"><ul id="toplist"></ul></div>
  </div>
  <div class="youpin">
    <div class="ucaption"><p>发现优品<h2><a></a></h2></div>
    <div class="upic" id="findGoods"></div>
    <script type="text/javascript">
      $(function(){
        $('.ucaption').click(function(){
          $('.upic span').slice(4, 8).show();
          $('.upic span').slice(0, 4).hide().appendTo('.upic');     // appendTo追加到后边，这样5-10的就变成了0-5
          return false;
        });
      })
    </script>
    <div class="clear"></div>
    <div class="mailDY">
      <div class="mailDYitem" id="mailDYitem">
        <span><input type="text" value="请填写邮箱订阅促销" class="i" id="footermail"></span>
                    <span class="ftitle">
                            <div id="store-selector1">
                              <div style="line-height:22px;" class="text"><div id="showarea1" title="订阅区域">北京</div><b></b></div>
                              <div class="content">
                                <div data-widget="tabs" class="m SF-stock" id="SF-stock1"></div>
                              </div>
                              <div onclick="$('#store-selector1').removeClass('hover')" class="close"></div>
                            </div>
                        <div class="clear"></div>
                    </span>
        <span><a class="btn" onclick="subfootedm();" href="javascript:void(0);"></a></span><span> <a name="sfbest_hp_hp_discovery_takemore" class="dy trackref" href="/www/389/6268.html" target="_blank"> 订阅更多></a></span>
        <div class="clear"></div>
        <!-- 已订阅样式 <div class="ydy">您已订阅过，无需重复订阅</div>-->
        <!-- 邮箱格式不正确样式 -->
        <div style="display:none" id="emailMsg" class="emailerr">邮箱格式不正确</div>
      </div>
    </div>
  </div>
</div>

<!-- footerStart -->
<div id="footer">
  <div class="footer_zd">
    <ul>
      <li class="quanqiu"></li>
      <li class="chandi"></li>
      <li class="qcll"></li>
      <li class="sfzd"></li>
    </ul>
  </div>
  <div class="foot">
    <div class="pageFooter">
      <div class="middle">
        <ul>
          <li class="kefu">9533858</li>
          <li>周一至周日8:30-22:00</li>
        </ul>
      </div>
      <div class="right">
        <ul>
          <li class="title">购物指南</li>

          <li><a rel="nofollow" href="http://help.sfbest.com/140/133.html" target="_blank">积分制度</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/140/132.html" target="_blank">会员介绍</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/140/128.html" target="_blank">购物流程</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/140/138.html" target="_blank">常见问题</a></li>
        </ul>
        <ul>
          <li class="title">配送服务</li>

          <li><a rel="nofollow" href="http://help.sfbest.com/141/134.html" target="_blank">配送政策</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/141/136.html" target="_blank">开箱验货</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/141/137.html" target="_blank">配送运费</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/141/135.html" target="_blank">配送范围</a></li>
        </ul>
        <ul>
          <li class="title">支付方式</li>

          <li><a rel="nofollow" href="http://help.sfbest.com/143/139.html" target="_blank">货到付款</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/143/141.html" target="_blank">在线支付</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/143/131.html" target="_blank">优选卡</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/143/142.html" target="_blank">发票制度</a></li>
        </ul>
        <ul>
          <li class="title">售后服务</li>

          <li><a rel="nofollow" href="http://help.sfbest.com/144/145.html" target="_blank">退款说明</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/144/144.html" target="_blank">退换货流程</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/144/143.html" target="_blank">退换货政策</a></li>

          <li><a rel="nofollow" href="http://help.sfbest.com/390/4643.html" target="_blank">隐私条款</a></li>
        </ul>
        <ul class="sj">
          <li class="title">商家中心</li>
          <li><a rel="nofollow" href="http://help.sfbest.com/392/7232.html" target="_blank">商家规则</a></li>
          <li><a rel="nofollow" href="http://help.sfbest.com/392/8659.html" target="_blank">食品安全规范</a></li>
          <li><a rel="nofollow" href="/html/activity/1474966515.html" target="_blank">委托管理创业招募</a></li>
        </ul>
      </div>
      <div class="left">
        <ul class="f_ios">
          <li><a href="http://app.sfbest.com" target="_blank">手机客户端</a></li>
          <li><span></span></li>
        </ul>
        <ul class="f_wx">
          <li>官方微信</li>
          <li><span></span></li>
        </ul>
      </div>
    </div>
    <div class="clear"></div>
    <div id="float" style="display:none;"></div>
    <div class="bottom" style="position: relative;">
      <!--可信网站图片LOGO安装开始-->
      <div class="_bottom_kx" style="float:left;">
        <span id="kx_verify"></span>
        <script type="text/javascript">(function (){var _kxs = document.createElement('script');_kxs.id = 'kx_script';_kxs.async = true;_kxs.setAttribute('cid', 'kx_verify');_kxs.src = ('https:' == document.location.protocol ? 'https://ss.knet.cn' : 'http://rr.knet.cn')+'/static/js/icon3.js?sn=e14052911011349517cnbv000000&tp=icon3';_kxs.setAttribute('size', 3);var _kx = document.getElementById('kx_verify');_kx.parentNode.insertBefore(_kxs, _kx);})();</script>
      </div>
      <!-- 可信网站图片LOGO安装结束 -->
      <!-- 诚信认证代码 start  20170710  -->
      <div class="_bottom_kx" style="float:left;margin-left: 5px;">
        <a id='___szfw_logo___' href='https://credit.szfw.org/CX20170707035011220115.html' target='_blank'><img src='picture/cert.png' border='0' style="height:33px" /></a>
        <script type='text/javascript'>(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script>
      </div>
      <!-- 诚信认证代码 end -->
      <div class="_bottom_sm" style="float:left;margin-left: 5px;">
        <a id="_pingansec_bottomimagesmall_shiming" href="http://si.trustutn.org/info?sn=332160125020173365693&certType=1" target="_blank"><img src="picture/bottom_sm.png" style="height:33px"></a>
      </div>
      <div class="clear1"></div>
      <div class="siteinfo" style="float:left; position: absolute; top: 13px; left: 280px;padding:0">
        <p>
          <span><a rel="nofollow" href="/www/379/5109.html" target="_blank">关于我们</a></span>
          <span><a rel="nofollow" href="/www/380/5116.html" target="_blank">联系我们</a></span>
          <span><a rel="nofollow" href="/www/381/5117.html" target="_blank">招聘人才</a></span>
          <span><a href="/www/330/2705.html" target="_blank">友情链接</a></span>
          <span>Copyright© 顺丰优选 sfbest.com 版权所有</span>
        </p>
        <p>
          <span>京公网安备11010502026831号</span>
          <span><a class="beian" rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn">京ICP证150325号</a></span>
          <span><a class="beian" rel="nofollow" target="_blank" href="/www/174/8765.html">食品经营许可证JY11113080533669号</a></span>
          <span><a class="beian" rel="nofollow" target="_blank" href="/www/174/461.html">企业营业执照</a></span>
        </p>
      </div>
    </div>
  </div>
</div>
<!-- footerOver -->

<div class="index_rfloat"></div>

<div class="side-wrap">
  <div class="side-panel">
    <div class="side-c "><a href="/paidMember" target="_blank" class="side_v" rel="nofollow"></a></div>
    <div class="side-c" id="side_cart"><a href="http://cart.sfbest.com" target="_blank" class="s-cart" rel="nofollow"></a><span class="s-cart-num"></span></div>
    <div class="side-c" id="side_guang"><a href="javascript:void(0);" class="s-guang"></a></div>
    <div class="side-c" id="side_app"><a href="http://app.sfbest.com/" target="_blank" class="s-app" rel="nofollow">下载APP</a></div>
    <div class="side-c" id="side_promote"><a href="#promote" class="s-promote" rel="nofollow">为你推荐</a></div>
    <div class="side-c bToTop"><a href="javascript:void(0);" class="s-top"></a></div>
  </div>
  <div class="cart-wrap" style="display:none;">
    <div class="cart-shopping">
      <div class="cart-list">
        <div class="cart-num"><span class="cart-num-icon">您有<span id="add-num">1</span>件商品成功加入购物车！</span></div>
        <div id="list_cart" class="floatcar">购物车内暂无商品，赶紧抢购吧！</div>
        <div class="cart-arr"></div>
      </div>
    </div>
  </div>
  <div class="appInfo" style="display:none;">
    <div class="appDown">
      <div class="appItem">
        <div class="sf-client">
          <span class="client-img"></span>
          <i></i>
          <div class="client-txt">
            <em>扫描我，即可下载</em>
            <strong>顺丰优选客户端</strong>
          </div>
        </div>
        <div class="client-promo"><a href="http://app.sfbest.com/" target="_blank" rel="nofollow">先摇券 后买单</a></div>
        <div class="cart-arr"></div>
      </div>
    </div>
  </div>
  <div class="guang" style="display:none;" id="history_con">
    <div class="history">
      <div class="his-list" id="history_con">
        <div class="cart-num">您的浏览记录</div>
        <div class="floatcar">
          <ul><li>暂无浏览记录</li></ul>
        </div>
        <div class="cart-arr" style="bottom: 110px;"></div>
      </div>
    </div>
  </div>
</div>

<div class="paid_lq" style="display: none;">
  <img src="picture/paid_lq.png" width="329" height="186">
  <a class="paid_close" href ="javascript:void(0);"></a>
  <a class="paid_lq_a" href ="/paidMember/" target="_blank"></a>
  <a class="paid_bzts" href ="javascript:void(0);"></a>
  <div class="paid_day"><span id="paid_day">30</span><i>天</i></div>
</div>

<div class="listpic-mini" style="display:none;"></div>

<script type="text/javascript" src="../js/global_index.js"></script>
<script type="text/javascript" src="../../js/inputmail.js"></script>
<script type="text/javascript" src="../../js/roll.js"></script>
<script type="text/javascript" src="../../js/cart.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    if (getCookie('sf_show_dialog') == 1) {
      $(".paid_lq").hide();
    } else {
      $.ajax({
        async: false,
        data: {},
        dataType: "jsonp",
        jsonp:"callback",
        url: "/ajaxIndex/userIsDraw",
        success:function(data) {
          if (data.code == 200) {
            if (data.message) {
              $('.paid_lq').show();
              $('#paid_day').html(data.day);
            } else {
              $('.paid_lq').hide();
            }
          } else {
            $('.paid_lq').hide();
          }
        }
      })
    }

    $(".paid_close").click(function(){
      $(".paid_lq").hide();
    });

    $(".paid_bzts").click(function(){
      setCookie('sf_show_dialog', '1');
      $(".paid_lq").hide();
    });

    //$.get("/html/web/_public/_ajaxStaticMenu.html?v20140430",function(str){if(str){$("#allSort").html(str);}});
    // 口碑甄选商品价格
    getAllPrice('price_list0', 'priceK_');

    // 楼层商品价格
    getAllPrice('price_list1', 'priceL_');

    getIndexSale();
    ua = window.navigator.userAgent;
    var tnumber = ua.indexOf('iPad')>=1?400:200;

    $('img.lazy').lazyload({
      placeholder : "http://i.sfimg.cn/html/images/blank.gif",
      threshold : tnumber
    });

    $('img.lazy_load').lazyload({
      placeholder : "http://i.sfimg.cn/html/images/blank.gif",
      event : "sporty"
    });

    qiangGouIndex();
    getHotSun();
    getFindGoods();
    givetime();
    isOnline('http://home.sfbest.com','https://passport.sfbest.com');
    getSmartSortFlag();
    getCartList();
    getkeyword(1,'http://www.sfbest.com','searchForm');
    getkeyword(1,'http://www.sfbest.com','searchFormFloat');
    getWordAll(1,'http://www.sfbest.com');

    var ZnowTime = new Date().getTime();
    if (ZnowTime>= 1411920000000 && ZnowTime<=1414771199000){$(".client-promo").html('<a href="http://app.sfbest.com" target="_blank" rel="nofollow">客户端首单返30元券</a>');}
    $(".topclose").click(function() {
      $(".topclose").hide();
      $(".banner").slideUp(500)
    });
  });
</script>
<!-- GA  -->
<script type="text/javascript" language="JavaScript">
  // 发送Analytics请求  ==> 01194954 2018-01-15 @说明：PC去掉的统计代码
  function sendToGooogle(key,val){
    // ga('send', 'event', 'Index', key, val);
  }

  // 限时抢购添加Analytics
  function GaQg(){
    // console.log("GA");
  }
</script>
<script type="text/javascript">
  (function(){
    var guessHtml = '';
    $.ajax({
      async: false,
      data: {},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetGuessYouLikeProducts/",
      success: function(productStr){
        for(var key in productStr){
          var priceHtml = '<span><i>￥</i>'+productStr[key].sfbestPrice+'</span>';
          if (productStr[key].payMemberPrice != 0 && productStr[key].sfbestPrice != productStr[key].payMemberPrice ) {
            priceHtml += '<span><b>会员价</b><i>￥</i>'+productStr[key].payMemberPrice+'</span>';
          }
          guessHtml += '<li class="price_list2" eid="l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'" goods="'+eval(productStr[key].proudct_id)+'" id="cx_l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+productStr[key].url+'" target="_blank" title="'+productStr[key].name+'"><img class="lazy" data="'+productStr[key].img+'" alt="'+productStr[key].name+'" src="'+productStr[key].img+'" style="display: block;"></a>'+
                  '<div class="gBtn p-btn" style="top: 211px;"><a pid="'+eval(productStr[key].proudct_id)+'" data_url="'+productStr[key].img+'" href="javascript:void(0)" indexflag="1">加入购物车</a></div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+productStr[key].url+'" target="_blank" title="'+productStr[key].name+'">'+productStr[key].name+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'">'+priceHtml+'</div>'+
                  '</li>';
        }
        $("#guess_you_like").html(guessHtml);
      }
    });

    loadMore();

    // 加载更多评价的函数
    function loadMore(){
      var stop    = true;     // 默认停止加载
      var page    = 2;        // 页数
      var size    = 10;       // 每页展示5个
      var bottomH = 500;      // 距离底部多少像素开始加载

      $(window).scroll(function() {
        totalheight = parseFloat($(window).height()) + parseFloat($(window).scrollTop()+bottomH);
        if ($(document).height() <= totalheight) {
          if (stop == true) {
            stop = false;
            $("#loading_more").show();   // 显示加载中提示

            var moreHtml = "";
            $.ajax({
              url: '/ajaxIndex/LoadMoreProducts/',
              data: {
                page:page
              },
              dataType: 'json',
              type: 'GET',
              success: function(data){
                if ( 200 == data['code']) {
                  $("#loading_more").hide();
                  stop = true;

                  var productStr = data['data'];
                  var moreHtml = '';
                  for(var key in productStr){
                    var priceHtml = '<span><i>￥</i>'+productStr[key].sfbestPrice+'</span>';
                    if (productStr[key].payMemberPrice != 0 && productStr[key].sfbestPrice != productStr[key].payMemberPrice ) {
                      priceHtml += '<span><b>会员价</b><i>￥</i>'+productStr[key].payMemberPrice+'</span>';
                    }
                    moreHtml += '<li class="price_list2" eid="l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'" goods="'+eval(productStr[key].proudct_id)+'" id="cx_l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'">'+
                            '<div class="pImg pImg_vip">'+
                            '<a href="'+productStr[key].url+'" target="_blank" title="'+productStr[key].name+'"><img class="lazy" data="'+productStr[key].img+'" alt="'+productStr[key].name+'" src="'+productStr[key].img+'" style="display: block;"></a>'+
                            '<div class="gBtn p-btn" style="top: 211px;"><a pid="'+eval(productStr[key].proudct_id)+'" data_url="'+productStr[key].img+'" href="javascript:void(0)" indexflag="1">加入购物车</a></div>'+
                            '</div>'+
                            '<div class="title-a">'+
                            '<a href="'+productStr[key].url+'" target="_blank" title="'+productStr[key].name+'">'+productStr[key].name+'</a>'+
                            '</div>'+
                            '<div class="a_price f_price" id="priceL_l_'+eval(productStr[key].proudct_id)+'_'+eval(parseInt(key))+'">'+priceHtml+'</div>'+
                            '</li>';
                  }
                  $("#guess_you_like").append(moreHtml);
                  page ++;

                  // 重新监听页面
                  $(".ptList li").each(function(){
                    $(this).sfHover({
                      hoverEvent: function(){
                        if ($(this).find(".gWindow").length > 0){
                          $(this).find(".gBtn").hide();
                        }else{
                          $(this).find(".gBtn").show();
                          $(this).find(".gBtn").animate({top:"186px"},200);
                        }
                      },
                      outEvent: function(){
                        $(this).find(".gBtn").animate({top:"211px"},300);
                      }
                    });
                  });
                }else if(201 ==data['code']){
                  $("#loading_more .t2").html('已经没有了');
                  $("#loading_more").show();
                  stop = false;
                }else{
                  console.log('加载完成error! code: 202 ');
                }
              },
              error: function(data){
                console.log('正在加载error! code: 202 ');
              }
            });
          }
        }
      });
    }

    // 口碑甄选回调start
    var bigHtml = '';
    var smallHtml = '';
    $.ajax({
      async: false,
      data: {},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetPerfectGoods/",
      success: function(str){
        for(var key in str.upProduct){
          bigHtml += '<li class="price_list0" goods="'+str.upProduct[key].product_id+'" eid="b_'+str.upProduct[key].product_id+'_0" id="cx_b_'+str.upProduct[key].product_id+'_0">'+
                  '<a class="a_buy" href="'+str.upProduct[key].url+'#trackref=sfbest_hp_hp_goods_big-item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str.upProduct[key].name+'">'+str.upProduct[key].name+'</a>'+
                  '<div class="a_price" id="priceK_b_'+str.upProduct[key].product_id+'_0"><span><i>￥</i></span><span><b>会员价</b><i>￥</i></span></div>'+
                  '<a name="sfbest_hp_hp_goods_big-item'+eval(parseInt(key)+1)+'" class="trackref" href="'+str.upProduct[key].url+'#trackref=sfbest_hp_hp_goods_big-item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str.upProduct[key].name+'">'+
                  '<img class="lazy" data="'+str.upProduct[key].productIndexPic+'" alt="'+str.upProduct[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn bbtn">'+
                  '<a indexFlag="1" pid="'+str.upProduct[key].product_id+'" data_url="'+str.upProduct[key].img+'" href="javascript:void(0)">加入购物车</a>'+
                  '</div>'+
                  '</li>';
        }
        for(var key in str.downProduct){
          smallHtml += '<li class="price_list0" goods="'+str.downProduct[key].product_id+'" eid="b_'+str.downProduct[key].product_id+'_0" id="cx_b_'+str.downProduct[key].product_id+'_0">'+
                  '<a class="a_buy" href="'+str.downProduct[key].url+'#trackref=sfbest_hp_hp_goods_small-item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str.downProduct[key].name+'">'+str.downProduct[key].name+'</a>'+
                  '<div class="a_price" id="priceK_b_'+str.downProduct[key].product_id+'_0"><span><i>￥</i></span><span><b>会员价</b><i>￥</i></span></div>'+
                  '<a name="sfbest_hp_hp_goods_small-item'+eval(parseInt(key)+1)+'" class="trackref" href="'+str.downProduct[key].url+'#trackref=sfbest_hp_hp_goods_small-item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str.downProduct[key].name+'">'+
                  '<img class="lazy" data="'+str.downProduct[key].productIndexPic+'" alt="'+str.downProduct[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn bbtn">'+
                  '<a indexFlag="1" pid="'+str.downProduct[key].product_id+'" data_url="'+str.downProduct[key].img+'" href="javascript:void(0)">加入购物车</a>'+
                  '</div>'+
                  '</li>';
        }
        var bigPerfectHtml = bigHtml + smallHtml;
        $("#bigPerfect").html(bigPerfectHtml);
      }
    });
    // 口碑甄选回调end

    // 楼层商品回调start
    var html = '';
    $.ajax({
      async: false,
      data: {cId:7,floorId:297},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_7_297" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_7_297">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor1_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor1_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_7_297">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-1").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:7,floorId:301},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_7_301" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_7_301">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor2_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor2_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_7_301">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-2").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:0,floorId:357},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_0_357" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_0_357">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor3_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor3_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_0_357">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-3").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:7,floorId:309},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_7_309" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_7_309">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor4_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor4_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_7_309">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-4").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:7,floorId:173},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_7_173" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_7_173">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor5_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor5_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_7_173">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-5").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:5,floorId:371},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_5_371" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_5_371">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor6_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor6_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_5_371">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-6").html(html);
        html = "";
      }
    });
    $.ajax({
      async: false,
      data: {cId:4,floorId:169},
      dataType: "jsonp",
      jsonp:"callback",
      url: "/ajaxIndex/GetFloorGoods/",
      success: function(str){
        var i=0;
        for(var key in str){
          i++;
          html += '<li class="price_list1" eid="l_'+str[key].product_id+'_4_169" goods="'+str[key].product_id+'" id="cx_l_'+str[key].product_id+'_4_169">'+
                  '<div class="pImg pImg_vip">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor7_item'+eval(parseInt(key)+1)+'" target="_blank" title="'+str[key].name+'">'+
                  '<img class="lazy" data="'+str[key].img+'" alt="'+str[key].name+'" />'+
                  '</a>'+
                  '<div class="gBtn p-btn">'+
                  '<a pid="'+str[key].product_id+'" data_url="'+str[key].img+'" href="javascript:void(0)" indexFlag="1">加入购物车</a>'+
                  '</div>'+
                  '</div>'+
                  '<div class="title-a">'+
                  '<a href="'+str[key].url+'#trackref=sfbest_hp_hp_floor7_item'+eval(parseInt(key)+1)+'" target="_blank"  title="'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'">'+(str[key].ProductAbbreviation?str[key].ProductAbbreviation:str[key].name)+'</a>'+
                  '</div>'+
                  '<div class="a_price f_price" id="priceL_l_'+str[key].product_id+'_4_169">'+
                  '<span><i>￥</i>120.8</span><span><b>会员价</b><i>￥</i>98.8</span>'+
                  '</div>'+
                  '</li>';
        }
        $("#floor-gap-7").html(html);
        html = "";
      }
    });
    // 楼层商品回调end
  })();
</script>
<!-- webtrekk start-->
<script type="text/javascript" src="js/webtrekk_v4.min.js" charset="UTF-8"></script>
<script type="text/javascript">
  var pageConfig = {
    linkTrack :"link",
    heatmap :"1"
  };
  var wt = new webtrekkV3(pageConfig);
  wt.contentId = "WEB:首页:首页";
  wt.contentGroup = {
    1 :"WEB:首页",2 :"首页",3 :"首页"
  };
  wt.sendinfo();
</script>
<noscript>
  <div>
    <img src="picture/wt.pl" height="1" width="1" alt=""/>
  </div>
</noscript>
<!-- webtrekk end-->
</body>
</html>

<script type="text/javascript">
  $(document).ready(function(){
    iconShow();

    // 订阅邮箱自动补全
    $('#footermail').autoMail({
      emails:['qq.com','163.com','126.com','hotmail.com','gmail.com','sina.com','sohu.com']
    });

    /*热门晒单 start*/
    $("#toplist").rollGallery({
      direction:"top",
      speed:9000,
      showNum : 2,
      aniSpeed:1500
    });
    /*热门晒单 end*/

    /*首页抢购下期预告 start*/
    //Time:2014.7.16
    var time=800;
    $("#t_next").bind("click",function(){
      $("#timed_pre").css("display","none");
      $("#timed_next").css("display","block");
    });
    $("#t_pre").bind("click",function(){
      $("#timed_pre").css("display","block");
      $("#timed_next").css("display","none");
    });
    /*首页抢购下期预告 end*/
    getAllCity();
  })

  function iconShow(){
  }

  function showShadow1(){
    var h = $(document).height();
    $('#screen').css({ 'height': h });
    $('#screen').show();
    $('.indexshadow').center();
    $('.indexshadow').show();
  }

  function getAllCity(){
    var saveUrl = location.href.split('/')[2].split('.');
    saveUrl[0] = 'www';
    saveUrl = saveUrl.join('.');
    $.ajax({
      url  : 'http://'+saveUrl+'/AjaxSetCity/GetChangeCity/',
      dataType: "jsonp",
      jsonp:"callback",
      data : {},
      success: function(str){
        if(str.shadowData){
          $("#shadowAllCity").html(str.shadowData);
          showShadow1();  // 显示城市浮层
        }
        var cityNameHtml = '<p class="pshort"><span class="city_title1">'+str.cityName+'</span><b></b><span class="outline1"></span><span class="blank1"></span></p>';
        if(2==str.cityName.length){
          cityNameHtml = '<p class="pshort"><span class="city_title1">'+str.cityName+'</span><b></b><span class="outline1"></span><span class="blank1"></span></p>';
        }
        if(3==str.cityName.length){
          cityNameHtml = '<p class="pmiddle"><span class="city_title2">'+str.cityName+'</span><b></b><span class="outline2"></span><span class="blank2"></span></p>';
        }
        if(3<str.cityName.length){
          cityNameHtml = '<p><span class="city_title">'+str.cityName+'</span><b></b><span class="outline"></span><span class="blank"></span></p>';
        }
        cityNameHtml = cityNameHtml+ '<div class="dd">'+str.headData+'</div> ';
        $("#currentCityName").html(cityNameHtml);
      }
    });
  }
</script>

<!-- 弹出城市选择开始 -->
<div id="screen"></div>
<div class="indexshadow" id="shadowAllCity"></div>
<script type="text/javascript" src="../../js/shadow.js"></script>
<!-- 弹出城市选择结束 -->

<!-- 获取智能分流 -->
<script type="text/javascript">
  function getSmartSortFlag() {
    $.getJSON("/ajax/getSmartSortFlag/?callback=?", function(data) {
      if (data.status) {
        SMART_SORT_FLAG = data.flag;
      }
    });
  }
</script>

<script type="text/javascript">
  // emarbox访问跟踪代码
  var _adwq = _adwq || [];
  _adwq.push(['_setAccount', 'dj5p1']);
  _adwq.push(['_setDomainName', '.sfbest.com']);
  _adwq.push(['_trackPageview']);
  (function() {
    var adw = document.createElement('script');
    adw.type = 'text/javascript';
    adw.async = true;
    adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(adw, s);
  })();
</script>

<!-- Emarsys电子商务追踪 -->
<script type="text/javascript" src="../../js/emstrack.js"></script>
<script type="text/javascript" language="JavaScript">
  emsSetEnv('suite');
  emsTracking(273131129,'customer.com');
</script>
<script type="text/javascript" src="../../js/sa.js"></script>
<script type="text/javascript" src="../../js/rt.js"></script>
<noscript>
  <div style="display:none;">
    <img height="0" width="0" style="border-style:none;" src="picture/rt.jpg" />
  </div>
</noscript>

<script type='text/javascript'>
  var google_tag_params ={
    ecomm_prodid: '',
    ecomm_pagetype: 'home',
    ecomm_totalvalue: '',
    category: '',
    login: getCookie('_GOOGLE_ISLOG_') == 1 ?'y':'n'
  };
</script>

<script type="text/javascript">
  /* GOOGLE再营销 <![CDATA[ */
  var google_conversion_id = 990764409;
  var google_custom_params = window.google_tag_params;
  var google_remarketing_only = true;
  /* ]]> */
</script>
<script type="text/javascript" src="js/conversion.js"></script>

<script type="text/javascript">
  /*百度定投*/
  (function (d) {
    window.bd_cpro_rtid="rj6YrHn";
    var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
    var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
  })(document);
</script>

<!-- 百度统计代码 Start -->
<script type="text/javascript">
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    //var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    hm.src = "https://hm.baidu.com/hm.js?56b4bab8080250772f08703b41839413";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
  })();
</script>
<!-- 百度统计代码end -->

<!-- 百度再营销页面代码 Start -->
<script>
  var _hmt = _hmt || [];
  var rtTag ={
    "data": {
      "ecom_page": {
        "page_type": "Index",
        "p_brand":"",
        "p_class1": "",
        "p_class2": ""
      }
    }
  };
  _hmt.push(['_setAccount', '56b4bab8080250772f08703b41839413']);
  _hmt.push(['_trackRTEvent', rtTag]);
  // (function() {
  //   var hm = document.createElement("script");
  //   hm.src = "//hm.baidu.com/hm.js?56b4bab8080250772f08703b41839413";
  //   var s = document.getElementsByTagName("script")[0];
  //   s.parentNode.insertBefore(hm, s);
  // })();
</script>
<!-- 百度再营销页面代码 end -->

<!-- 百度再营销标准代码 Start -->
<script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?cceda50ef06cbaf44bdeaabe2470efee";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
  })();
</script>
<!-- 百度再营销标准代码 end -->

<!-- start 记录sem的cookie -->
<script>
  var urlzszxcm = document.location.href;
  var szszxcm = urlzszxcm.indexOf("semk=");
  if (szszxcm != -1) {
    var srczszxcm = urlzszxcm.substring(szszxcm);
    if (srczszxcm) {
      setCookie('_sf_bdp_sem_cc', srczszxcm, '', '/', '.sfbest.com', '');
    }
  }
</script>
<!-- end 记录sem的cookie -->
