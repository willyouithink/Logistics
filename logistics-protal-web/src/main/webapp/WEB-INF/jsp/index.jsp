<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta baidu-gxt-verify-token="2a6b8c38817fc400156d9dca76e38e22">
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta name="google-site-verification"
          content="CXMyOynQ8Dk8GGHS_6LhoXW1S_hovmEnXOt-wPdJjts" charset="utf-8">
    <title>专注你的托付-德邦官方网站</title>
    <meta name="description"
          content="德邦致力成为以客户为中心，覆盖快递、快运、整车、仓储与供应链等多元业务的综合性物流供应商。可使用“支付宝AR扫德邦LOGO、微信扫德邦二维码”下单。截止2016年6月，公司已开设6,800多家标准化的门店，服务网络遍及全国。网站提供德邦单号查询，德邦网点查询，德邦电话查询，德邦价格查询，在线下单等一站式服务。">
    <meta name="keywords"
          content="德邦，德邦物流，德邦物流公司、德邦物流有限公司、95353、德邦物流官网、上海德邦、北京德邦、广州德邦、苏州德邦、南京德邦、杭州德邦、厦门德邦、深圳德邦、武汉德邦、天津德邦、郑州德邦">
    <meta name="360-site-verification"
          content="b3d1fa48bb29da190af813f48f8cf1d3" />
    <meta http-equiv="Cache-Control" content="max-age=7200" />
    <link href="${pageContext.request.contextPath}/css/master.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jquery.autocomplete.css" rel="stylesheet"
          type="text/css" />
    <script type='text/javascript'>
        var url = location.search;
        var system ={};

        var p = navigator.platform;
        system.win = p.indexOf("Win") == 0;
        system.mac = p.indexOf("Mac") == 0;
        system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);

        if (url.indexOf("bdmark") == -1) {
            if(system.win||system.mac||system.xll){//如果是电脑跳转到官网

            }else{  //如果是手机,跳转到触屏
//        window.location.href="http://m.deppon.com/";
                window.location.href="https://www.deppon.com/mow/";
            }
        }

    </script>
    <style>
        .ad{
            float:left;
            width:705px;
            height: 246px;
            z-index:2;
            position:absolute;
            margin-top:-246px;
        }
        .delete{
            width:19px;
            height: 19px;
            margin-left: 675px;
            margin-top: -241px;
            float: left;
            z-index:2;
            position:absolute;

            cursor:pointer;
        }
    </style>


</head>
<body>

