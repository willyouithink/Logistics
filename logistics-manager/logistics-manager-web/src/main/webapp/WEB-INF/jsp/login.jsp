<%--
  Created by IntelliJ IDEA.
  User: aqiang
  Date: 2018/6/15
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>某某公司后台登录系统</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">

  <!--<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
-->
  <!-- For-Mobile-Apps-and-Meta-Tags -->
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Simple Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- //For-Mobile-Apps-and-Meta-Tags -->

</head>

<body>
<h1>UU物流后台登录系统</h1>
<div class="container w3">
  <h2>UU物流后台系统</h2>
  <form action="${pageContext.request.contextPath}/login/login/login" method="get">
    <div class="username">
      <span class="username" style="height:19px">用户:</span>
      <input type="text" name="name" class="name" placeholder="" required="">
      <div class="clear"></div>
    </div>
    <div class="password-agileits">
      <span class="username"style="height:19px">密码:</span>
      <input type="password" name="password" class="password" placeholder="" required="">
      <div class="clear"></div>
    </div>

    <div class="login-w3">
      <input type="submit" class="login" value="Login">
    </div>
    <div class="clear"></div>
  </form>
</div>
<div class="footer-w3l">
  <p> UU物流后台登录系统</p>
</div>
</body>
</html>
