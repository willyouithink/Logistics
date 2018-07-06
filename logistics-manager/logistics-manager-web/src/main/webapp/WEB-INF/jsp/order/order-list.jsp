<%--
  User: ZGH
  Date: 2018/5/25
  Time: 18:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css" />
    <script type="text/html" src="${pageContext.request.contextPath}/images/common/sprite.png"></script>
    <%--<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>--%>
    <script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.all.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/define/order.js"></script>
    <%--<script src="${pageContext.request.contextPath}/js/lib/datatable.js"></script>--%>
    <script type="text/html" id="myTpl">
        <div class="layui-form"  data-type="done">
            <input type="checkbox" name="state" id="state" lay-filter="state" lay-skin="switch" lay-text="出仓|等待" {{1==d.state?'checked':''}} />
        </div>
    </script>
    <%--<script type="text/html" id="barDemo">--%>
        <%--&lt;%&ndash;<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>&ndash;%&gt;--%>
        <%--<div class="layui-form" >--%>
            <%--<a class="layui-btn layui-btn-xs " type="checkbox" name="sid" id="edit" lay-filter="sid" lay-skin="switch">编辑</a>--%>
                <%--&lt;%&ndash;<input type="checkbox" name="sid" id="sid" lay-filter="sid" lay-skin="switch"  />&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="layui-btn layui-btn-danger radius btn-delect" data-type="getCheckData" id="btn-delect-all"><i class="linyer icon-delect"></i> 批量删除</a>&ndash;%&gt;--%>
            <%--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
        <%--</div>--%>
    <%--</script>--%>
    <%--<script type="text/html" id="barDemo">--%>
        <%--<a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>--%>
    <%--</script>--%>
    <script type="text/html" id="barDemo">
        <%--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>--%>
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>

    </script>

</head>

<body>
<div class="tab-body">
    <p class="page-tab">
        <span class="layui-breadcrumb" lay-separator=">"><a href="">首页</a><a><cite>订单列表</cite></a></span></p>
    <div class="handle-box">
        <ul>
            <li class="handle-item">
                <span class="layui-form-label">输入用户名：</span>
                <div class="layui-input-inline" ><input type="text" id="sname" autocomplete="off" placeholder="请输入搜索条件" class="layui-input"></div><button id="btn-search" data-type="reload" class="layui-btn mgl-20" >查询</button><button class="layui-btn mgl-20" id="refresh">刷新</button><span class="fr">
                    <a class="layui-btn layui-btn-danger radius btn-delect" data-type="getCheckData" id="btn-delect-all"><i class="linyer icon-delect"></i> 批量删除</a>
                    <a class="layui-btn btn-add btn-default" id="btn-adduser" data-type="getCheckData" href="${pageContext.request.contextPath}/order/user-add"><i class="linyer icon-add" ></i> 添加订单</a></span></li>

        </ul>
    </div>
    <div class="layui-clear">
        <div class="tableTools fr"></div>
    </div>
    <%--<form action="${pageContext.request.contextPath}/uploadSave">--%>
        <%--<textarea id="demo" style="display: none;"></textarea>--%>
        <%--<input type="submit" value="提交">--%>
    <%--</form>--%>
    <table class="table-box table-sort" id="orderTable" lay-filter="demo">
        <thead >

        <tbody>
        <%--<table class="" id=""></table>--%>

        </tbody>


    </table>

</div>