<div class="container corpProfile contraband ">
    <p>	<div class="header">
    <div class="links">
        <ul>
            <li><a
                    href="javascript:addFavorite('http://www.deppon.com','德邦物流');">收藏德邦</a>
            </li>
            <!-- 				<li> -->
            <!-- 					<a href="/invrel/index.html">投资者关系</a> -->
            <!-- 				</li> -->
            <li class="fr nl"><a href="/en/">English</a>
            </li>
            <li class="fr "><a href="/hk/">繁體</a>
            </li>
            <li class="fr current"><a href="javascript:void(0);">简体</a>
            </li>
            <li class="fr nl notLogin"><a href="/user/toregist.action" rel="nofollow">注册</a>
            </li>
            <li class="fr notLogin"><a href="/user/toregist.action" rel="nofollow">登录</a>
            </li>
            <li class="fr login" style="display:none;">
                <span class="currentTime"></span>
                <font>
                    <a style="color:#fbb100;" href="/user/touserinfo.action" class="userName1" id="uname1">
                    </a>
                </font> !
                <a href="javascript:;" class="Safetyexit" id="ifFisKeycustomert">【退出】</a>
            </li>
            <li class="fr" ><a style="text-decoration: none;" href="javascript:openOSS()">在线客服</a>
            </li>
            <li class="fr"><a href="http://zhaopin.deppon.com">德邦招聘</a></li>
        </ul>
    </div>
    <div class="log"><a href="/"></a></div>
    <div class="search">
        <form action="/help/search.action" method="post">
            <p>
                <input type="text" class="entry inputFocus" value="站内搜索" ov="站内搜索" id="website"  name="keyword"><input type="submit" class="submit" value="">
                <input type="hidden" name="siteId" value="47"/>
                <input type="hidden" name="searchType" value="0"/>
                <input type="hidden" name="pageNum" value="1"/>
            </p>
        </form>
    </div>
    <div class="navigation">
        <ul>
            <li class="menua current"><a href="/">首页</a>
            </li>


            <li class="menua">


                <a href="/order/">我的德邦</a>
                <ul class="menuSenc">

                    <li><label> <a href="/new/order/queryIndex.action">我的订单</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/waybillChange/secure/index/">更改管理</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/finacePayRestService/viewJump?struts=kickBill">我的账单</a>
                    </label>
                    </li>
                    <li><label> <a href="/consignor/consignorManager.action">收发货人管理</a>
                    </label>
                    </li>
                    <li><label> <a href="/insurance/kick.action">在线理赔</a>
                    </label>
                    </li>
                    <li><label> <a href="/message/unreadMessages.action">站内消息</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/user/toUserInfo">个人资料设置</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/coupon/secure/myCoupon/">我的优惠券</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/invoince/toApplyInvoinceList">电子发票</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/newTransonline/">网上托运</a>
                <ul class="menuSenc">

                    <li><label> <a href="/new/order/">新版网上下单</a>
                    </label>
                    </li>
                    <li><label> <a href="/batchTransonline/">批量下单</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/price/">价格/时效查询</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/dept/">网点查询</a>
                    </label>
                    </li>
                    <li><label> <a href="/new/range/">快递收送范围</a>
                    </label>
                    </li>
                    <li><label> <a href="/transonline/embargo.html">禁运品</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/new/track/">货物追踪</a>
            </li>
            <li class="menua">


                <a href="/product/index.html">业务介绍</a>
                <ul class="menuSenc">

                    <li><label> <a href="/product/truck.html">主营产品</a>
                    </label>
                    </li>
                    <li><label> <a href="/product/kuajingdianshang.html">德邦跨境</a>
                    </label>
                    </li>
                    <li><label> <a href="/product/collect.html">增值服务</a>
                    </label>
                    </li>
                    <li><label> <a href="/market/index.html">市场活动</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/help/index.html">帮助与支持</a>
                <ul class="menuSenc">

                    <li><label> <a href="/help/newcustomer.html">新客户专区</a>
                    </label>
                    </li>
                    <li><label> <a href="/help/delivery.html">常见问题</a>
                    </label>
                    </li>
                    <li><label> <a href="/help/download.html">下载中心</a>
                    </label>
                    </li>
                    <li><label> <a href="/help/feedback.html">咨询|建议|投诉</a>
                    </label>
                    </li>
                    <li><label> <a href="javascript:openOSS()">在线客服</a>
                    </label>
                    </li>
                    <li><label> <a href="/help/privacy_policy.html">隐私政策</a>
                    </label>
                    </li>
                    <li><label> <a href="/sitemap.html">网站地图</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/investor/tzzGsgg?id=5">投资者关系</a>
                <ul class="menuSenc">

                    <li><label> <a href="/investor/tzzGsgg?id=5">公司公告</a>
                    </label>
                    </li>
                    <li><label> <a href="/investor/tzzCwxx?id=12">财务信息</a>
                    </label>
                    </li>
                    <li><label> <a href="/investor/tzzJl?id=9">投资者交流</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/introduce/">关于德邦</a>
                <ul class="menuSenc">

                    <li><label> <a href="/introduce/index.html">公司概述</a>
                    </label>
                    </li>
                    <li><label> <a href="/news/index.html">新闻办公室</a>
                    </label>
                    </li>
                    <li><label> <a href="http://zhaopin.deppon.com">人才招聘</a>
                    </label>
                    </li>
                    <li><label> <a href="/introduce/contact.html">联系德邦</a>
                    </label>
                    </li>
                    <li><label> <a href="http://dpopen.deppon.com/">开放平台</a>
                    </label>
                    </li>
                    <li><label> <a href="/introduce/video.html">企业视频</a>
                    </label>
                    </li>
                    <li><label> <a href="/introduce/marrige.html">集体婚礼</a>
                    </label>
                    </li>
                    <li><label> <a href="/supplier/information.html">供应商</a>
                    </label>
                    </li>
                </ul>
            </li>
            <li class="menua">


                <a href="/partner/introduce.html">合伙人申请</a>
                <ul class="menuSenc">

                    <li><label> <a href="/partner/introduce.html">事业合伙人概述</a>
                    </label>
                    </li>
                    <li><label> <a href="/applyPartner/openArea.action">开放区域</a>
                    </label>
                    </li>
                    <li><label> <a href="/applyPartner/applyForm.action">在线申请</a>
                    </label>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
    <!--
    <script src="js/jquery-1.6.4.min.js"></script>
    -->

    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            var uname = $.cookie("uname");
            var ifFisKeycustomer=$.cookie("ifFisKeycustomer");
            if(uname!=null&&uname!=''){
                $("#uname1").text(uname);
            }
            if(ifFisKeycustomer=="true"){
                $("#ifFisKeycustomert").before('<img src="${pageContext.request.contextPath}/picture/vip1.png">');
            }
        });
    </script></p>

    <div class="content clearfix ts-index">
        <div class="siderBar">
            <div class="blo ts-orderform subMeuBottom">
                <div class="bc" id="loginInfo">
                    <div class="bct"></div>
                    <div class="bcm">
                        <div class="title commonReMini"><h3>登录我的德邦</h3></div>
                        <div class="title scanRe"><h3>扫码登录</h3></div>
                        <div class="commonMini-regist">
                            <ul id="ts-UserLogin">
                                <form id="loginForm">
                                    <input type="text" value="用户名/email/手机号"
                                           class="textinput inputFocus" ov="用户名/email/手机号" id="userName">
                                    <input type="password" value="" class="textinput inputFocus"
                                           ov="" id="password" placeholder="请输入密码"> <label class="Usercode"
                                                                                           style=""> <input name="" type="text" style="display:none"
                                                                                                            class="Codeinput inputFocus" value="验证码" ov="验证码" id="ckCodes">
                                    <img id="authCode" onClick="changeImg();"
                                         style="display:none"> </label>
                                    <div>
