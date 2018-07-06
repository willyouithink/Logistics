<%--
  Created by IntelliJ IDEA.
  User: aqiang
  Date: 2018/6/12
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>货物追踪-德邦</title>
  <meta name="description"
        content="德邦单号查询，德邦快递单号查询，在线提供德邦单号查询，德邦快递单号查询，德邦货物追踪，德邦单号追踪，德邦快递单号追踪，实时帮助客户了解货物运输状态，方便客户查询物流状况。">
  <meta name="keywords" content="德邦物流单号查询,德邦快递单号查询,德邦物流快递货物追踪,95353">
  <meta name="author" content="德邦物流股份有限公司" />
  <meta name="Copyright" content="德邦物流股份有限公司" />
  <link href="../../css/master.css" type="text/css"
        rel="stylesheet">
  <link href="../../css/boximg.css" type="text/css"
        rel="stylesheet">
  <!-- <link href="css/jquery.autocomplete.css" rel="stylesheet"
      type="text/css" /> -->
    <%--<script type="text/javascript" src="https://www.deppon.com/r/cms/cms/default/js/survey-show.js"></script>--%>
  <style type="text/css">
    a.aDown {
      background: url(../../images/down_tosntimesearch.png) no-repeat
      right center;
      padding-right: 20px;
      margin-right: 15px;
    }

    a.aUp {
      background: url(../../images/span_tosndel.png) no-repeat right
      center;
      padding-right: 20px;
      margin-right: 15px;
    }

    /* #expressImg {

    }

    .shadeDiv {
        position: absolute;
        background-color: #ccc;
        filter: alpha(opacity = 50);
        -moz-opacity: 0.5;
        -khtml-opacity: 0.5;
        opacity: 0.5;
        left: 0px;
        top: 0px;
        z-index: 999;
    }

    .expressImgBig {
        clear: both;
        position: absolute;
        left: 300px;
        width: 900px;
        height: 460px;
        background-position: center;
        background-repeat: no-repeat;
        background-size: 100% 100%;
        z-index: 1000;
        border: 1px solid #666;
        float: right;
    }

    .expressImgBigClose {
        clear: both;
        position: relative;
        float: inherit;
        cursor: pointer;
        padding: 0px 6px 0px 6px;
        color: #ffffff;
        font-size: 16px;
        font-weight: bold;
    } */
  </style>
