
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <title>添加用户</title>
</head>

<body>
<div class="pd-20 product-add">
  <form class="layui-form" action="${pageContext.request.contextPath}/user/addUser" >
    <div class="layui-form-item">
      <label class="layui-form-label">用户名称</label>
      <div class="layui-input-block">
      <input type="text" name="uname" lay-verify="required" autocomplete="off" placeholder="请输入用户名称" class="layui-input">
      </div>
    </div>
      <div class="layui-form-item">
          <label class="layui-form-label">性别</label>
      <div class="layui-input-block">
          <input type="radio" name="ugender" value="男" title="男" checked="">
          <input type="radio" name="ugender" value="女" title="女">
          <input type="radio" name="ugender" value="禁" title="禁用" disabled="">
      </div>

    <div class="layui-form-item">
      <label class="layui-form-label">联系方式</label>
        <div class="layui-input-inline">
            <input type="tel" name="uphone" lay-verify="phone" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">邮箱</label>
        <div class="layui-input-inline">
            <input type="text" name="uemail" lay-verify="email" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">联系地址</label>
      <div class="layui-input-block">
        <input type="text" name="uadress" lay-verify="adress" autocomplete="off" placeholder="请输入联系方式" class="layui-input">
      </div>
        </div>



    <div class="layui-form-item">
      <label class="layui-form-label"></label>
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="return false" lay-filter="productadd">保存并提交</button>
        <button class="layui-btn" lay-submit="" lay-filter="productsave">保存草稿</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
    </div>
  </form>
</div>
<%--<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>--%>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/product-add.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.all.js"></script>

</body>

</html>