<span class="leftspan"><input name="" type="checkbox"
                              value="" id="remeberNameCheck" onChange="remeber();">
											记住用户名</span> <span class="rightspan"><a
                                            href="/new/user/tofindPsd">忘记密码?</a> </span>
                                    </div>
                                    <input type="hidden" id="remeberUserName" name="remeberName"
                                           value=""> <label class="signee1"></label> <input
                                        type="button" class="ts-submit tosnmiddle_btns" value="登录"
                                        onClick="remeber();">
                                </form>
                            </ul>
                            <div class="ts-xian">
                                享受一站式服务,请先<a href="/user/toregist.action">注册</a>
                            </div>
                            <div style="text-align: center; margin-top: 5px;">
                                <!-- <span id="qqLoginBtn" style="display: none"></span> <span
                                    style="vertical-align: middle">使用合作账号登录：</span> <a href="../otherlogin/otherlogin.action?bindingType=qq">
<img  src="picture/connect_logo_1.png" style="cursor: pointer;"/></a>
<a href="../otherlogin/otherlogin.action?bindingType=weibo">
<img  src="picture/sina_logo.png"  style="cursor:pointer;margin-left:10px;" /></a> -->
                            </div>
                        </div>
                        <div class="scan-regist" style="display: none">
                            <ul style="margin-top: 20px;">
                                <li>
                                    <label style="font-weight: bold;font-size: 15px;margin-left: 45px;
                       																			">安全登录</label>
                                </li>

                            </ul>
                            <div id="qrMini" style="margin-left: 4%; margin-top: 1px;">
                                <div id="qr1Mini" style="width: 120px;height: 120px;margin-left: 19%;">
                                    <div id="qr_click"
                                         style="width: 120px; height: 120px; margin-left: 10%; position: relative;">
                                        <div class="show"
                                             style="position: absolute; margin-left: 60px; display: none; top: -40px;z-index: 10;">
                                            <img src='${pageContext.request.contextPath}/picture/phone1.png' style="border-style:none;">
                                        </div>
                                        <img src="${pageContext.request.contextPath}/picture/qrcode.action" class="qrCreate"
                                             onclick="changeQr();"
                                             style="display: block; position: absolute;margin-left: 5px; margin-top: 1px;border: 1px solid #CCC;margin-left: -13px;">

                                        <div
                                                style="background-color:white;filter:alpha(opacity:10);opacity:0.1;z-index: 20; height: 120px; width: 120px; position: absolute; margin-left: -12px; margin-top: 1px;"
                                                onmouseover="func1();"
                                                onmouseout="func2();" class="lose">
                                        </div>

                                        <div class="loseShow" style="display: none;left:-20px;">
                                            <div style="margin-top: 40px;margin-left: 9px;">
                                                <p>二维码失效</p>
                                                <p>请点击刷新</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div style="margin-top: 8px;">
                                <label style="vertical-align: middle;margin-left: 42px;">使用德邦APP扫描二维码</label>

                            </div>
                        </div>
                    </div>
                    <div class="bcb"></div>
                </div>


                <!-- 如果已经登录，则显示账户信息 -->
                <div class="bc" id="accountInfo" style="display: none;">
                    <div class="bct"></div>
                    <div class="bcm">
                        <h3 style="color:#FFF;background:url(${pageContext.request.contextPath}/static/images/bg-commonq.png) no-repeat;">账户信息 <!--<label style="margin-left: 50%;">
							<a href="javascript:;" style="text-decoration: none;color: orange;" class="a_refush_info">刷新</a></label>--></h3>
                        <div class="ts-username">
                            <span class="currentTime" style="float: left;"></span>&nbsp;<a
                                href="/new/user/toUserInfo" class="userName1" id="uname0" onmouseover="showName();" title=""
                                style="max-width: 75px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;float: left;"></a> ! <a
                                href="javascript:;" class="Safetyexit" id="ifFisKeycustomera">【退出】</a>
                        </div>
                        <!--
                            <input type="hidden" id="userName" name="user.userName" value=""/>
                            -->
                        <div class="ts-usermessage"
                             style="background: url(${pageContext.request.contextPath}/static/images/carstyle.png) 0 6px no-repeat; margin-left: 10px; padding-left: 20px;">
                            运输中订单<a
                                href="order/queryWayBillsInfo.action?jumpParams=transOrder"
                                id="transOrder"><u>(查看)</u></a>
                        </div>
                        <div class="ts-usermessage"
                             style="background: url(${pageContext.request.contextPath}/static/images/paystyle.png) 0 6px no-repeat; margin-left: 10px; padding-left: 20px;">
                            待付款订单<a href="https://www.deppon.com/new/finacerest/returnPayList" id="payOrder"><u>(查看)</u></a>
                        </div>
                        <div class="ts-usermessage"
                             style="background: url(${pageContext.request.contextPath}/static/images/ts-dd.png) 0 -122px no-repeat; margin-left: 10px; padding-left: 20px;">
                            未读站内信<a href="message/unreadMessages.action" id="unreadMessages"><u>(查看)</u></a>
                        </div>
                        <div
                                style="background: url(${pageContext.request.contextPath}/static/images/coupon.png) 0 0px no-repeat; margin-left: 7px; padding-left: 20px;"
                                class="ts-usermessage">
                            未使用优惠券<a style="text-decoration: none; margin-left: 19px;"
                                     class="ac_unuseCoupon accountinfofont ts-cgif"
                                     href="/new/coupon/secure/myCoupon/" id="unuseCoupon"><u>(查看)</u></a>
                        </div>
                        <div class="ts-usermessage-num"></div>
                    </div>
                    <div class="bcb"></div>
                </div>
                <div style="display: none" id="accountInfo_error" class="bc">
                    <div class="bct"></div>
                    <div class="bcm">
                        <h3 style="color:#FFF;background:url(${pageContext.request.contextPath}/images/bg-commonq.png) no-repeat;";>
                            账户信息 <label style="margin-left: 50%;"> </label>
                        </h3>
                        <div class="ts-username">
                            <span class="currentTime"></span>&nbsp; <a
                                class="userName_error userName1" href="/new/user/toUserInfo"></a> !
                        </div>
                        <div
                                style="color: #FF6C00; border-left-width: 0px; padding-left: 10px;padding-top:3px;"
                                class="">为保障安全,请重新输入密码:</div>
                        <input type="password" id="password_error"
                               style="margin-left: 10px; width: 155px;"> <input
                            type="button" value="确认" class="ts-submit tosnmiddle_btns"
                            style="margin-left: 10px;">
                        <div style="margin-left: 12px;margin-top:5px;">
                            <a style="TEXT-DECORATION:underline;" href="#" id="otherLogin" >使用其他账户登录</a>
                        </div>
                    </div>
                    <div class="bcb"></div>
                </div>
            </div>
            <a href="/new/order/"><div
                    class="indexBuy tosnBig">网上下单</div> </a>
            <a href="/help/flash.html"><div
                    class="indexBuy tosnBig">新客户专区</div> </a>
            <!--subMeu-->
            <div class="blo subMeu">
                <div class="bc">
                    <div class="bct"></div>
                    <div class="bcm">
                        <h3 style="color:#FFF;background:url(${pageContext.request.contextPath}/static/images/bg-commonq.png) no-repeat";>快速入口</h3>
                        <ul>
                            <!-- <li class="zhengche"><a href="javascript:loginToVehicle();">
     <span class="ts-suo"></span> <span class="icobg"></span> <span
     class="txt">整车运输</span> </a>
