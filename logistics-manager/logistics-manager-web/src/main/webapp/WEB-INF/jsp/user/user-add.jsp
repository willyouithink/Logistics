
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<body>
<div class="pd-20 ">
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
        <%--<div class="layui-inline">
          <label class="layui-form-label">日期时间选择器</label>
          <div class="layui-input-inline">
            <input type="text" name="uintime" class="layui-input" id="test5" placeholder="yyyy-MM-dd HH:mm:ss">
          </div>
        </div>--%>



    <%--<div class="layui-form-item">
      <label class="layui-form-label">联系地址</label>
      <div class="layui-input-block">
        <input type="text" name="uadress" lay-verify="adress" autocomplete="off" placeholder="请输入联系方式" class="layui-input">
      </div>
        </div>--%>




        <div class="layui-form-item" lay-verify="">
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
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">详细地址</label>
          <div class="layui-input-inline sw-times2">
            <input type="text"  autocomplete="off" name="uadress"  placeholder="请输入街道、楼牌号等" class="layui-input">
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




<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/layer.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/util.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/lay/modules/form.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui/lay/modules/element.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui2.0.2/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/selectCity.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user-add.js"></script>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;



        //日期时间选择器
        laydate.render({
            elem: '#test5'
            ,type: 'datetime'
        });


    });
</script>
</body>

</html>