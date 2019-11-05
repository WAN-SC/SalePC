<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
        <meta charset="utf-8">
        <title>登录界面</title>

        <!-- CSS -->
        <link rel="stylesheet" href="css/style1.css" type="text/css">
    </head>
	
    <body style=" width: 100% ; height: 80% ;background-image: url('images/loginback.jpg')  ; background-repeat: no-repeat ;">
        <div class="page-container">
            <h1>登陆</h1>
            <form action="" method="post">
                <input type="text" name="username" class="username" placeholder="请输入账号">
                <input type="password" name="password" class="password" placeholder="请输入密码">
                <button type="submit">登陆</button>
            </form> 
        </div>
        <!-- Javascript -->
        <script src="js/jquery-3.1.1.min.js"></script>

    </body>
</html>