</li>-->
                            <li class="UploadOrder"><a href="new/order/queryIndex.action">
                                <span class="ts-suo"></span> <span class="icobg"></span> <span
                                    class="txt">订单管理</span> </a>
                            </li>
                            <li class="TemplatesDown"><a
                                    href="https://www.deppon.com/new/finacerest/returnPayList"> <span class="ts-suo"></span>
                                <span class="icobg"></span> <span class="txt">我要支付</span> </a>
                            </li>
                            <li class="billpay"><a href="https://www.deppon.com/new/finacePayRestService/viewJump?struts=kickBill">
                                <span class="ts-suo"></span> <span class="icobg"></span> <span
                                    class="txt">已有账单</span> </a>
                            </li>
                            <li class="take"><a href="template/browse.action"> <span
                                    class="ts-suo"></span> <span class="icobg"></span> <span
                                    class="txt">模板管理</span> </a>
                            </li>
                            <li class="takeorder"><a href="insurance/kick.action">
                                <span class="ts-suo"></span> <span class="icobg"></span> <span
                                    class="txt">在线理赔</span> </a>
                            </li>
                            <li><a href="/new/waybillChange/secure/index/"> <span
                                    class="ts-suo"></span> <span class="ts-rdgif"></span> <span
                                    class="txt">更改申请</span> </a>
                            </li>
                            <!--<li><a href="pettyLoan/loadPettyLoan.action"> <span
    class="ts-suo"></span> <span class="ts-prettyloan"></span> <span
    class="txt">我要贷款</span> </a>
