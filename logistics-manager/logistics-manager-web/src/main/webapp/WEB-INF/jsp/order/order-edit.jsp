<%--
  User: ZGH
  Date: 2018/5/30
  Time: 13:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/lib/layui/css/layui.css">
    <title>用户资料编辑</title>
</head>

<body>
<div class="pd-20 user-add">
    <form class="layui-form" action="${pageContext.request.contextPath}/orderEdit" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="hidden" name="sid" value="${sender.sid}"/>
                <input type="text" name="sname" value="${sender.sname}" lay-verify="sname" autocomplete="off" placeholder="请输入用户名" class="layui-input">
            </div>
        </div>
        <%--<div class="layui-form-item" lay-verify="">--%>
            <%--<label class="layui-form-label">所在地区</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="province" id="province"  lay-filter='province'>--%>
                <%--</select>--%>
            <%--</div>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="city" id="city" lay-filter='city'>--%>
                <%--</select>--%>
            <%--</div>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="county" id="county" lay-filter='county'>--%>
                <%--</select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">详细地址</label>
            <div class="layui-input-inline sw-times2">
                <input type="text" name="saddress" value="${sender.saddress}" lay-verify="saddress" autocomplete="off" placeholder="请输入街道、楼牌号等" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">物品重量</label>
            <div class="layui-input-inline">
                <input type="text" name="weight" value="${sender.weight}"  lay-verify="weight" autocomplete="off" placeholder="请输入物品重量" maxlength="11" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">寄件金额</label>
            <div class="layui-input-inline">
                <input type="text" name="smoney" value="${sender.smoney}" lay-verify="smoney" autocomplete="off" placeholder="请输入金额" maxlength="1" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">寄件时间</label>
            <div class="layui-input-inline">
                <input type="datetime-local" name="stime" value="${sender.stime}" lay-verify="stime" autocomplete="off" placeholder="请输入时间" maxlength="20" class="layui-input">
            </div>
        </div>
        <%--<div class="layui-form-item" lay-verify="">--%>
            <%--<label class="layui-form-label">是否出仓</label>--%>
            <%--<div class="layui-input-block">--%>
                <%--<input type="radio" name="state" value="1" title="是" checked=""/>--%>
                    <%--<input type="radio" name="state" value="2" title="否"/>--%>
           <%--</div>--%>
        <%--</div>--%>

        <div class="layui-form-item">
            <label class="layui-form-label">收件人编号</label>
            <div class="layui-input-inline">
                <input type="text" name="cid" value="${sender.cid}" lay-verify="cname" autocomplete="off" placeholder="请输入编号" maxlength="11" class="layui-input">
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
                <%--<input type="tel" name="phone" lay-verify="phone" autocomplete="off" placeholder="请输入手机号" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item" lay-verify="">--%>
            <%--<label class="layui-form-label">选择地址</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="province" id="province" lay-filter="province"></select>--%>
            <%--</div>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="city" id="city" lay-filter="city"></select>--%>
            <%--</div>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<select name="county" id="county" lay-filter="county"></select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">身份证</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" name="identity" lay-verify="identity" autocomplete="off" placeholder="请输入身份证号码" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">邮箱</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" name="email" lay-verify="email" autocomplete="off" placeholder="请输入邮箱" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>

        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit="" >立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/static/js/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/lib/selectCity.js"></script>
<script src="${pageContext.request.contextPath}/static/js/define/user-edit.js"></script>
<script src="${pageContext.request.contextPath}/lib/layui/lay/modules/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>

</body>

</html>
