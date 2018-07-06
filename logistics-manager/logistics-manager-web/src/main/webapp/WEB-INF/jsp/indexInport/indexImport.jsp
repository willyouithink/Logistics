<%--
  Created by IntelliJ IDEA.
  User: aqiang
  Date: 2018/6/8
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/static/js/lib/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
<%--<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.all.js"></script>--%>

<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/product.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/product-add.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/product-edit.js"></script>
<%--<script src="${pageContext.request.contextPath}/static/js/lib/zyupload.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/static/css/zyupload.css"></script>--%>
<%--<script src="${pageContext.request.contextPath}/static/js/lib/datatable.js"></script>--%>

<head>
    <title>导入索引库</title>
</head>
<body>
<div class="weadmin-body">
  <button id="btnImport" class="layui-btn"><i class="layui-icon"></i>一键导入索引库</button>
</div>

<script type="text/javascript">
  layui.use(['jquery','table'], function () {
    var $ = layui.jquery,
            table=layui.table

    $("#btnImport").click(function(){
      //点击后禁用的代码自己完成
      $.post(
              //url
              '${pageContext.request.contextPath}/indexlib/import',
              //data
              null,
              //success
              function(data){
                console.log(data);

                      layer.msg(data.msg,{icon:1});

              },
              //dataType
              'json'
      );
      //点击提交异步请求到后台，一键导入索引库成功之后操作
      //1,提交成功或者失败
      //2,按钮再改为可用
    });


  });
</script>

</body>
</html>