</li>-->
                            <li><a href="javascript:toFPSSystem()"> <span class="ts-suo"></span>
                                <span class="ts-fps"></span> <span class="txt">金融服务</span> </a>
                            </li>
                            <li><a href="/supplier/information.html" target="_blank"> <span
                                    class="ts-suo"></span> <span class="ts-srm"></span> <span
                                    class="txt">供应商</span> </a>
                            </li>
                            <li><a href="https://www.deppon.com/new/b2bPay/b2bLoginByToken" target="_blank"> <span
                                    class="ts-suo"></span> <span class="ts-bb"></span> <span
                                    class="txt">B2B系统</span> </a>
                            </li>
                        </ul>
                    </div>
                    <div class="bcb"></div>
                </div>
            </div>
            <!--subMeuEnd-->
            <div class="blo bcontact">
                <div class="selecteWay">
                    <ul class="clearfix" id="tabs">
                        <li class="s1"><a href="javascript:" class="current">德邦公告</a>

                        </li>
                        <li class="s2"><a href="javascript:">德邦动态</a>
                        </li>
                    </ul>
                </div>
                <div class="selecteWayTab" id="tabsCont">
                    <div>
                        <ul>


                            <li>
                                <a href="/news/201805/13049.html" title="上合峰会影响青岛时效不保障">
										<span>
											<span>上合峰会影响青岛时效不保障</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201804/13009.html" title="关于德邦客服热线95353人工服务时间调整公告">
										<span>
											<span>关于德邦客服热线95353人工</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201802/12992.html" title="西安志成德邦物流有限公司仓储物流配送中心项目 竣工验收公示">
										<span>
											<span>西安志成德邦物流有限公司仓</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201801/12969.html" title="关于部分地区暴雪天气影响时效的温馨提醒">
										<span>
											<span>关于部分地区暴雪天气影响时</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>


                        </ul>
                    </div>

                    <div style="display: none;">
                        <ul>

                            <li>
                                <a href="/news/201802/12990.html" title="刚刚，德邦上市了！崔维星携基层快递员和客户敲响铜锣">
										<span>
											<span>刚刚，德邦上市了！崔维星携</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201802/12989.html" title="军民融合全国开花,德邦成为物流急先锋">
										<span>
											<span>军民融合全国开花,德邦成为</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201802/12982.html" title="德邦在巴州设立首个南疆快递分拨中心">
										<span>
											<span>德邦在巴州设立首个南疆快递</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                            <li>
                                <a href="/news/201802/12981.html" title="德邦获上海绿色供应链2017年度优秀案例奖，打造绿色物流">
										<span>
											<span>德邦获上海绿色供应链2017年</span>
											<img src="${pageContext.request.contextPath}/picture/index-hot.png"
                                                 style="padding-top: 5px; width: 23px; border-bottom-width: 0px;
												 margin-top: 0px; margin-bottom: 20px;">
										</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--bcontact end-->
            <!--cus service-->
            <div class="c-service clearfix">
                <a href="/help/feedback.html" title="咨询 | 建议 | 投诉">
                    <p class="sug">咨询 | 建议 | 投诉</p>
                </a>
                <!-- Live800在线客服图标:图标[固定型] 开始-->
                <div id='live14' style="padding-left:154px;">
                    <!--
                    <a id="live800iconlink" onclick="try{if(typeof globalVar !='undefined'){ globalVisitor.closeMini();}else{parent.closeMini();}}catch(e){}this.newWindow=window.open('https://online-service.deppon.com/live800/chatClient/chatbox.jsp?companyID=8912&configID=14&enterurl=PC%e5%ae%98%e7%bd%91&chatfrom=web', 'chatbox8912', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=1,width=570,height=424');this.newWindow.focus();this.newWindow.opener=window;void(0);try{if(LIM&&LIM.visitor){LIM.visitor.closeMini();}else{parent.closeMini();}}catch(e){}" href="javascript:void(0)">
                    <img id="live800icon" border="0"  src="picture/2fb088710c9c4ce389268a106b6c0bd0.gif" name="live800icon" >
                    </a>
                    -->
                    <!-- 替换为有邦 -->
                    <!--
                    <a id="live800iconlink"  href="https://online-service.deppon.com/live800/chatClient/chatbox.jsp?companyID=8912&configID=14&enterurl=PC%e5%ae%98%e7%bd%91&chatfrom=web" target="_blank">
                    <img id="live800icon" border="0"  src="picture/436773b033f44d868e82bc7c5f31391b.gif" name="live800icon">
                    <p class="ol-sers" style="margin-left: -7px;text-align: left;">在线客服</p>
                    -->
                    <a id="live800iconlink"  href="https://dev.markd.cn:8201" target="_blank">
                        <img id="live800icon" border="0"  src="${pageContext.request.contextPath}/picture/436773b033f44d868e82bc7c5f31391b.gif" name="live800icon">
                        <p class="ol-sers" style="margin-left: -7px;text-align: left;">在线客服</p>
                        <!--
                        <a id="live800iconlink"  href="https://dev.markd.cn:8201" target="_blank">
                        <img id="live800icon" border="0"  src="picture/436773b033f44d868e82bc7c5f31391b.gif" name="live800icon">
                        <p class="ol-sers" style="margin-left: -7px;text-align: left;">在线客服</p>
                        -->
                    </a>
                </div>
                <!--<a  href="javascript:openOSS()">

                </a>-->
            </div>
            <!--cus service end-->
        </div>
        <div class="main">



            <div class="flashPic" style="z-index:1">

                <c:forEach items="${lunbo}" var="l" >
                    <a target="_blank"
                       href="https://www.deppon.com/market/201804/13019.html"> <img width="705" height="246"
                                                                                    border="0" src="${l.img}" title="" alt=""
                                                                                    style="display:[#if a_index==0]inline[#else] none[/#if];">
                    </a>
                </c:forEach>
                <div class="prevBtn"></div>
                <div class="nextBtn"></div>
                <div class="picNum">
                    <a class="on"
                       href="javascript:"></a>  <a class=""
                                                   href="javascript:"></a>  <a class=""
                                                                               href="javascript:"></a>  <a class=""
                                                                                                           href="javascript:"></a>  <a class=""
                                                                                                                                       href="javascript:"></a>
                </div>

            </div>

            <div class="indexsearch clearfix">
                <div>
                    <span class="sleft"></span> <span class="scenter">
							<h2>货物追踪</h2>
							<form action="/new/track/" method="get"
                                  class="cargotracking" id="trackForm">
                                <p>
									<textarea name="billStr" style="overflow-y: auto;"
                                              class="textarea inputFocus" id="ordernum" ov="请输入运单号">请输入运单号</textarea>
                                </p>
                                <p class="inputop">
                                    <!--<input id="trackCodeInput" type="text" name="securityCode"
                                        class="d_input numbercode"> <img
                                        src="picture/authcode.action" onClick="changeTrackCode()"
                                        ; style="width: 50px; cursor: pointer;" id="trackCode">-->
                                    <input name="" type="button" value="查询" style="margin-left:123px;"
                                           class="cargobutton butleft tosnsmall_btn searchnumber">
                                </p>
                                <p class="pfont inputop">最近查询记录:</p>
                                <p id="orderRecords"></p>
                                <p class="norder" id="noRecords">
                                    <b>您最近没有查询记录</b>
                                </p>
                            </form></span> <span class="sright"></span> <span class="sbottom"></span>
                </div>

                <div>
                    <span class="sleft"></span> <span class="scenter">
							<h2>网点查询</h2>
							<form id="cityfrom" action="/new/dept/" method="get"
                                  class="cargotracking">
                                <p>
                                    <label class="newprocitySel"> <input name=""
                                                                         id="start1" autocomplete="off" type="text" value="请选择/输入城市名称"
                                                                         class="city_input  inputFocus proCityQueryAll proCitySelAll wdSendAddress"
                                                                         ov="请选择/输入城市名称"> </label>
                                </p>
                                <input name="start" id="start" style="display: none;"> <input
                                    name="desti" value="" style="display: none;">
                                <p class="inputop">
                                    <input name="type" type="radio" value="1" checked="checked" style="margin-left:5px;" />零担
                                    <input name="type" type="radio" value="2" style="margin-left: 10px;" />快递
                                    <input name="" type="button" value="查询"
                                           class="cargobutton butseach tosnsmall_btn intbotn" style="margin-left:25px;">
                                </p>
                                <p class="pfont inputop" >
                                    网点信息: 点击 <a href="/wangdian/" ><label class="signee3"></label><font
                                        style="color: #fbb100;" class="zt_changered" id="countDepts">查看全国</font>
                                </a>
                                    </a>
                                </p>
                                <ul class="shopMess">
                                    <dl id="latest-depts" style="width: 188px;">
                                        <font style='color: #fbb100;'> <a
                                                style='color: #fbb100;' href='../user/coupons.action'>新点开业,点击领取优惠券>></a>
                                        </font>
                                        <font
                                                style='background: url(images/hot.gif) no-repeat scroll 0px 0px transparent; margin-top: 0px; padding-left: 20px; border-top-width: 0px; padding-right: 6px;'>
                                        </font>
                                    </dl>
                                </ul>
                            </form> </span> <span class="sright"></span> <span class="sbottom"></span>
                </div>

                <div>
                    <span class="sleft"></span> <span class="scenter">
							<h2>当前价格/时效</h2>
							<form action="/new/price/" method="get" class="cargotracking"
                                  id="PriceForm">
                                <p>
                                    <label class="newprocitySel"> <input id="leavedCity1"
                                                                         name="departureCity" autocomplete="off" type="text"
                                                                         class="cityinput proCityQuery inputFocus proCitySel send_Input sendAddress"
                                                                         value="请选择/输入发货城市" ov="请选择/输入发货城市"> </label>
                                </p>

                                <p>
                                    <label class="newprocitySel"> <input id="arrivedCity1"
                                                                         name="destinationCity" autocomplete="off" type="text"
                                                                         class="cityzinput proCityQuery inputFocus proCitySel receiveAddress"
                                                                         value="请选择/输入到达城市" ov="请选择/输入到达城市"> </label>
                                </p>

                                <p class="inputop">
                                    <input id="PriceSearch" name="" type="button" value="查询"
                                           class="cargobutton butseach tosnsmall_btn tsprice">
                                </p>
                            </form> </span> <span class="sright"></span> <span class="sbottom"></span>
                </div>

            </div>
            <div class="carriage">
                <h2>主营产品</h2>
                <div class="carriageclass clearfix">
                    <a href="/product/express.preferential.html" class="tehui"><br><span class="txt_top" style="margin-left:22px">3.60特惠件</span><span class="txt_bottom" style="margin-left:22px">实惠安心贴心</span></a>
                    <a href="/product/express.html" class="economyexpress"  style="margin-left:30px"><br><span class="txt_top" style="margin-left:20px">标准快递</span><span class="txt_bottom" style="margin-left:20px">专业可靠</span></a>
                    <a href="/product/commerce.preferential.html" class="exclusive"  style="margin-left:45px;"><br><span class="txt_top" style="margin-left:22px">电商尊享</span><span class="txt_bottom" style="margin-left:22px">专属省心放心</span></a>
                    <a href="/product/zhuandi.html" class="swzd" style="margin-left:30px" ><br><span class="txt_top" style="margin-left:40px">特准快件</span><span class="txt_bottom" style="margin-left:40px">一诺千金</span></a>

                </div>
                <div class="carriageclass clearfix" style="margin-top:0px">
                    <a href="/product/air.html" class="performance" ><br><span class="txt_top" style="margin-left:38px">精准空运</span><span class="txt_bottom" style="margin-left:38px">快捷高效</span></a>
                    <a href="/product/truck.html" class="transport" style="margin-left:30px;"><br><span class="txt_top" style="margin-left:30px">精准卡航</span><span class="txt_bottom" style="margin-left:30px">高性价比</span></a>
                    <a href="/product/city.html" class="shortcut"  style="margin-left:35px"><br><span class="txt_top" style="margin-left:40px">精准城运</span><span class="txt_bottom" style="margin-left:40px">城市便捷通道</span></a>
                    <a href="/product/car.html" class="scope"  style="margin-left:55px"><br><span class="txt_top" style="margin-left:25px">精准汽运</span><span class="txt_bottom" style="margin-left:25px">高覆盖率</span></a>

                </div>
                <div class="carriageclass clearfix" style="margin-top:0px">
                    <a href="/product/zhengche.html" class="carload"  style=""><br><span class="txt_top" style="margin-left:30px">整车运输</span><span class="txt_bottom" style="margin-left:30px">十万客户信赖</span></a>
                    <!--<a href="/product/financial.html" class="financial"  style=""><br><span class="txt_top" style="margin-left:28px">金融小贷</span><span class="txt_bottom" style="margin-left:28px">快速灵活</span></a>-->
                    <a href="/product/storage.html" class="storage"  style=""><br><span class="txt_top" style="margin-left:10px">德邦仓储</span><span class="txt_bottom" style="margin-left:10px">省时省力省心</span></a>
                    <a href="/product/FBA.html" class="international"  style=""><br><span class="txt_top" style="margin-left:10px">跨境业务</span><span class="txt_bottom" style="margin-left:10px">一站式服务</span></a>
                    <a href="/product/zhongbao.html" class="preferential"  style="margin-left:25px"><br><span class="txt_top" style="margin-left:25px">重包入户</span><span class="txt_bottom" style="margin-left:25px">包接包送</span></a>
                </div>

            </div>
            <div class="services">
                <h2>增值服务</h2>
                <div class="servicesclass clearfix" style="margin-left: 5px">
                    <!--<a href="#"  class="loan">提供上门接货,送<br>货到门服务</a>-->
                    <a href="/product/collect.html" class="collection"><span class="txt_top">代收货款</span>
                        <span class="txt_bottom">便捷货款回收</span></a>
                    <a href="/product/insurance.html" class="Protect"><span class="txt_top">保价运输</span>
                        <span class="txt_bottom">安全保价运输</span></a>
                    <a href="/product/package.html" class="safety"><span class="txt_top">安全包装</span>
                        <span class="txt_bottom">专业包装服务</span></a>
                    <a href="/product/other.html" class="addService"><span class="txt_top" style="width:85px;">其他增值服务</span>
                        <span class="txt_bottom">特色定制服务</span></a>
                </div>
            </div>
            <div class="services">
                <h2>
                    新手攻略 <a href="/help/flash.html">更多攻略...</a>
                </h2>
                <ul>
                    <li>
                        <p class="sfont">寄送货物</p>  							<p>
                        <a href="/help/delivery.html#art_17">如何填写托运单？</a>
                    </p> 							<p>
                        <a href="/help/delivery.html#art_18">德邦能提供什么...</a>
                    </p> 							<p>
                        <a href="/help/delivery.html#art_19">如何正确包装？</a>
                    </p>  </li>   						<li>
                    <p class="sfont">追踪货物</p>  							<p>
                    <a href="/help/tracking.html#art_22">什么是运单号 ?</a>
                </p> 							<p>
                    <a href="/help/tracking.html#art_23">如何查询货物运...</a>
                </p> 							<p>
                    <a href="/help/tracking.html#art_24">在哪里能找到德...</a>
                </p>  </li>   						<li>
                    <p class="sfont">接收货物</p>  							<p>
                    <a href="/help/receive.html#art_32">自提、派送是什...</a>
                </p> 							<p>
                    <a href="/help/receive.html#art_33">发现我的货物有...</a>
                </p> 							<p>
                    <a href="/help/receive.html#art_34">接收货物要办理...</a>
                </p>  </li>   						<li>
                    <p class="sfont">结算支付</p>  							<p>
                    <a href="/help/finance.html#art_11759">什么是电子发票</a>
                </p> 							<p>
                    <a href="/help/finance.html#art_28">如何查看我的付...</a>
                </p> 							<p>
                    <a href="/help/finance.html#art_29">我对账单有意见...</a>
                </p>  </li>


                </ul>
            </div>
        </div>
    </div>

    <p><div class="footer">
    <div class="lo">
        <p>95353</p>
    </div>
    <div class="f-nav">
        <ul>
            <li><a href="/help/privacy_policy.html">隐私政策</a></li>
            <li><a href="/new/track/">货物追踪</a></li>
            <li><a href="/new/price/">价格/时效</a></li>
            <li><a href="/new/dept/">营业网点</a></li>
            <li><a href="http://zhaopin.deppon.com">人才招聘</a></li>
            <li><a href="/remove/">除名查询</a></li>
            <li><a href="/sitemap.html">网站地图</a></li>
            <li><a href="/introduce/contact.html">联系我们</a></li>
        </ul>
    </div>
    <div class="f-icp">
        <a href="http://si.trustutn.org/info?sn=473180109031639586105&certType=1" target="_blank" rel=”nofollow”><img style="width: 106px;height: 38px" src="picture/icp1.png"></img></a>
    </div>
    <div class="copyright">  Copyright © 2012-2017 德邦物流股份有限公司. All rights reserved.<a href="http://www.miitbeian.gov.cn" style="color:#c3c2d5" target="_blank"  rel="nofollow" >沪ICP备10005645</a> </div>

    <div style="display:none;">
        <!--
                 <script type='text/javascript' charset='utf-8' src='js/wb.js'></script>
        -->
        <!--
                 <script type='text/javascript' charset='utf-8' src='js/qc_loader.js' data-appid='100294686' data-redirecturi='https://www.deppon.com/help/qc_callback.html' charset='utf-8'></script>
        -->

        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-37254187-1', 'auto');
            ga('send', 'pageview');

        </script>

        <script>
            var _hmt = _hmt || [];
            (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?39f474fa8fa9cefbed841228218c1418";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>


        <!-- GA统计代码开始 -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push([ '_setAccount', 'UA-37254187-1' ]);
            _gaq.push([ '_trackPageview' ]);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl'
                                : 'http://www')
                        + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
        </script>
        <!-- Live800在线客服图标:图标[固定型] 开始-->
        <!--
                <script language="javascript" src="js/floatbutton.js"></script>
        -->
        <!-- Live800在线客服图标:图标[固定型] 结束-->
        <!--
                <script language="javascript" src="js/monitor.js"></script>
        -->
    </div>
