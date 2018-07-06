<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <title>添加管理员</title>
</head>

<body>
<div class="pd-20 product-add">
  <form class="layui-form" action="${pageContext.request.contextPath}/adminSave" method="GET">
    <input hidden value="${admin.aid}" name="aid"/>
    <div class="layui-form-item">
      <label class="layui-form-label">管理员名称</label>
      <div class="layui-input-block">
        <input type="text" name="aname" value="${admin.aname}" lay-verify="username" autocomplete="off" placeholder="请输入管理员名称" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">等级</label>
      <div class="layui-input-block">
        <select name="role">
        <c:forEach items="${role1}" var="i">
          <option ${role==i.role?"selected='select'":""} value="${i.role}">${i.leave}</option>
        </c:forEach>
        </select>
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">联系方式</label>
      <div class="layui-input-block">
        <input type="text" name="aphone" value="${admin.aphone}" lay-verify="phone" autocomplete="off" placeholder="请输入联系方式" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">邮箱</label>
      <div class="layui-input-block">
        <input type="text" name="aemail" value="${admin.aemail}" lay-verify="email" autocomplete="off" placeholder="请输入邮箱2452452446@qq.com" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">状态</label>
      <div class="layui-input-block">
        <input type="checkbox" value="1" name="status"  lay-skin="switch"></div>
      </div>




    <div class="layui-form-item">
      <label class="layui-form-label"></label>
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="" lay-filter="productadd">保存并提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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