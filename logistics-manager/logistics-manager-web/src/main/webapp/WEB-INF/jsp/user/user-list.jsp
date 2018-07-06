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
<div class="tab-body">
    <p class="page-tab">
        <span class="layui-breadcrumb" lay-separator=">"><a href="">首页</a><a><cite>用户列表</cite></a></span>
    </p>



    <div class="handle-box">
        <ul>
            <li class="handle-item"><span class="layui-form-label">输入用户名：</span>
                <div class="layui-input-inline">
                    <input type="text" autocomplete="off" placeholder="请输入搜索条件" class="layui-input" id="title">
                </div>
                <button class="layui-btn layui-btn-search" data-type="reload">查询</button>
                <button class="layui-btn mgl-20" style="float: right"><a style="color: white" href="${pageContext.request.contextPath}/user/user-list">刷新</a></button>

                <button class="layui-btn layui-btn-danger" id="lay_deleteall" data-type="getCheckData" style="float: right"><i class="layui-icon">&#xe640; </i>批量删除
                </button>
                <button class="layui-btn btn-add btn-default" id="btn-adduser"
                        onclick="location.href='${pageContext.request.contextPath}/user/user-add'">
                    <i class="layui-icon">&#xe61f; </i><a style="color: white">添加</a></button>
            </li>
        </ul>
    </div>
    <div class="layui-clear">
        <div class="tableTools fr">
        </div>
    </div>

    <table class="table-box table-sort" id="userTable" lay-filter="userTable"></table>

</div>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit" >编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/html" id="myTpl">
    <div class="layui-form" data-type="done">
        <input type="checkbox"   name="ustates" id="ustates" lay-filter="ustates" lay-skin="switch" lay-text="正常|注销" {{1==d.ustates?'checked':''}}/>
    </div>
</script>
<script type="text/javascript">
    layui.use(['jquery', 'table', 'form'], function () {
        //初始化变量
        var $ = layui.jquery,
            table = layui.table,
            form = layui.form;
        //对表格进行渲染
        table.render({
            //开启分页
            page: true,
            //渲染的容器是谁
            elem: '#userTable',
            //异步提交请求给后台返回JSON
            url: '../user/listUser',
            //要显示的表头是什么uid,uname,ugender ,urank,ustates,rid
            cols: [[
                {type: 'checkbox'},
                {title: '序号',templet: '#indexTpl'},
                {field: 'uname', title: '用户姓名'},
                {field: 'ugender', title: '用户性别'},
                {field: 'uphone', title: '联系电话'},
                {field: 'uemail', title: '邮箱'},
                {field: 'statusName', title: '用户状态', templet: "#myTpl"},
                {field: 'uid', title: '用户编号'},
                {field: 'rname', title: '用户等级'},
                {field: 'uadress', title: '地址'},
                {field: 'right', title: '操作', toolbar: "#barDemo"}
            ]]
        });


        var active = {
            getCheckData: function () {
                //你点击了"批量删除"
                //为了获取到被选中的行
                var data = table.checkStatus("userTable").data;
                if (data.length > 0) {
                    //至少选中一行
                    //为了获得所有选中行的id
                    var uids = [];
                    for (var i = 0; i < data.length; i++) {
                        uids.push(data[i].uid);
                    }
                    //异步提交到后台 ids
                    $.post(
                        '../user/updateStates',
                        {'uids[]': uids},
                        function (data) {
                            //至少删除一条记录
                            if (data > 0) {
                                //停留在原来页面刷新
                                location.href="${pageContext.request.contextPath}/user/user-list";
                                layer.msg("恭喜，删除成功！", {icon: 1});
                            }
                        }
                    );
                } else {
                    //没有选中
                    layer.msg("请选择至少一行后再批量删除！", {icon: 2});
                }
            },
            reload: function () {
                //模糊查询，提交一个异步请求到后台 {title}
                //val() 文本框 单选按钮 复选按钮
                //text()  html()
                var title = $("#title").val();
                //不为空
                if ($.trim(title).length > 0) {
                    //文本框中有内容，表格重载
                    table.reload("userTable", {
                        page: {curr: 1},
                        where: {title: title}
                    });
                }
            }
        };

        //点击"批量删除"按钮触发的事件
        $(".handle-item .layui-btn-danger").on('click', function () {
            // console.log("aaa");
            //为了获取data-type属性
            var type = $(this).data("type");//getCheckData
            //判断是否具有getCheckData，若有，那么直接调用，否则什么都不做
            active[type] ? active[type].call(this) : '';
        });

        //点击"模糊查询"按钮触发的事件
        $(".handle-item .layui-btn-search").on('click', function () {
            //为了获取按钮的data-type属性
            console.log("aaa");
            var type = $(this).data("type");//reload
            //判断active变量中是否具有reload属性
            active[type] ? active[type].call(this) : '';
        });

        table.on('tool(userTable)',function (obj) {
            var data = obj.data;
             if(obj.event === 'del'){

                location.href="${pageContext.request.contextPath}/user/delUser?uid="+JSON.stringify(data.uid);
            } else if(obj.event === 'edit'){
                <%--location.href="${pageContext.request.contextPath}/user/user-edit?uid="+JSON.stringify(data.uid)+"&uname="+JSON.stringify(data.uname)+"&ugender="+JSON.stringify(data.ugender)+"&uphone="+JSON.stringify(data.uphone)+"&uemail="+JSON.stringify(data.uemail);--%>
                location.href="${pageContext.request.contextPath}/user/findUser?uid="+JSON.stringify(data.uid);
                /*{field: 'ugender', title: '用户性别'},
                {field: 'statusName', title: '用户状态', templet: "#myTpl"},
                {field: 'rname', title: '用户等级'},
                {field: 'uadress', title: '地址'},*/
                //alert(JSON.stringify(data))
            }
        });

        form.on('switch(ustates)', function(obj){
            $.post(
                '../user/changeStates?uid='+obj.othis.parents('tr').find('[data-field=uid] div').text(),
                    function(data){
                        // layer.msg(data,{icon:1});
                        layer.msg("修改成功！",{icon:1});
                    }
            )

        });


    });

</script>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user.js"></script>
</body>
</html>