</div></p>
</div>
<div class="provinceCity">
    <div class="tabs clearfix">
        <ul class="">
            <li><a href="javascript:" class="current" tb="hotCity">热门城市</a>
            </li>
            <li><a href="javascript:" tb="province">省份</a></li>
            <li><a href="javascript:" tb="city" id="city">城市</a></li>
            <li><a href="javascript:" tb="county" id="county">区县</a></li>
        </ul>
    </div>
    <div class="con">
        <div class="hotCity invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="province invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">江西省</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="city invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="county invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

    </div>
</div>
<div style="display: none">
    <form action="/track/" name="trackPostForm"
          method="get" id="trackPostForm">
        <input name="billStr" id="subBillStr" value="" />
    </form>
</div>
<!--弹出省省市-->
<div class="provinceCityAll">
    <div class="tabs clearfix">
        <ul class="">
            <li><a href="javascript:" class="current" tb="hotCityAll">热门城市</a>
            </li>
            <li><a href="javascript:" tb="provinceAll">省份</a></li>
            <li><a href="javascript:" tb="cityAll" id="cityAll">城市</a></li>
            <li><a href="javascript:" tb="countyAll" id="countyAll">区县</a>
            </li>
        </ul>
    </div>
    <div class="con">
        <div class="hotCityAll invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="provinceAll invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">江西省</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="cityAll invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

        <div class="countyAll invis">
            <div class="pre">
                <a></a>
            </div>
            <div class="list">
                <ul>
                </ul>
            </div>
            <div class="next">
                <a class="can"></a>
            </div>
        </div>

    </div>
