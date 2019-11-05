<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EmpUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    <!DOCTYPE HTML>
<html>
<head>
<title>Tables</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="css/button.css" rel="stylesheet">
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
    
    <div>
			<form action="boss/updateEmp" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="gridSystemModalLabel">修改员工信息</h4>
				</div>
				<div class="modal-body">
					  
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>员工ID:</label>${list.eid }
							<input type="hidden" class="form-control" id="recipient-name" name="eid" value="${list.eid }">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>姓名:</label>
							<input type="text" class="form-control" id="recipient-name" name="ename" value="${list.ename}">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>性别:</label>
							<input type="text" class="form-control" id="recipient-name" name="esex" value="${list.esex}">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>密码:</label>
							<input type="text" class="form-control" id="recipient-name" name="epwd" value="${list.epwd }">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>年龄:</label>
							<input type="text" class="form-control" id="recipient-name" name="eage" value="${list.eage }">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>入职日期:</label>
							<input type="text" class="form-control" id="recipient-name" name="ejobDate" value='<fmt:formatDate value="${list.ejobDate }" pattern="yyyy-MM-dd"/>'>
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>邮箱:</label>
							<input type="text" class="form-control" id="recipient-name" name="email" value="${list.email }">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>状态:</label>
							<input type="text" class="form-control" id="recipient-name" name="estate" value="${list.estate }">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label>权限:</label>
							店长权限<input type="radio" name="eroleId" value="60001">&nbsp;&nbsp;
							员工权限<input type="radio" name="eroleId" checked="checked" value="60002">
						</div>
						
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" onclick="window.history.go(-1)">关闭</button>
					<input type="submit" class="btn btn-primary" value="保存">
				</div>
			</form>
		</div><!-- /.modal-content -->
		
    
  </body>
</html>
