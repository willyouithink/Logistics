

<head>
  <meta charset="UTF-8">
  <title>文章列表</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <script src="${pageContext.request.contextPath}/static/js/lib/jquery-1.11.0.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.all.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/define/article.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
  <script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  </script>
  <%--<script type="text/html" id="myTpl">
    <div class="layui-form"  data-type="done">
     <input type="checkbox" name="status" id="status" lay-filter="status" lay-skin="switch" lay-text="发布|下架" {{1==d.status?'checked':''}}/>
  </div>
  </script>--%>


</head>

<body>
<div class="tab-body">
  <p class="page-tab"><span class="layui-breadcrumb" lay-separator=">"><a href="">首页</a><a><cite>文章列表</cite></a></span>
  </p>
  <div class="handle-box">
    <ul>
      <li class="handle-item"><span class="fl"><span class="layui-form-label">输入搜索条件：</span>
                      <div class="layui-input-inline">
                        <input type="text" autocomplete="off" id="aname" name="aname" placeholder="请输入搜索条件" class="layui-input">
                      </div>
                      <button class="layui-btn mgl-20" id="btn-search" data-type="reload">查询</button>
                      <button class="layui-btn mgl-20" id="refresh">刷新</button>
                      </span><span class="fr"><a class="layui-btn layui-btn-danger radius btn-delect" data-type="aaa" id="delect"><i class="linyer icon-delect"></i> 批量删除</a>
                                              <a class="layui-btn btn-add btn-default" id="btn-adduser" href="${pageContext.request.contextPath}/article/articleAdd"><i class="linyer icon-add"></i> 添加广告</a></span>
      </li>

    </ul>
  </div>
  <div class="layui-clear">
    <div class="tableTools fr"></div>
  </div>
  <table class="table-box table-sort" id="articleTable" lay-filter="demo" />
  <script type="text/javascript">
    layui.use(['jquery','table'],function() {
      //初始化变量
      var $ = layui.jquery,
              table = layui.table;
      //对表格进行渲染
      table.render({
        //开启分页
        page: true,
        //渲染的容器是谁
        elem: '#articleTable',
        //异步提交请求给后台返回JSON
        url: '../../manager/article-list',
        //要显示的表头是什么
        cols: [[
          {type:'checkbox'},
          {field: 'aid', title: '广告编号'},
          {field: 'aname', title: '广告名称'},
          {field: 'atime', title: '广告时长'},
          {field: 'people', title: '广告代言人'},
          {field: 'title', title: '广告标题'},
          {field: 'state', title: '广告状态',templet:"#myTpl"},
          {field: 'details', title: '广告编辑'},
          {field:'right',title: '操作',toolbar:"#barDemo"}
          <%@ page contentType="text/html;charset=UTF-8" language="java" %>
      ]]
      });
      //监听工具条
      table.on('tool(demo)', function(obj){
        var data = obj.data;
        if(obj.event === 'edit'){
          // layer.alert('编辑行：<br>'+ JSON.stringify(data.aid))
          window.location.href="${pageContext.request.contextPath}/editArticle1?aid="+data.aid;
        }
      });
      var active = {
        aaa: function () {

          //你点击了"批量删除"
          //为了获取到被选中的行
          var data = table.checkStatus("articleTable").data;
          if (data.length > 0) {
            if(confirm("是否删除")!=true){
              return;
            }
            //确认框
            //至少选中一行
            //为了获得所有选中行的id
            console.log("bbbbb");
            var ids = [];
            for (var i = 0; i < data.length; i++) {
              ids.push(data[i].aid);
            }
            //异步提交到后台 ids
            $.post(
                    '../delete',
                    {'ids[]': ids},
                    function (data) {
                      //至少删除一条记录
                      if (data > 0) {
                        //停留在原来页面刷新
                        $('.layui-laypage-btn').click();
                        layer.msg("恭喜，删除成功！", {icon: 1});
                      }

                    }
            );
          } else {
            //没有选中
            layer.msg("请选择至少一行后再批量删除！", {icon: 2});
          }
        },
        reload:function(){
          //模糊查询，提交一个异步请求到后台 {aname}
          //val() 文本框 单选按钮 复选按钮
          //text()  html()
          console.log("lllllllll")
          var aname = $("#aname").val();
          //不为空
          if($.trim(aname).length > 0 ){
            //文本框中有内容，表格重载
            table.reload("articleTable",{
              page:{curr:1},
              where:{aname:aname}
            });
          }

        }

      };
      //点击"批量删除"按钮触发的事件
      $("#delect").on('click', function () {
        //为了获取data-type属性
        console.log("aaaaaa");
        var type = $(this).data("type");//getCheckData
        //判断是否具有getCheckData，若有，那么直接调用，否则什么都不做
        active[type] ? active[type].call(this) : '';
      });

      //点击"模糊查询"按钮触发的事件
      $("#btn-search").on('click',function(){
        //为了获取按钮的data-type属性
        console.log("bbbbbbbbbbb")
        var type = $(this).data("type");
        active[type] ? active[type].call(this):'';
      });
    });

  </script>

</div>
</div>


</body>

</html>