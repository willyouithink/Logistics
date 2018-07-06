<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>

<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui2.0.2/css/modules/layer/default/layer.css">
  <title>添加用户</title>
</head>
<%--${param.uphone}--%>
<body>

<div class="pd-20 ">
  <form class="layui-form" action="${pageContext.request.contextPath}/user/updateUser" >
      <input  name="uid"  value="${user.uid}" type="hidden" />
    <div class="layui-form-item">
      <label class="layui-form-label">用户名称</label>
      <div class="layui-input-block">
      <input type="text" name="uname" id="uname" value="${user.uname}" class="layui-input"/>
      </div>
    </div>

      <%--<div class="layui-form-item">
          <label class="layui-form-label">性别</label>
          <div class="layui-input-block">
              <input type="radio" name="ugender" value="男" title="男" checked="">
              <input type="radio" name="ugender" value="女" title="女">
          </div>--%>

    <div class="layui-form-item">
      <label class="layui-form-label">联系方式</label>
        <div class="layui-input-inline">
          <input type="tel" name="uphone" lay-verify="phone" autocomplete="off" class="layui-input" value="${user.uphone}">
        </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">邮箱</label>
        <div class="layui-input-inline">
            <input type="text" name="uemail" value="${user.uemail}"lay-verify="email" class="layui-input">

        </div>
    </div>



    <%--<div class="layui-form-item">
      <label class="layui-form-label">联系地址</label>
      <div class="layui-input-block">
        <input type="text" name="uadress" lay-verify="adress" autocomplete="off" placeholder="请输入联系方式" class="layui-input">
      </div>
        </div>--%>




        <%--<div class="layui-form-item" lay-verify="">
          <label class="layui-form-label">所在地区</label>
          <div class="layui-input-inline">
            <select name="province" id="province" lay-filter="province"    ></select>
          </div>
          <div class="layui-input-inline">
            <select name="city" id="city" lay-filter="city" ></select>
          </div>
          <div class="layui-input-inline">
            <select name="county" id="county" lay-filter="county" ></select>
          </div>
        </div>--%>
        <div class="layui-form-item">
          <label class="layui-form-label">详细地址</label>
          <div class="layui-input-inline sw-times2">
            <input type="text"  name="uadress"  value="${user.uadress}"  class="layui-input">
          </div>
        </div>












    <div class="layui-form-item">
      <label class="layui-form-label"></label>
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="return false" >保存并提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
    </div>
  </form>
</div>


<%--<script>
    alert(${param.uname})
</script>--%>



<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/layer.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/util.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/form.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui/lay/modules/element.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/selectCity.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user-add.js"></script>

</body>

</html>