</head>
<body>
<div class="container cargoTracking">
  <div class="header" cv="货物追踪">


    <meta charset="utf-8">
    <div class="links">
      <ul>
        <li><a href="javascript:addFavorite()">收藏德邦</a></li>
        <!-- 	 	<li><a href="/invrel/index.html">投资者关系</a></li> -->
        <li class="fr nl"><a href="/en/">English</a></li>
        <li class="fr "><a href="/hk/">繁體</a></li>
        <li class="fr current"><a href="#">简体</a></li>



        <li class="fr nl notLogin"><a href="../../new/user/registerAndlogin"
                                      rel="nofollow">注册</a></li>
        <li class="fr notLogin"><a href="/new/user/registerAndlogin"
                                   rel="nofollow">登录</a> <input id="couponLoginName" type="hidden"
                                                                name="couponLoginName" value="" /></li>


        <li class="fr loginTemp" style="display: none;"><span
                class="currentTime"></span>&nbsp; <font class="loginusername">
          <a style="color: #fbb100;" href="/new/user/toUserInfo"
             id="uname1"> </a>
        </font> ! <a href="javascript:;" class="Safetyexit_Temp"
                     id="ifFisKeycustomert22">【退出】</a> <input type="hidden"
                                                              name="logoutBefActionName" value="" /> <input
                id="vipIsShow" type="hidden" value="" /> <input id="couponLoginName"
                                                                type="hidden" name="couponLoginName" value="" /></li>
        <!-- <li class="fr"><a href="javascript:void(0);"
            onclick="$('#live800iconlink').trigger('click');"
            style="text-decoration: none;">在线客服</a></li> -->
        <li class="fr"><a href="https://online-service.deppon.com/live800/chatClient/chatbox.jsp?companyID=8912&configID=14&enterurl=PC%e5%ae%98%e7%bd%91&chatfrom=web"
                          style="text-decoration: none;">在线客服</a></li>
        <li class="fr"><a href="http://zhaopin.deppon.com">德邦招聘</a></li>
      </ul>
      <div id='live15' style="display: none;"></div>
    </div>
    <div class="log">
      <a href="/"></a>
    </div>

    <form action="/help/search.action" method="post">
      <div class="search">
        <p>
          <input type="text" class="entry inputFocus" value="站内搜索" ov="站内搜索"
                 id="website" name="keyword"><input type="submit"
                                                    class="submit" value=""> <input type="hidden" name="siteId"
                                                                                    value="47" /> <input type="hidden" name="searchType" value="0" /> <input
                type="hidden" name="pageNum" value="1" />
        </p>
      </div>
    </form>

    <div class="navigation">
      <ul>
        <li><a href="/">首页</a></li>
        <li class="menua"><a href="/order/" class="cname">我的德邦</a>
          <ul class="menuSenc">
            <li><label><a href="/new/order/queryIndex.action">我的订单</a></label></li>
            <li><label><a
                    href="/new/waybillChange/secure/index/">更改管理</a></label></li>
            <li><label><a href="/new/finacePayRestService/viewJump?struts=kickBill">我的账单</a></label></li>
            <li><label><a
                    href="/consignor/consignorManager.action">收发货人管理</a></label></li>
            <li><label><a href="/insurance/kick.action">在线理赔</a></label></li>
            <li><label><a href="/message/unreadMessages.action">站内消息</a></label></li>
            <li><label class=""><a href="/new/user/toUserInfo">个人资料设置</a></label></li>
            <li><label class=""><a href="/new/coupon/secure/myCoupon/">我的优惠券</a></label></li>
            <!-- caizhukui 2015-12-8 update start 暂时关闭我要贷款功能 -->
            <!--
            <li><label class="labelnone"><a
                    href="../pettyLoan/loadPettyLoan.action">我要贷款</a></label></li>
            -->

            <!-- caizhukui 2015-12-8 update end 暂时关闭我要贷款功能 -->
            <li><label class="labelnone"><a
                    href="/new/invoince/toApplyInvoinceList">电子发票</a></label></li>
          </ul> <iframe frameborder=0 class=subMenuifname height="160"></iframe></li>
        <li class="menua"><a href="/new/order/" class="cname">网上托运</a>
          <ul class="menuSenc">
            <li><label><a href="/new/order/">新版网上下单</a></label></li>

            <li><label><a href="/batchTransonline/">批量下单</a></label></li>
            <li><label><a href="/new/price/">价格/时效查询</a></label></li>
            <li><label><a href="/new/dept/">网点查询</a></label></li>
            <li><label><a href="/new/range/">快递收送范围</a></label></li>
            <li><label class="labelnone"><a
                    href="/transonline/embargo.html">禁运品</a></label></li>
          </ul> <iframe frameborder=0 class=subMenuifname height="160"></iframe></li>
        <li class="menua"><a href="/new/track/" class="cname">货物追踪</a>
        </li>
        <li class="menua"><a href="/product/" class="cname">业务介绍</a>
          <ul class="menuSenc">
            <li><label><a href="/product/express.html">运输方式</a></label></li>
            <li><label><a href="/product/collect.html">增值服务</a></label></li>
            <li><label class="labelnone"><a href="/market/">市场活动</a></label></li>
          </ul> <iframe frameborder=0 class=subMenuifname height="160"></iframe></li>
        <li class="menua"><a href="/help/flash.html" class="cname">帮助与支持</a>
          <ul class="menuSenc">
            <li><label><a href="/help/flash.html">新客户专区</a></label></li>
            <li><label><a href="/help/delivery.html">常见问题</a></label></li>
            <li><label><a href="/help/download.html">下载中心</a></label></li>
            <li><label><a href="/help/feedback.html">咨询|建议|投诉</a></label></li>
            <!-- <li><label><a href="javascript:void(0);"
                    onclick="$('#live800icon').trigger('click');">在线客服</a></label></li> -->
            <li><label><a href="https://online-service.deppon.com/live800/chatClient/chatbox.jsp?companyID=8912&configID=14&enterurl=PC%e5%ae%98%e7%bd%91&chatfrom=web">在线客服</a></label></li>
            <li><label class="labelnone"><a href="/sitemap.html">网站地图</a></label></li>
          </ul> <iframe frameborder=0 class=subMenuifname height="160"></iframe></li>

        <li class="menua"><a href="/investor/tzzGsgg?id=5" class="cname">投资者关系</a>
          <ul class="menuSenc">
            <li><label><a href="/investor/tzzGsgg?id=5">公司公告</a></label></li>
            <li><label><a href="/investor/tzzCwxx?id=12">财务信息</a></label></li>
            <li><label><a href="/investor/tzzJl?id=9">投资者交流</a></label></li>
          </ul> <iframe frameborder=0 class=subMenuifname height="160"></iframe></li>

        <li class="menua"><a href="/news/" class="cname">关于德邦</a>
          <ul class="menuSenc">
            <li><label><a href="/introduce/">公司概述</a></label></li>
            <li><label><a href="/news/">新闻办公室</a></label></li>
            <li><label><a href="http://zhaopin.deppon.com">人才招聘</a></label></li>
            <!-- 						<li><label><a href="/invrel/index.html">投资者关系</a></label></li> -->
            <li><label><a href="/introduce/contact.html">联系德邦</a></label></li>
            <li><label> <a href="http://dop.deppon.com/">开放平台</a></label></li>
            <li><label><a href="/introduce/vedio.html">企业视频</a></label></li>
            <li><label class="labelnone"><a
                    href="/introduce/marrige.html">集体婚礼</a></label></li>
            <li><label> <a href="/supplier/statement.html">供应商</a></label></li>
          </ul></li>
        <li class="menua"><a href="/partner/introduce.html" class="cname">合伙人申请</a>
          <ul class="menuSenc">
            <li><label><a href="/partner/introduce.html">事业合伙人概述</a></label></li>
            <li><label><a href="/applyPartner/openArea.action">开放区域</a></label></li>
            <li><label><a href="/applyPartner/applyForm.action">在线申请</a></label></li>
          </ul>
        </li>
      </ul>
      <iframe frameborder=0 class=subMenuifname></iframe>
    </div>

    <script src="../../js/jquery-1.6.4.min.js"></script>
    <script src="../../js/jquery.cookie.js"></script>
    <script src="../../js/jquery.cookies.2.2.0.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        var uname = $.cookie("uname");
        var ifFisKeycustomer=$.cookie("ifFisKeycustomer");
        if(uname!=null&&uname!=''){
          $("#uname1").text(uname);
        }
        if(ifFisKeycustomer=="true"){
          $("#ifFisKeycustomert").before('<img src="picture/vip1.png">');
        }
      });
    </script>

  </div>
  <div class="content clearfix">
    <div class="siderBar" cv="货物追踪">




      <!-- 侧边栏 -->

      <!--我的德邦subMeu-->
      <div class="blo ts-subMeu" id="div-mydeppon" style="display: none;">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul class="ts-pngOpacity">
              <div class="ts-padding">
                <a href="javascript:void(0);" class="ts-dgif"><span
                        id="span_dgif" class="ts-left"></span><span class="txt">我的订单</span></a>
              </div>
              <div class="ts-updown ">
                <ul>
                  <li><a href="/new/waybill/secure/deliverList"><span
                          class="menuPic">我的发货单</span></a></li>
                  <li><a href="/recieveOrder/recieveIndex.action"><span
                          class="menuPic">我的收货单</span></a></li>
                  <li><a href="/new/order/queryIndex.action"><span
                          class="menuPic">原始订单</span></a></li>
                  <li><a href="/order/queryDrafts.action"><span
                          class="menuPic">草稿箱</span></a></li>
                  <li><a href="/template/browse.action"><span
                          class="menuPic">模板管理</span></a></li>

                  <li id="printOrder" style="display: none;"><a
                          href="/order/selectPrintOrder.action"><span class="menuPic">查询打印电子运单</span></a></li>
                </ul>
              </div>

              <div class="ts-padding">
                <a href="javascript:void(0);" class="ts-rdgif"><span
                        id="span_dgif2" class="ts-up"></span><span class="txt">更改管理</span></a>
              </div>
              <div class="ts-updown ts-none ">
                <ul>
                  <li><a href="/new/waybillChange/secure/index/"><span
                          class="menuPic">更改申请</span></a></li>
                  <li><a href="/new/waybillChange/secure/record/"><span
                          class="menuPic">更改查询</span></a></li>
                </ul>
              </div>


              <div class="ts-padding">
                <a href="javascript:void(0);" class="ts-zgif"><span
                        id="span_zgif3" class="ts-up"></span><span class="txt">我的账单</span>
                </a>
              </div>
              <div class="ts-updown ts-none ">
                <ul>
                  <li><a href="/new/finacerest/returnPayList"><span
                          class="menuPic">我要支付</span> </a></li>
                  <li><a
                          href="/new/finacePayRestService/viewJump?struts=kickBill"><span
                          class="menuPic">已有账单</span> </a></li>

                  <li><a href="/new/payCollection/"><span
                          class="menuPic">代收货款</span> </a></li>
                </ul>
              </div>
              <!--                                        <div class="ts-padding"><a href="/consignee/browse.action" class="ts-lgif"><span class="txt">联系人管理</span></a></div> -->
              <div class="ts-padding">
                <a href="javascript:void(0);" class="ts-lgif"> <span
                        id="span_dgif4" class="ts-up"></span> <span class="txt">收发货人管理</span>
                </a>
              </div>
              <div class="ts-updown ts-none">
                <ul>
                  <li><a href="/consignor/consignorManager.action"><span
                          class="menuPic">发货人管理</span></a></li>
                  <li><a href="/consignee/browse.action"><span
                          class="menuPic">收货人管理</span></a></li>
                </ul>
              </div>

              <div class="ts-padding">
                <a href="/insurance/kick.action" class="ts-xgif"><span
                        class="txt">在线理赔</span></a>
              </div>

              <!-- 	                                       <div class="ts-padding"><a href="/message/dpadminsite.action?jumpParam=siteMsgIndex" class="ts-ngif"><span class="txt">站内消息</span></a></div> -->


              <div class="ts-padding">
                <a href="/message/unreadMessages.action" class="ts-ngif"><span
                        class="txt">站内消息</span></a>
              </div>

              <div class="ts-padding">
                <a href="/new/user/toUserInfo" class="ts-rgif"><span
                        class="txt">个人资料设置</span></a>
              </div>
              <div class="ts-padding">
                <a href="/new/coupon/secure/myCoupon/" class="ts-cgif"><span
                        class="txt">我的优惠券</span></a>
              </div>
              <!-- caizhukui 2015-12-8 update start 暂时关闭我要贷款功能 -->
              <!--
              <div class="ts-padding">
                  <a href="/pettyLoan/loadPettyLoan.action" class="ts-dpng1"><span
                      class="txt">我要贷款</span></a>
              </div>
              -->
              <div class="ts-padding">

                <a href="javascript:toFPSSystem();" class="ts-dpng1"><span
                        class="txt">金融服务</span></a>
              </div>
              <!-- caizhukui 2015-12-8 update end 暂时关闭我要贷款功能 -->
              <!-- <div class="ts-padding">
                  <a href="/order/electronicInvoice.action" class="ts-invoicegif"><span
                      class="txt">电子发票</span></a>
              </div> -->
              <div class="ts-padding">
                <a href="javascript:void(0);" class="ts-invoicegif"><span
                        id="span_dgif5" class="ts-up"></span><span class="txt">电子发票</span>
                </a>
              </div>
              <div class="ts-updown ts-none ">
                <ul>
                  <li><a href="/new/invoince/"><span
                          class="menuPic">发票申请</span></a></li>
                  <li><a href="/new/invoince/toTaxPayerQuery"><span
                          class="menuPic">纳税人管理</span></a></li>
                </ul>
              </div>
            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!--我的德邦subMeu end-->

      <!--网上托运subMeu-->
      <div class="blo subMeu" id="div-trans-online" style="display: none;">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul class="pngOpacity">
              <li class="newpayline"><a href="/new/order/"
                                        class="clearfix fontColor"> <span class="ico png"></span> <span
                      class="txt">新版网上下单</span> <span class="newIco"></span>
              </a></li>
              <!-- <li class="payline"><a
                  href="/transonline/newOrderBrowse.action"
                  class="clearfix fontColor"> <span class="ico png"></span> <span
                      class="txt">网上下单</span>
              </a></li> -->
              <li class="batchOrder"><a href="/batchTransonline/"
                                        class="clearfix fontColor"> <span class="ico png"></span> <span
                      class="txt">批量下单</span>
              </a></li>
              <li class="searchtime"><a href="/new/price/" class="clearfix ">
                <span class="ico png"></span> <span class="txt">当前价格/时效查询</span>
              </a></li>
              <li class="network"><a href="/new/dept/" class="clearfix">
                <span class="ico png"></span> <span class="txt">网点查询</span>
              </a></li>
              <li class="fanwei"><a href="/new/range/" class="clearfix">
                <span class="ico png"></span> <span class="txt">快递收送范围</span>
              </a></li>
              <li class="contgoods"><a href="/transonline/embargo.html"
                                       class="clearfix"> <span class="ico png"></span> <span
                      class="txt">禁运品</span>
              </a></li>
            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!--网上托运subMeuEnd-->

      <!--追踪与收货subMeu-->
      <div class="blo subMeu" id="div-track-receive" style="display: none;">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul class="pngOpacity">
              <li class="trackc"><a href="/new/track/" class="clearfix"><span
                      class="ico png"></span><span class="txt">货物追踪</span></a></li>
              <!-- 							<li class="recievc"><a href="#" class="clearfix"><span class="ico png"></span><span class="txt">接收货物</span></a></li> -->

            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!--追踪与收货subMeu end-->
      <!-- 事业合伙人subMeu start add by zhengchuanjiao -->
      <div class="blo subMeu" id="div-partner-apply" style="display: none;">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul class="ts-partner">
              <li class="ts-partnerModule"><a href="/partner/introduce.html"
                                              class="ts-dgif"><span id="partner_dgif"></span><span
                      class="txt">事业合伙人概述</span></a></li>
              <div class="ts-updown">
                <ul class="partner">
                  <li><a href="/partner/condition.html"><span
                          class="menuPic">事业合伙人条件</span></a></li>
                  <li><a href="/partner/question.html"><span
                          class="menuPic">常见问题</span></a></li>
                  <li><a href="/partner/contact.html"><span class="menuPic">联系我们</span></a></li>
                </ul>
              </div>
              <li class="ts-partnerModule"><a
                      href="/applyPartner/openArea.action" class="ts-rdgif"><span
                      id="partner_dgif2" class="ts-up"></span><span class="txt">开放区域</span></a>
              </li>
              <li class="ts-partnerModule"><a
                      href="/applyPartner/applyForm.action" class="ts-zgif"><span
                      id="partner_dgif3" class="ts-up"></span><span class="txt">在线申请</span>
              </a></li>
            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!-- 事业合伙人subMeu end -->

      <!-- 英文版 货物追踪    subMeu start add by zhengchuanjiao -->
      <div class="blo ts-subMeu" id="en-track" style="display: none;">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul class="ts-pngOpacity">
              <div class="ts-padding ts-background">
                <a class="ts-cargo current" href="toTrack.action"> <span
                        class="txt ">Cargo Tracking</span>
                </a>
              </div>
              <div class="ts-padding">
                <span class="ts-up"></span> <a class="ts-dgif " href="#"> <span
                      class="txt">About Us</span>
              </a>
              </div>

              <div class="ts-updown">
                <ul>
                  <li><a href="CorporateCulture.html"><span class="menuPic">CorporateCulture</span></a></li>
                  <li><a href="Milestones.html"><span class="menuPic">Milestones</span></a></li>
                  <li><a href="AwardsHonors.html"><span class="menuPic">Awards&amp;Honors</span></a></li>
                </ul>
              </div>

              <div class="ts-padding">
                <span class="ts-up"></span> <a class="ts-lgif " href="#"> <span
                      class="txt">Services</span>
              </a>
              </div>

              <div class="ts-updown">
                <ul>
                  <li><a href="PrecisionProducts.html"><span
                          class="menuPic">Precision Products</span></a></li>
                  <li><a href="Serivces.html"><span class="menuPic">Serivces</span></a></li>
                </ul>
              </div>
              <div class="ts-padding">
                <a class="ts-xgif " href="Videos.html"> <span class="txt ">Videos</span>
                </a>
              </div>

              <div class="ts-padding">
                <a class="ts-ngif " href="ContactUs.html"> <span class="txt ">Contact
							Us</span>
                </a>
              </div>

              <div class="ts-padding">
                <a href="http://www.deppon.com/" class="ts-rgif"> <span
                        class="txt">Chinese</span>
                </a>
              </div>
            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!-- 英文版 货物追踪 subMeu end -->
      <script type="text/javascript">
        $(document)
                .ready(
                function() {
                  var ifElecBillBigCusts = $.cookie("ifElecBillBigCusts");
                  var ifLttElecBillBigCust = $
                          .cookie("ifLttElecBillBigCust");
                  if ((ifElecBillBigCusts != null && ifElecBillBigCusts == 'Y')
                          || (ifLttElecBillBigCust != null && ifLttElecBillBigCust == 'Y')) {
                    $("#printOrder").css("display", "block");
                  }
                });
      </script>




      <!--subMeu end-->
      <!--commonQ-->
      <div class="blo commonQ">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <h3>常见问题</h3>
            <ul>
              <li><a href="/help/tracking.html#ar_22" target="_blank">什么是运单号？</a></li>
              <li><a href="/help/tracking.html#ar_24" target="_blank">在哪里能找到德邦的物流单号？</a></li>
              <li><a href="/help/tracking.html#ar_23" target="_blank">如何查询货物运输状态？</a></li>
            </ul>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!--commonQ end-->

      <div class="blo bcontact">
        <div class="bc">
          <div class="bct"></div>
          <div class="bcm">
            <ul>
              <li class="hotl">客户服务热线:95353</li>
              <li
                      style="line-height: 14px; background: none; height: 20px; padding-left: 17px;">（人工服务时间：00:00-24:00）</li>
            </ul>
            <div class="attentionSina" style="margin-left: 24px;">
              <!-- <div class="ifrm">
                  <iframe style="overflow: hidden" width="63" height="24"
                      frameborder="0" allowtransparency="true" marginwidth="0"
                      marginheight="0" scrolling="no" border="0"
                      src="https://widget.weibo.com/relationship/followbutton.php?language=zh_cn&width=63&height=24&uid=1905085511&style=1&btn=light&dpc=1"></iframe>
              </div>
              <div class="atText">
                  德邦<img src="picture/weibo_v.png" />
              </div> -->
            </div>
          </div>
          <div class="bcb"></div>
        </div>
      </div>
      <!--bcontact end-->
      <!--cus service-->
      <div class="c-service clearfix">
        <a href="/help/feedback.html" target="_blank" title="咨询 | 建议 | 投诉">
          <p class="sug">咨询 | 建议 | 投诉</p>
        </a>
        <!--<a href="http://online-service.deppon.com/live800/chatClient/chatbox.jsp?companyID=8912&configID=7&enterurl=" title="在线客服" target="_blank">
                        <p class="ol-sers">在线客服</p>
                    </a>-->
        <!-- Live800在线客服图标:图标[固定型] 开始-->
        <div id="live14" style="padding-left: 154px;">
          <a id="live800iconlink"
             href="https://dev.markd.cn:8201/"
             target="_blank"> <img id="live800icon" border="0"
                                   src="../../picture/cd895c5333a34a5293710b32735049cb.gif"
                                   name="live800icon"
                                   onclick="_gaq.push(['_trackEvent', 'Service', 'Click', 'https://www.deppon.com/onlineservice'])">
          </a>
        </div>
        <!-- Live800在线客服图标:图标[固定型] 结束-->
        <a
                href="https://dev.markd.cn:8201/"
                target="_blank"><p class="ol-sers">在线客服</p></a>
      </div>

    </div>
    <div class="main ">
      <div class="main Inforbbs">
        <!--信息开始-->
        <div class="selecteWay" style="margin-bottom: 20px;">
          <ul class="clearfix" id="tabs">
            <li class="s1 unread_private"><a href="/new/track/"
                                             id="selectOrderNum" class="current">按运单号查询</a></li>
            <li class="s1 readed"><a href="/new/phoneTrack/"
                                     id="selectPhone">按手机号查询</a></li>
          </ul>
        </div>
      </div>
      <div class="query-form clearfix">
        <div class="enter">
          <p class="in">


									<textarea name="billStr" id="billStr" style="overflow-y: auto;"
                                              class="textarea inputFocus" ov="">12152125455</textarea>



          </p>
          <p class="codes">
            <input type="button" value="查询" class="button-l " id="trackBtn"
                   onclick="submitBills()" />
          </p>
          <input type="hidden" id="curBillNo" /> <input type="hidden"
                                                        id="matchingLoginUserMobile" />
        </div>
        <div class="record" style="width: 240px;">
          <div class="record-list" style="width: 240px; height: 80px">
            <p class="record-tit">最近查询记录：</p>
            <ul class="clearfix" style="height: 80px; width: 240px"
                id="pastBills">
            </ul>
          </div>
          <a href="javascript:removeTrackCookie()" style="color: #1200bc">清空记录</a>
        </div>
        <div style="width: 150px; float: left; text-align: center;">
          <img src="../../picture/t-code.png"
               style="width: 90px; height: 90px;" />
          <p>扫描二维码并关注德邦公众号随时掌握订单状态</p>
        </div>
        <div class="international">
          <a href="/new/track/toCbsTrack"><span class="span1">跨境电商件</span>轨迹查询请<span
                  class="span2">点击这里</span></a>
        </div>
      </div>

      <div id="consignee"
           class="optional_shipper optional_consignee popupframe">
        <h3 class="tit" align="center">
          我要催单<a href="javascript:" title="关闭" class="clo popupClo"></a>
        </h3>
        <div class="con">
          <div class="shippersearch new-shippersearch">
            <li class="ts-Uname"><em>* </em>&nbsp;请选择:&nbsp; <input
                    id="contact" type="radio" name="isEnd" value='0'
                    onclick="queryMobile(this)">发货人 <input id="receive"
                                                           type="radio" name="isEnd" value='1' onclick="queryMobile(this)">收货人</li>
          </div>
          <div class="shippersearch new-shippersearch">
            <li class="ts-Uname"><em>* </em>&nbsp;手 机 号:&nbsp;<input
                    type="text"
                    class="d_text MobileUserText  inputFocus flagName checkMobile"
                    value="请输入11位手机号码" ov="请输入11位手机号码" name="userPhone"
                    maxlength="11" id="userPhone"></li>
          </div>
          <div class="shippersearch new-shippersearch">
            <li class="ts-UCode" style="margin-left: 0px;"><em>* </em>&nbsp;短信验证码:&nbsp;
              <input name="verification" type="text" maxlength="6"
                     class="d_text MobileUserCode inputFocus" value="输入短信验证码"
                     ov="输入短信验证码" id="verification">
              <button class="btn btn-small get-code" onclick="sendCodeMsgs()"
                      id="J_getCode">获取验证码</button>
              <button class="btn btn-small reset-code" id="J_resetCode"
                      style="display: none;">
                <span id="J_second">60</span>秒后重发
              </button></li>
          </div>
          <div>
            <input id="affirm" type="button" value="确认" class="smt cur"><input
                  id="cancle" name="" type="button" value="取消" onclick=""
                  class="smt cur popupClo">
          </div>
          <form>
            <div class="scroll"></div>
          </form>
        </div>
      </div>


      <div class="reminder track_info"
           style="margin-top: 25px; display: none;">
        <div class="reminder track-result">
          <h3 class="title">货物追踪结果</h3>
          <ul class="waybill clearfix" id="trackResultSelect">

          </ul>
          <input type='button' value='选择发货人' style='display: none'
                 class='zt_floatnone tosnsmall_btnl channegButn'
                 id='bathShippershow' /> <input type='button' value='催单'
                                                style='display: none'
                                                class='zt_floatnone tosnsmall_btnl channegButn'
                                                id='reminderOrder' onclick='prom()' />
          <div class="goods-state track-success clearfix">
            <div class="detl">
              <table width="680" border="0" cellspacing="0" cellpadding="0"
                     id="track_table">
              </table>
            </div>
          </div>
          <div class="reminder track-err" style="margin-top: 25px;">
            <div class="cont">
              <p></p>
            </div>
          </div>
        </div>
        <br>
        <p class="this_cla">
        <h3 class="title">
          货物基本信息&nbsp;<a id="clickWaybillResult" href="javascript:void()"
                         style="color: blue" class="blue aDown">展开</a>
        </h3>
        </p>
        <div class="reminder waybill-result" style="display: none;">
          <div class="good-basicInfos">

            <table width="670" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="260" height="26" align="left"><span class="lab">目的城市：</span>
                  <lable id="consigneeCityName"></lable></td>
                <td align="left"><span class="lab">承运方式：</span> <lable
                        id="tranProperty"></lable></td>
              </tr>
              <tr>
                <td height="26" align="left"><span class="lab">提货方式：</span>
                  <lable id="deliveryType"></lable></td>
                <td align="left"><span class="lab">货物名称：</span> <lable
                        id="goodName"></lable></td>
              </tr>
              <tr>
                <td height="26" align="left"><span class="lab">货物件数：</span>
                  <lable id="pieces"></lable> 件</td>
                <td align="left"><span class="lab">货物重量：</span> <lable
                        id="weight"></lable> 公斤</td>
              </tr>
              <tr>
                <td height="26" align="left"><span class="lab">货物体积：</span>
                  <lable id="cubage"></lable> 立方米</td>
                <td align="left">&nbsp;</td>
              </tr>
            </table>
          </div>

          <h3 class="title">到达网点信息</h3>
          <div class="good-basicInfos">
            <table width="670" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="260" height="26" align="left" colspan='2'><span
                        class="lab">到达网点：</span> <lable id="ladingStationName"></lable></td>
              </tr>
              <tr>
                <td height="26" align="left" colspan='2'><span class="lab">网点电话：</span>
                  <lable id="ladingStationPhone"></lable> FAX:<lable
                          id="ladingStationFax"></lable></td>
              </tr>
              <tr>
                <td height="26" align="left" colspan='2'><span class="lab">网点地址：</span>
                  <lable id="ladingStationAddr"></lable></td>
              </tr>
            </table>
          </div>
          <h3 class="title" style="float: left;">运单资料/签收图</h3>
          <!-- showExpressSignImg()方法在 goodsTrack.js中 -->
          <a style="margin: 0px 0px 0px 10px; color: red;"
             href="javascript:showExpressSignImg();">获 取</a>
          <div class="good-basicInfos">
            <div id="expressSignImgVerify" style="display: none;">
              <p>
                <span class="lab">手机号：</span><input name="signImgMobile"
                                                    id="signImgMobile"
                                                    class="input d_text MobileUserText  inputFocus flagName checkMobile iGrays" />
                <input type="button" class="button-l" value="获取验证码"
                       id="signImgMessage" onclick="sendSignImgMobileCode()" />
              </p>
              <p>
                <span class="lab">验证码：</span><input name="securityCode"
                                                    id="signImgSecurityCode" class="input" size="5"
                                                    style="width: 60px">
              </p>
              <p>
                <input type="button" value="确认"
                       onclick="verifyExpressImgCode()" class="button-l" />
              </p>
            </div>
            <div class="signImgDiv" style="display: none; padding-top: 20px;">
              <span style="font-size: 13px">营业部存根</span>
              <div id="signImg" style="padding: 20px"></div>
            </div>
            <div class="signReturnImgDiv"
                 style="display: none; padding-top: 10px;">
              <span style="font-size: 13px">签收单底单返单</span>
              <div id="signReturnImg" style="padding: 20px"></div>
            </div>
          </div>
          <h3 class="title">关联运单号</h3>
          <div class="join-fav relationWayBillNo" id="joinFav"></div>
        </div>
        <div id="good-track" style="display: none;"></div>
      </div>
      <div class="introduce_info">
        <div class="reminder">
          <h3 class="title">温馨提示</h3>
          <div class="cont">
            <table width="88%" border="0" align="center" cellpadding="0"
                   cellspacing="0">
              <tr>
                <td width="30%" height="22" class="r gray">&nbsp;</td>
                <td align="center" class="gray"><strong>您需要凭以下证件提取您的货物</strong></td>
              </tr>
              <tr>
                <td height="31" align="center" class="r gray b"><strong>本人提货</strong></td>
                <td class="pd">收货人身份证原件</td>
              </tr>
              <tr>
                <td height="31" align="center" class="r gray b"><strong>委托提货</strong></td>
                <td class="pd">收货人身份证原件与代理人身份证原件</td>
              </tr>
              <tr>
                <td height="31" align="center" class="r gray"><strong>公司提货</strong></td>
                <td class="sp pd">提货人身份证原件与提货委托书(加盖公章)</td>
              </tr>
            </table>
          </div>
        </div>
        <div class="mastery">
          <h3 class="title">掌控物流</h3>
          <div class="cont clearfix">
            <div class="c1">
              <p>实时追踪，及时提醒</p>
              <p>无需输入单号，方便查看物流状态</p>
              <p>管理历史订单，按需导出</p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="footer">
    <div class="lo">
      <p>95353</p>
    </div>
    <div class="f-nav">
      <ul>
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
      <a href="http://si.trustutn.org/info?sn=473180109031639586105&certType=1" target="_blank" rel="nofollow"><img style="width: 106px;height: 38px" src="../../picture/icp1.png"></img></a>
    </div>
    <div class="copyright"> Copyright © 2012-2017 德邦物流股份有限公司. All rights reserved.沪ICP备10005645 </div>

  </div>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
  <!-- <script type='text/javascript' charset='utf-8' src='js/wb.js'></script>