</div>

<div class="filebg"></div>
<!--不同价格时效的城市 -->
<div class="popupTep" id="multCities"
     style='position: fixed; _position: absolute; z-index: 8;'>
    <h3 class="tit">
        您所选择的发货网点城市有不同的价格时效<a href="javascript:" title="关闭"
                              class="clo popupClo"></a>
    </h3>
    <div class="con">
        <div class="tf-newOutlets">
            <ul>
                <li>请选择您要发货的地点:</li>
            </ul>
            <ul id="preTimeCities">

            </ul>
        </div>
    </div>
    <input type="hidden" id="leavedCityId" /> <input type="hidden"
                                                     id="arrivedCityId" />
</div>




<div class="filebg"></div>
<div class="t-code" style="right: 21.5px; bottom: 10px;"><div class="t-code-inner"></div><div style="background-color:#373c64;"><span style="color:#FFF;margin-left: 29px">德邦微信</span><a style="background: url(images/close-x.jpg) no-repeat scroll 0px 0px transparent; margin-left: 31px; padding-left: 10px;cursor:pointer;"></a></div>
</div>
<div class="fileapp"></div>
<div class="a-code" style="right: 21.5px; bottom: 160px; "><div class="a-code-inner"></div><div style="background-color:#373c64;"><span style="color:#FFF;margin-left: 29px">官方APP</span><a style="background: url(images/close-x.jpg) no-repeat scroll 0px 0px transparent ; margin-left: 33px; padding-left: 10px;cursor:pointer;"></a></div>

</div>
<script src="js/public.js" charset="utf-8"></script>



<script src="js/config.js"></script>
<link rel="stylesheet"
      href="css/citycontrol.css">
<script type="text/javascript"
        src="js/group.js"></script>
<script type="text/javascript"
        src="js/citycontrol.js"></script>

<script src="js/priceanddept.js"></script>
<script src="js/validateinputcityname.js"></script>
<script src="js/index.js"></script>
<script src="js/ad.js"></script>
<script src="js/jquery.cookies.2.2.0.js"></script>
<script src="js/adcal.js"></script>

<script>

    $(document).ready(function(){

        var uname = $.cookie("depponLoginUserName");
        var ifFisKeycustomer=$.cookie("ifFisKeycustomer");
        if(uname!=null&&uname!=''){
            $("#uname0").text(uname);
        }
        if(ifFisKeycustomer=="true"){
            $("#ifFisKeycustomera").before('<img src="picture/vip1.png">');
        }

    });
</script>

</body>
</html>