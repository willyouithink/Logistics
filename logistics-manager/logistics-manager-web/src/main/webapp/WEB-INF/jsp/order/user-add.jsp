<%--
  User: ZGH
  Date: 2018/5/29
  Time: 22:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <style type="text/css">
        .error{
            color: red;
        }
    </style>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css" />
    <title>用户添加</title>
</head>

<body>
<div class="pd-20 user-add">
    <form id="form1" class="layui-form" action="${pageContext.request.contextPath}/o/orderAdda" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">寄件人姓名</label>
            <div class="layui-input-inline">
                <input type="text"  name="sname" lay-filter="sname" lay-verify="sname" autocomplete="off" placeholder="请输入寄件人姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" lay-verify="">
            <label class="layui-form-label">所在地区</label>
            <div class="layui-input-inline">
                <select name="province" id="province" lay-filter='province'>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="city" id="city" lay-filter='city'>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="county" id="county" lay-filter='county'>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">详细地址</label>
            <div class="layui-input-inline sw-times2">
                <input type="text" name="saddress" lay-verify="saddress" autocomplete="off" placeholder="请输入街道、楼牌号等" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">物品重量</label>
            <div class="layui-input-inline">
                <input type="text" name="weight" lay-verify="weight" autocomplete="off" placeholder="请输入物品重量" maxlength="11" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">寄件金额</label>
            <div class="layui-input-inline">
                <input type="text" name="smoney" lay-verify="smoney" autocomplete="off" placeholder="请输入金额" maxlength="3" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
           <label class="layui-form-label">寄件时间</label>
             <div class="layui-input-inline">
                 <input type="datetime-local" name="stime" lay-verify="stime" autocomplete="off" placeholder="请输入时间" maxlength="20" class="layui-input">
             </div>
        </div>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">密码</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" maxlength="20" class="layui-input">--%>
            <%--</div>--%>
            <%--<div class="layui-form-mid layui-word-aux">请填写6到20位密码</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">手机号</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="tel" name="phone" lay-verify="mobile" autocomplete="off" placeholder="请输入手机号" maxlength="11" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">身份证</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" name="identity" lay-verify="idcard" autocomplete="off" placeholder="请输入身份证号码" maxlength="18" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">邮箱</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" name="email" lay-verify="emails" autocomplete="off" placeholder="请输入邮箱" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">性别</label>--%>
            <%--<div class="layui-input-block">--%>
                <%--<input type="radio" name="sex" value="男" title="男" checked="">--%>
                <%--<input type="radio" name="sex" value="女" title="女">--%>
                <%--<input type="radio" name="sex" value="密" title="保密">--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">是否出仓</label>
            <div class="layui-input-block">
                <input type="radio" name="state" value="1" title="是" checked=""/>
                <input type="radio" name="state" value="2" title="否"/>
                <%--<input type="radio" name="sex" value="密" title="保密">--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">收件人编号</label>
            <div class="layui-input-inline">
                <input type="text" name="cid" lay-verify="cname" autocomplete="off" placeholder="请输入编号" maxlength="11" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                <button class="layui-btn" >立即提交</button>
                <%--lay-submit="" id="add" lay-filter="useradd"--%>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/selectCity.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user-add.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/messages_zh.js"></script>
</body>
<script type="text/javascript">
    $(function(){
        $("#form1").validate({
            rules:{
                sname:{
                    required:true,
                    minlength:3
                },
//                billCount:{
//                    required:true,
//                    digits:true
//                },
                smoney:{
                    required:true,
                    number:true
                },
                saddress:{
                    required:true,
                    minlength:4
                }
            },
            messages:{
                sname:{
                    required:"这是必填字段",
                    minlength:"长度至少为2"
                },
//                billCount:{
////                    required:"这是必填字段",
//                    digits:"请输入正确的数量"
//                },
                smoney:{
                    required:"这是必填字段",
                    number:"请输入数字格式"
                },
                saddress:{
                    required:"这是必填字段",
                    minlength:"长度至少为4"
                }
            }

        })
    })
</script>

</html>