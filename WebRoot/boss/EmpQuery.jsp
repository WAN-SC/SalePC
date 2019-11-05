<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	

  </head>
  
  <body>
    


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
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->


</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						
						<li>
							<a href="#"><i class="fa fa-cogs nav_icon"></i>信息修改  <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerChangeInfo.jsp">个人信息修改</a>
								</li>
							</ul>
						</li>
						<li class="">
							<a href="#"><i class="fa fa-book nav_icon"></i>库存查询 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerFindInventory.jsp">库存查询</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-th-large nav_icon"></i>仓库记录 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerFindInOutWarehouseLog.jsp">查询仓库记录</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-envelope nav_icon"></i>商品管理<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerCommOnline.jsp">上架下架商品</a>
								</li>
								<li>
									<a href="ManagerCommManage.jsp">商品信息管理</a>
								</li>
								
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>员工管理<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerEmpManage.jsp">员工管理</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="#"><i class="fa fa-table nav_icon"></i>管理模块<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="emp/queryAllEmp">员工管理 </a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-file-text-o nav_icon"></i>退单处理 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerBackOrder.jsp">退单处理</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="#" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>销售报表<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="ManagerStatement.jsp">销售报表</a>
								</li>
							</ul>
						</li>
						
						
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--隐藏左侧-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--回到主页字样 -->
				<div class="logo">
					<a href="boss/Manager.jsp">
						<h1>回到主页</h1>
						<span>home</span>
					</a>
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				
					
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>姓名</p>
										<span>角色</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> 设置</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> 个人信息</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> 退出</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<h3 class="title1">员工管理</h3>
					
					<!--添加员工的弹窗 -->
					<div class="bs-example widget-shadow" data-example-id="contextual-table"> 
						<div class="col-md-4 modal-grids">
						<button  type="button" class="bigbutton" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" class="float">添加员工</button>
						<span>
						<form action="boss/queryAllEmp" method="post">
						<table cellspacing="50px">
							<tr>
								<td><input type="text" placeholder="输入姓名查询" name="ename" ></td>
								<td><input type="text" placeholder="就职时间范围" name="dateMin" >
								<td>————</td>
								<td><input type="text" placeholder="就职时间范围" name="dateMax" ></td>
								<td><input type="radio" name="estate" value="在职"></td>
								<td>在职&nbsp;&nbsp;</td>
								<td><input type="radio" name="estate" value="离职"></td>
								<td>离职&nbsp;&nbsp;</td>
								<td><input type="submit" class="smallbutton" value="查询"></td>
							</tr>
						</table>
						</form>
						</span>
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" >
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="exampleModalLabel">添加员工</h4>
									</div>
									<form action="boss/addEmp" method="post">
									<div class="modal-body">
										
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>员工ID:</label>
												<input type="text" class="form-control" id="recipient-name" name="eid" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>姓名:</label>
												<input type="text" class="form-control" id="recipient-name" name="ename" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>性别:</label>
												<input type="text" class="form-control" id="recipient-name" name="esex" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>密码:</label>
												<input type="text" class="form-control" id="recipient-name" name="epwd" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>年龄:</label>
												<input type="text" class="form-control" id="recipient-name" name="eage" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>入职日期:</label>
												<input type="text" class="form-control" id="recipient-name" name="ejobDate" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>邮箱:</label>
												<input type="text" class="form-control" id="recipient-name" name="email" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>状态:</label>
												<input type="text" class="form-control" id="recipient-name" name="estate" >
											</div>
											<div class="form-group">
												<label for="recipient-name" class="control-label"></label>权限:</label>
												店长权限<input type="radio" name="eroleId" value="60001">&nbsp;&nbsp;
												员工权限<input type="radio" name="eroleId" checked="checked" value="60002">
											</div>
											
										
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
										<input type="submit" class="btn btn-primary" value="确定">
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
					
						<table class="table table-hover"> 
							
							 <thead> 
								<tr> 
									 
									<th>姓名</th> 									 
									<th>性别</th>
									<th>年龄</th>
									<th>就职时间</th>
									<th>权限</th>
									<th>邮箱</th>
									<th>状态</th>
									<th>操作</th>
									
								</tr> 
								</thead> 
									<tbody>
									<c:forEach items="${list }" var="li">
										<tr> 
											
											
										 	<th>${li.ename}</th>
											<th>${li.esex }</th>
											<th>${li.eage }</th>
											<th><fmt:formatDate value="${li.ejobDate }" pattern="yyyy-MM-dd"/> </th>
											<th>
												<c:if test="${li.eroleId==60001 }">店长</c:if>
												<c:if test="${li.eroleId==60002 }">店员</c:if>
											</th>
											<th>${li.email }</th>
											<th>${li.estate }</th>
											<td>
                       
						<button type="button" class="smallbutton"  onclick="update(${li.eid })">修改</button>
						
					
						<button type="button" class="smallbutton" onclick="if(confirm('确定删除吗')===false) {return false}else{del(${li.eid})}">删除</button>
									
											</td>  
										</tr> 
										
									</c:forEach>	

										
									</tbody>

						</table>
					 
						<div style="width: 100% ; height: 30px ; text-align: center ;">
							<a href="#" ><font id = "text">首页</font><a/>&nbsp;&nbsp;
							<a href="#"><font id = "text">上一页</font></a>&nbsp;&nbsp;
							<span >1</span>&nbsp;&nbsp;
							<a href="#"><font id = "text">下一页</font></a>&nbsp;&nbsp;
							<a href="#"><font id = "text">尾页</font></a>&nbsp;&nbsp;
						</div>
					
					</div>
					
				</div>
			</div>
		</div>
    </div>
						

	



	

	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
			
			function update( id ){
// 				alert( $(button).parents("tr").html() )
				document.location.href = 'boss/getEmp?eid='+ id
			}
			
			function del( id ){
				document.location.href = 'boss/delEmp?eid=' + id
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>

    
    
    
  </body>
</html>