<script type='text/javascript' charset='utf-8' src='js/qc_loader.js' data-appid='100294686' data-redirecturi='http://www.deppon.com/help/qc_callback.html' charset='utf-8'></script> -->
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?39f474fa8fa9cefbed841228218c1418";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();
  </script>

  <!-- GAç»è®¡ä»£ç å¼å§ -->
  <!-- <script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-37254187-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script> -->
  <!-- GAç»è®¡ä»£ç ç»æ -->

  <!-- <script src="js/stat.js" language="JavaScript"></script> -->
  <!-- Live800å¨çº¿å®¢æå¾æ :å¾æ [åºå®å] å¼å§-->
  <!-- <script language="javascript"
      src="js/staticbutton.js"></script> -->
  <!--
<script language="javascript" src="js/floatbutton.js" charset="UTF-8"></script>
-->
  <!--
  <script id='write' language="javascript">
function writehtml(){
  var temptext=StaticIcon_generate();
  if(document.getElementById('live14')){
      document.getElementById('live14').innerHTML=temptext;
  }else if(document.getElementById('live15')){
      document.getElementById('live15').innerHTML=temptext;

  }
  setTimeout('write.src',3000);
}
writehtml();
</script>
-->
  <!-- Live800å¨çº¿å®¢æå¾æ :å¾æ [åºå®å] ç»æ-->
  <!-- <script language="javascript"
      src="js/monitor.js">
