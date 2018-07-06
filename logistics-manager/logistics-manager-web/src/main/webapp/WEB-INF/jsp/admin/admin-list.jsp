<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>产品列表</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
  <script src="${pageContext.request.contextPath}/static/js/lib/jquery-1.11.0.min.js"></script>
  <%--<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>--%>
  <script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.all.js"></script>

  <script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/define/product.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/define/product-add.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/define/product-edit.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/lib/zyupload.js"></script>
    <script src="${pageContext.request.contextPath}/static/css/zyupload.css"></script>
  <%--<script src="${pageContext.request.contextPath}/static/js/lib/datatable.js"></script>--%>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>

    </script>

</head>

<body>
<div class="tab-body">
  <p class="page-tab"><span class="layui-breadcrumb" lay-separator=">"><a href="">首页</a><a><cite>产品列表</cite></a></span>
  </p>
  <div class="handle-box">
    <ul>
      <li class="handle-item"><span class="fl"><span class="layui-form-label">输入产品名：</span>
                    <div class="layui-input-inline">
                      <input type="text" id="aname" autocomplete="off" placeholder="请输入搜索条件" class="layui-input">
                    </div>
                    <button id="searchBySname" data-type="b" class="layui-btn mgl-20">查询</button>
                    <button class="layui-btn mgl-20" id="refresh">刷新</button>
                    </span><span class="fr">
        <a class="layui-btn layui-btn-danger radius btn-delect" id="btn-delect-all" data-type="a"><i class="linyer icon-delect"></i> 批量删除</a>
        <a class="layui-btn btn-add btn-default" id="btn-adduser" href="${pageContext.request.contextPath}/admin/admin-add"><i class="linyer icon-add"></i>添加管理员</a></span>
      </li>
    </ul>
  </div>
  <div class="layui-clear">
    <div class="tableTools fr"></div>
  </div>
    <form action="${pageContext.request.contextPath}/uploadSave/bb">
        <textarea id="demo" style="display: none;"></textarea>
        <input type="submit" value="提交">
    </form>

  <table class="table-box table-sort"   id="adminTable" lay-filter="demo">


    <tfoot>
    </tfoot>
  </table>
</div>

<script type="text/javascript">
  layui.use(['jquery','table','form','layedit'],function(){
    //初始化变量
    var $  = layui.jquery,
            table = layui.table,
            form = layui.form,
            layedit = layui.layedit;
    //对表格进行渲染
    table.render({
      //开启分页
      page: true,
      //渲染的容器是谁
      elem:'#adminTable',
      //异步提交请求给后台返回JSON
      url:'../../manager/admin-list',
      //要显示的表头是什么
      cols:[[
        {type:'checkbox'},
        {field:'aid',title:'管理员编号'},
        {field:'aname',title:'管理员姓名'},
        {field:'aphone',title:'手机'},
        {field:'aemail',title:'邮箱'},
        {field:'leav',title:'等级'},
        {field:'atime',title:'加入时间'},
        {field:'status',title:'状态',templet:"#myTpl"},
        {field:'right',title: '操作',toolbar:"#barDemo"}

      ]]
    });

      layedit.build('demo',{
          height: 100,//设置编辑器高度
          uploadImage:{

              url:'../uploadImage/bb',
              type:'post'
          }
      }); //建立编辑器

      table.on('checkbox(myTpl)', function(obj){
          console.log(obj)
      });
      //监听工具条
      table.on('tool(demo)', function(obj){
          var data = obj.data;
          if(obj.event === 'edit'){
             // layer.alert('编辑行：<br>'+ JSON.stringify(data.aid))
              window.location.href="${pageContext.request.contextPath}/adminEdit?aid="+data.aid;
          }
      });
    var active = {
      a:function(){
         console.log("aaa")
        //你点击了"批量删除"    ,templet:"#myTpl"
        //为了获取到被选中的行
        var data = table.checkStatus("adminTable").data;
        if(data.length >0 ){
          //至少选中一行
          //为了获得所有选中行的id
          var ids = [];
          for(var i=0;i<data.length;i++){
            ids.push(data[i].aid);
          }
         // console.log(data)
        // layer.msg("后台还没写！",{icon:2});
          //异步提交到后台 ids
           $.post(
//                   类型String
               '../updateStates/batch',
//                   类型Object
               {'ids[]':ids},
//                   类型函数
               function(data){
                  // layer.msg(data,{icon:1});
                   if(data>0){
                       $('.layui-btn').click();
                       layer.msg("删除成功！",{icon:1});

                   }else{
                       layer.msg("删除失败！",{icon:2});
                   }
               }
           );
        }else{
          //没有选中
          layer.msg("请选择一个或多个再批量删除！",{icon:2});
        }
      },
    b:function(){
        //模糊查询，提交一个异步请求到后台 {title}
        //val() 文本框 单选按钮 复选按钮
        //text()  html()
        var aname = $("#aname").val();
       // console.log(aname)
        //不为空
       // layer.msg("查询！",{icon:2});
        if($.trim(aname).length >= 0 ){
            //文本框中有内容，表格重载  发出请求
            table.reload("adminTable",{
                page:{curr:1},
                where:{aname:aname}
            });
        }

    }
    }
//      批量删除
    $("#btn-delect-all").on("click",function(){
     console.log("bbb");
      var type = $(this).data("type");
      active[type]?active[type].call(this):'';
    });
//      模糊查询
  $("#searchBySname").on("click",function(){
      //console.log("bbb");
      var type = $(this).data("type");
      active[type]?active[type].call(this):'';
  });
////      修改状态，在职位1，离职为2
//      $("#searchBySname").on("click",function(){
//          //console.log("bbb");
//          var type = $(this).data("type");
//          active[type]?active[type].call(this):'';
//      });

      //商品状态的开关事件
      form.on('switch(status)',function(obj){
          //调用类似于批量删除的功能
          //修改商品状态修改为1或者2
          console.log("bbb");
          console.log(obj)

          $.post(
           '../updateStates/role?aid='+obj.othis.parents('tr').find('[data-field=aid] div').text(),
          function(data){
              // layer.msg(data,{icon:1});
                  layer.msg("修改成功！",{icon:1});
          }
          );
      });
//      form.on('switch(switch1)', function (status) {
//          alert(status);
//      });
  });


<%--<script type="text/html" id="myTpl">--%>
    <%--<div class="layui-form">--%>
        <%--<input  type="checkbox" name="switch1"  lay-filter="switch1"  lay-skin="switch" lay-text="在职|禁用" {{1==d.status?'checked':''}}/>--%>
    <%--</div>--%>
<%--</script>--%>

</script>
<script type="text/html" id="myTpl">
    <div class="layui-form"  data-type="done">
        <input type="checkbox" name="status" id="status" lay-filter="status" lay-skin="switch" lay-text="在职|禁用" {{1==d.status?'checked':''}}/>
    </div>
</script>




</body>
</html>