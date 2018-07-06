<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>首页</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
</head>

<body>
<div class="layui-layout-admin fly-body">
  <div class="layui-header">
    <div class="admin-title dp-ib">
      <h1 class="fs-24 dp-ib c-fff mgl-20 mgt-10">UU物流后台管理系统</h1>
    </div>
    <%--<div class="layui-top-nav dp-ib ve-t">--%>
      <%--<ul class="layui-nav">--%>
        <%--<li class="layui-nav-item"><a href="javascript:;">顶部菜单1</a>--%>
        <%--</li>--%>
        <%--<li class="layui-nav-item layui-this"><a href="javascript:;">顶部菜单2</a>--%>
        <%--</li>--%>
        <%--<li class="layui-nav-item"><a href="javascript:;">顶部菜单3</a>--%>
        <%--</li>--%>
        <%--<li class="layui-nav-item"><a href="javascript:;">顶部菜单4</a>--%>
          <%--<dl class="layui-nav-child">--%>
            <%--<dd><a href="javascript:;">顶部菜单4-1</a>--%>
            <%--</dd>--%>
            <%--<dd><a href="javascript:;">顶部菜单4-2</a>--%>
            <%--</dd>--%>
            <%--<dd><a href="javascript:;">顶部菜单4-3</a>--%>
            <%--</dd>--%>
          <%--</dl>--%>
        <%--</li>--%>
        <%--<li class="layui-nav-item"><a href="javascript:;">顶部菜单5</a>--%>
        <%--</li>--%>
      <%--</ul>--%>
    <%--</div>--%>
    <div href="#!" class="layui-right user">
      <a href="#!" class="user-avatar">
        <img src="${pageContext.request.contextPath}/static/images/common/user-photo.jpg" alt="" class="layui-circle"><span class="c-fff mgl-20">${user}</span>
      </a>
      <ul class="user-nav">
        <li class="user-nav-item"><a href="#!"><i class="layui-icon">&#xe612;</i> 个人设置</a>
        </li>
        <li class="user-nav-item"><a href="${pageContext.request.contextPath}/logout/logout/logout" did="btn-exit"><i class="layui-icon">&#xe623;</i> 退出</a>
        </li>
      </ul>
    </div>
  </div>
  <div class="layui-side">
    <ul class="layui-nav layui-nav-tree" id="sideNav" lay-filter="sideNav">
      <li class="layui-nav-item layui-nav-itemed"><a>用户管理</a>
        <dl class="layui-nav-child">
          <dd>
            <a href="javascript:;" data-url="${pageContext.request.contextPath}/user/user-list">
              <label>用户列表</label>
            </a>
          </dd>
          <dd>
            <a href="javascript:;" data-url="">
              <label>用户统计</label>
            </a>
          </dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a>管理员管理</a>
        <dl class="layui-nav-child">
          <dd>
            <a href="javascript:;" data-url="${pageContext.request.contextPath}/admin/admin-list">
              <label>管理员列表</label>
            </a>
          </dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a>运单管理</a>
        <dl class="layui-nav-child">
          <dd>
            <a href="javascript:;" data-url="${pageContext.request.contextPath}/order/order-list">
              <%--<a href="${pageContext.request.contextPath}/order/order-list" >--%>
              <label>订单列表</label>
            </a>
          </dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a>企业文化</a>
        <dl class="layui-nav-child">
          <dd>
            <a href="javascript:;" data-url="${pageContext.request.contextPath}/article/articleList">
              <label>文章列表</label>
            </a>
          </dd>
          <dd>
            <a href="javascript:;" data-url="">
              <label>文章栏目</label>
            </a>
          </dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a>索引库管理</a>
        <dl class="layui-nav-child">
          <dd>
            <a href="javascript:;" data-url="${pageContext.request.contextPath}/indexImport/indexImport">
              <label>索引库列表</label>
            </a>
          </dd>

        </dl>
      </li>
    </ul>
  </div>
  <div class="layui-body">
    <div class="layui-tab fly-tab layui-tab-card" lay-filter="page-tab" lay-allowclose="true">
      <ul class="layui-tab-title" id="tabTitle">
        <li class="layui-this" lay-id="0">
          <label>首页</label>
        </li>
      </ul>
      <div class="layui-tab-content" id="tabContainers">
        <div class="layui-tab-item layui-show">
          <p>提示<span class="icon-i-b tips-icon mgl-5 ve-m"><span class="dialog-warp right"><label class="dialog-box">床前明月光，疑是地上霜，举头望明月，低头思故乡。</label></span></span>
          </p>
          <div class="fly-echart echart-map sw-100" id="user-form-map">地图</div>
          <div class="fly-echart echart-pie sw-50 fl" id="user-form-pie">饼状图</div>
          <div class="fly-echart echart-line sw-50 fl" id="user-form-line">折线图</div>
          <div class="fly-echart echart-bar sw-100 fl" id="user-form-bar">柱状和折线</div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/index.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="//cdn.bootcss.com/echarts/3.3.2/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/echarts/macarons.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/echarts/china.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user-collect.js"></script>
</body>

</html>