</script> -->
  <!--
  <script language="javascript" src="js/monitor.js" charset="UTF-8"></script>
   -->
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-37254187-1', 'auto');
    ga('send', 'pageview');

  </script>
</div>
</body>
</html>

</div>
<script src="../../js/jquery-1.6.4.min.js"></script>
<script type="text/javascript"
        src="../../js/58badc766f9541faa59da74f9f45d546.js"></script>
<script src="../../js/public.js"></script>
<script src="../../js/config.js"></script>
<script src="../../js/goodstrack.js"></script>
<script src="../../js/boximg.js"></script>
<script type="text/javascript">
  /**
   * 发送手机验证码
   */
  function sendCodeMsgs() {
    var phone = $.trim($("#userPhone").val());
    if (phone == '' || phone == '请输入11位手机号码' || phone.length < 11) {
      alert("手机号为空或者不正确");
      return;
    }
    $.ajax({
      type : "post",
      async : false,
      url : DepponCfg.LoginUrl + '/phonerest/track/sendPhoneCode/'
      + phone,
      data : JSON.stringify({
        "telephone" : phone
      }),
      dataType : "json",
      contentType : "application/json",
      success : function(data) {
        var str = data.status;
        if (str == "success") {
          //	alert("发送成功");
          resetCode();
          return;
        } else {
          alert("发送失败");
          return false;
        }
      }
    });

  }

  (function() {
    $(".myOrder").hide();
    //选择发货人
    $("#bathShippershow").click(function() {
      //var consignorId = $("#consignorId").val();
      //alert(consignorId);
      var o = $("#deptCountyId").offset();
      $(".backifname").css({
        "left" : 100,
        "top" : 100
      }).show();
      $(".optional_consignee").show();
      //关闭
      $(".popupClo").click(function() {
        $(this).parents("#consignee").eq(0).hide();
        //	$("#consignee").eq(0).hide();
        $(".backifname").hide();
        $("#userPhone").val("请输入11位手机号码");
        $("#verification").val("输入短信验证码");
      });
      return false;
    });
  })();

  function prom() {
    var curBillNo = $("#curBillNo").val();
    //var post_data={"waybillNumber":$("#curBillNo").val()};
    $
            .ajax({
              url : DepponCfg.LoginUrl
              + "/phonerest/track/reminderOrder?waybillNumber="
              + curBillNo,
              type : 'GET',
              //  contentType: "text/html;charset=UTF-8",
              async : false,
              // data:JSON.stringify(post_data),
              //	data:{"waybillNumber":curBillNo},
              dataType : "json",
              //		jsonpCallback : "jsonpCallback",
              //	beforeSend : LoadFunction, //加载执行方法
              success : function(date) {
                if (date.status == 'success') {
                  if (date.message == '催单次数超过两次') {
                    alert("已催单成功，快件正在火速运转，请耐心等待！");
                    //	document.getElementById("bathShippershow").click();
                    return;
                  }
                  if (date.message == '不超时') {
                    alert("您的快件运行时效正常，将在预定的时间内送到。请您保持电话通畅，以便快递员及时联系到您，谢谢！");
                    //	document.getElementById("bathShippershow").click();
                    return;
                  }
                  if (date.message == '超时') {
                    document.getElementById("bathShippershow")
                            .click();
                    return;
                  }
                } else {
                  alert('系统异常，请稍后再试');
                  return;
                }
              },
              error : function(XMLHttpRequest, textStatus,
                               errorThrown, data) {
                alert('系统异常，请稍后再试');
              } //错误执行方法
              //成功执行方法
            });
  }

  $('#affirm')
          .click(
          function() {
            var phone = $.trim($("#userPhone").val());
            var curBillNo = $("#curBillNo").val();
            //	var senderOrConsignee=$.trim($("senderOrConsignee").val());
            //	 var senderOrConsignee = document.getElementsByName("verification");
            var str = document.getElementsByName("isEnd");
            var senderOrConsignee = '';
            var objarray = str.length;
            var chestr = "";
            for (i = 0; i < objarray; i++) {
              if (str[i].checked == true) {
                chestr += str[i].value;
              }
            }
            if (chestr == '1') {
              //收货方
              senderOrConsignee = "RECEIVEMAN";
            }
            if (chestr == '0') {
              //发货方
              senderOrConsignee = "SHIPMAN";
            }
            var verification = $.trim($("#verification").val());
            if (phone != '' && senderOrConsignee != ''
                    && verification != ''
                    && verification.length == 6
                    && phone != '请输入11位手机号码'
                    && verification != '输入短信验证码'
                    && phone.length == 11) {
              $
                      .ajax({
                        url : DepponCfg.LoginUrl
                        + "/phonerest/track/smsCheckout?phone="
                        + phone + "&verification="
                        + verification,
                        type : 'GET',
                        async : true,
                        dateType : "json",
                        success : function(date) {
                          if (date.status == 'success') {
                            $
                                    .ajax({
                                      url : DepponCfg.LoginUrl
                                      + "/phonerest/track/agingVerify?waybillNumber="
                                      + curBillNo
                                      + "&phone="
                                      + phone
                                      + "&senderOrConsignee="
                                      + senderOrConsignee
                                      + "&verification="
                                      + verification,
                                      timeout : 1000,
                                      type : 'GET',
                                      //  contentType: "text/html;charset=UTF-8",
                                      async : true,
                                      // data:JSON.stringify(post_data),
                                      //	data:{"waybillNumber":curBillNo},
                                      dataType : "json",
                                      //	jsonpCallback : "jsonpCallback",
                                      //	beforeSend : LoadFunction, //加载执行方法
                                      success : function(
                                              date) {
                                        if (date.status == 'success') {
                                          alert("催单成功，我们将安排专人跟进您的快件！");
                                          return;
                                        } else {
                                          alert("催单失败，请联系当地营业部处理");
                                        }
                                      },
                                      error : function(
                                              XMLHttpRequest,
                                              textStatus,
                                              errorThrown,
                                              data) {
                                        alert('催单失败，请联系当地营业部处理');
                                      }
                                    });
                            $("#userPhone").val(
                                    "请输入11位手机号码");
                            $("#verification").val(
                                    "输入短信验证码");
                            document.getElementById(
                                    "cancle").click();
                          }
                          if (date.status == 'fail') {
                            alert(date.message);
                            return false;
                          }
                        },
                        error : function(XMLHttpRequest,
                                         textStatus, errorThrown,
                                         data) {
                          alert('系统异常，请稍后再试');
                        }
                      });
            } else {
              alert("提交的信息不正确");
            }
          });

  //倒计时
  function resetCode() {
    $('#J_getCode').hide();
    $('#J_second').html('30');
    $('#J_resetCode').show();
    var second = 30;
    var timer = null;
    timer = setInterval(function() {
      second -= 1;
      if (second > 0) {
        $('#J_second').html(second);
      } else {
        clearInterval(timer);
        $('#J_getCode').show();
        $('#J_resetCode').hide();
      }
    }, 1000);
  }

  function queryMobile(obj) {
    var curBillNo = $("#curBillNo").val();
    var name = obj.id;
    $
            .ajax({
              url : DepponCfg.LoginUrl
              + "/phonerest/track/queryMobile?waybillNo="
              + curBillNo,
              type : "GET",
              async : false,
              dateType : "json",
              success : function(date) {
                if (date.status == 'success') {
                  if (name == 'contact') {
                    $("#userPhone").val(date.result);
                  }
                  if (name == 'receive') {
                    $("#userPhone").val(date.message);
                  }
                }
              }
            });
  }
</script>
<!--[if lte IE 6]>
<script src="js/ie6.png.js"></script>
<![endif]-->
</body>
</html>
