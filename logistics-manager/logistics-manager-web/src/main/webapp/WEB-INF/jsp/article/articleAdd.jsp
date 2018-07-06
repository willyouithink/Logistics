<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <title>广告编辑</title>
</head>

<body>
<div class="pd-20 product-add">
  <form class="layui-form" id="layui-form" action="${pageContext.request.contextPath}/addArticle" method="POST">
    <div class="layui-form-item">
      <label class="layui-form-label">广告名称</label>
      <div class="layui-input-block">
        <input type="text" name="aname" lay-verify="username" autocomplete="off" placeholder="请输入广告名称" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">广告时长</label>
      <div class="layui-input-block">
        <input type="text" name="atime" lay-verify="username" autocomplete="off" placeholder="请输入广告时长" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">广告代言人</label>
      <div class="layui-input-block">
        <input type="text" name="people" lay-verify="username" autocomplete="off" placeholder="请输入广告代言人" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">广告类目</label>
      <div class="layui-input-block">
        <select name="title">
          <option value="">请选择标题</option>
          <optgroup label="鞋帽">
            <option value="耐克">耐克</option>
            <option value="阿迪达斯">阿迪达斯</option>
          </optgroup>
          <optgroup label="美白">
            <option value="欧莱雅">欧莱雅</option>
            <option value="K2">K2</option>
          </optgroup>
          <optgroup label="养生">
            <option value="脑白金">脑白金</option>
            <option value="霸王">霸王</option>
          </optgroup>
          <optgroup label="美食">
            <option value="三只松鼠">三只松鼠</option>
            <option value="香飘飘">香飘飘</option>
          </optgroup>
        </select>
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">显示状态</label>
      <div class="layui-input-block">
        <input type="checkbox" name="state" value="1" lay-skin="switch">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">广告编辑</label>
      <div class="layui-input-block">
        <%--富文本编辑器--%>
        <textarea id="article-box" name="details" style="display:none"></textarea>
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label"></label>
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="" lay-filter="productadd" >提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
  </form>
</div>
<script src="${pageContext.request.contextPath}/static/js/lib/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/article-add.js"></script>
<script>

</script>
</body>

</html>