<script>
    layui.use(['jquery','table','form','layedit'],function(){
        //初始化变量
        var  $  = layui.jquery,
                form = layui.form,
                layedit = layui.layedit,
                table = layui.table;

        //对表格进行渲染
        table.render({
            //开启分页
            page: true,
            //渲染的容器是谁
            elem:'#orderTable',
            //异步提交请求给后台返回JSON
            url:'../sender',
            //要显示的表头是什么
            cols:[[
                {type:'checkbox'},
                {field:'sid',title:'商品编号'},
                {field:'sname',title:'寄件人姓名'},
                {field:'saddress',title:'寄件人地址'},
                {field:'weight',title:'物品重量/kg'},
                {field:'smoney',title:'寄件金额/元'},
                {field:'stime',title:'寄件时间'},
                {field:'state',title:'是否出仓',templet: '#myTpl'},
                {field:'catName',title:'收件人姓名'},
                {field: 'right', title: '操作管理', templet: '#barDemo'}
            ]]

        });
        //监听工具条
        <%--table.on('tool(demo)', function(obj){--%>
            <%--var data = obj.data;--%>
           <%--if(obj.event === 'edit'){--%>
              <%--//  layer.alert('编辑行：<br>'+ JSON.stringify(data))--%>
               <%--window.location.href="${pageContext.request.contextPath}/orderEdit/sid="+data.sid;--%>
             <%--/*  $.post(--%>
<%--//                      类型String--%>
                       <%--'../orderEdit',--%>
<%--////                   类型Object--%>
                       <%--{'sid':JSON.stringify(data.sid)}--%>
               <%--);*/--%>
            <%--}--%>
        <%--});--%>
           // layer.alert('编辑行：<br>'+ JSON.stringify(data))

        table.on('tool(demo)', function(obj){
            var data = obj.data;//获取当前行数据
            if(obj.event === 'edit'){

                window.location.href="${pageContext.request.contextPath}/toOrderEdit?sid="+data.sid;

            }

        });

        layedit.build('demo',{
            height: 800,//设置编辑器高度
            uploadImage:{

                url:'../uploadImage',
                type:'post'
            }
        }); //建立编辑器

        var active ={
            getCheckData:function(){
                //你点击了"批量删除"
                //为了获取到被选中的行
                console.log("aaa")
                var data = table.checkStatus("orderTable").data;
                if(data.length>0){
                    //至少选中一行
                    //获得所选中的行的id
                    if(confirm("确认删除吗？")!=true){
                        return;
                    }
                    var ids = [];
                    for(var i= 0;i <data.length;i++){
                        ids.push(data[i].sid);
//                        console.log("cc"+data)
                    }
                    //异步提交到后台 ids
                    $.post(
                            '../batch',
                            {'ids[]':ids},
                            function (data) {
                                if(data>0){
                                    $('.layui-laypage-btn').click();
                                layer.msg('删除成功!',{icon:1});
//                                    alert("删除成功！");
//                             location.href="../order/order-list";

                                }else{
                                    layer.msg('删除失败!',{icon:1});
                                }
//                                alert(data);
                            }
                    );
                    }else{
                        //没有选中
                        layer.msg("请选择至少一行后再批量删除！",{icon:2});
                    }
                },
                reload:function(){
                    //模糊查询，提交一个异步请求到后台
                    //val()文本框  单选按钮  复选按钮
                    console.log("lllllllll")
                    var sname = $("#sname").val();
                    console.log(sname)
                    //不为空
                    if($.trim(sname).length>=0){
                        //文本框中有内容，表格重载
                        table.reload("orderTable",{
                            page:{curr:1},
                            where:{sname:sname}
                        });
                    }
                }
        };
        //点击"批量删除"按钮触发的事件
        $("#btn-delect-all").on('click',function(){
            //为了获取data-type属性
            console.log("bb")
            var type = $(this).data("type");
            //判断是否具有getCheckData，若有，那么直接调用，否则什么都不做
            active[type]?active[type].call(this):'';
        });

        //点击"模糊查询"按钮触发的事件
        $("#btn-search").on('click',function(){
            //为了获取按钮的data-type属性
            console.log("qqqqq~~")
            var type = $(this).data("type");
            active[type]?active[type].call(this):'';
        });

        //商品状态的开关事件
        form.on('switch(state)',function(obj){
            //调用类似于批量删除的功能
            //修改商品状态修改为1或者2
         //   console.log(obj);
            $.post(
                   // console.log(obj)
                    '../updateState?sid='+obj.othis.parents('tr').find('[data-field=sid] div').text(),
                    function(data){
                        // layer.msg(data,{icon:1});
                        layer.msg("修改成功！",{icon:1});
                    }
            );

           // console.log();
        });

//        form.on('switch(sid)',function(obj){
//            //调用类似于批量删除的功能
//            //修改商品状态修改为1或者2
//            console.log(obj)
//            console.log("zxcvb")
//            $.post(
//                    //console.log(obj)
//                    '../orderEdit'
//            );
//            console.log(obj.othis.parents('tr').find('[data-field=sid] div').text());
//        });


    });
</script>
</body>

</html>