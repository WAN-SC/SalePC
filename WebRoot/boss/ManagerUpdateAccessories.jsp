﻿<!DOCTYPE HTML>
<html>
<head>
<title>商品管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/font-awesome.css" rel="stylesheet"> 
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="../js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<script src="../js/metisMenu.min.js"></script>
<script src="../js/custom.js"></script>
<link href="../css/custom.css" rel="stylesheet">
<link href="../css/button.css" rel="stylesheet">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
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
		<div class="sticky-header header-section ">
			<div class="header-left">
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<div class="logo">
					<a href="Manager.jsp">
						<h1>返回主页</h1>
						<span>＜＜＜</span>
					</a>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span style="font-size: 10 ; font-weight: 600 ; color: #6164C1" >返回上一级</span></a>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="../images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>欢迎：</p>
										<p> ${user} </p>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="ManagerChangeInfo.jsp"><i class="fa fa-user"></i>修改密码</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i>退出账号</a> </li> 
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<div id="page-wrapper">
			
			<div class="main-page">
				<div class="tables">
					<h3 class="title1">成品机信息修改</h3>
					<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 
						
											<form action="../boss/updateAccessories" method="GET">
											<div class="modal-body">
											
												<div class="form-group">
													<label for="recipient-name" class="control-label">ID:</label>
													<input type="text" class="form-control" name="id" value="${i.id } ">
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label">显卡:</label>
													<input type="text" class="form-control" name="displaycard" value="${i.displaycard } ">
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label">适用类型:</label>
													<input type="text" class="form-control" name="type" value="${i.type } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">频率:</label>
													<input type="text" class="form-control" name="frequency" value="${i.frequency } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">核心数:</label>
													<input type="text" class="form-control" name="coresnumber" value="${i.coresnumber } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">容量:</label>
													<input type="text" class="form-control" name="capacity" value="${i.capacity } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">BIT位数:</label>
													<input type="text" class="form-control" name="bit" value="${i.bit } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">CL延迟:</label>
													<input type="text" class="form-control" name="cl" value="${i.cl } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">转速:</label>
													<input type="text" class="form-control" name="rev" value="${i.rev } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">类型:</label>
													<input type="text" class="form-control" name="mvideo" value="${i.mvideo } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">主芯片组:</label>
													<input type="text" class="form-control" name="c" value="${i.c } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">内存插槽:</label>
													<input type="text" class="form-control" name="dimm" value="${i.dimm } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">主板版型:</label>
													<input type="text" class="form-control" name="lcd" value="${i.lcd } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">尺寸:</label>
													<input type="text" class="form-control" name="screensize" value="${i.screensize } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">视频接口:</label>
													<input type="text" class="form-control" name="videointerface" value="${i.videointerface } ">
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">价格:</label>
													<input type="text" class="form-control" name="price" value="${i.price } ">
												</div>
											</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" onclick="location.href='../boss/getAccessories'">取消</button>
													<button type="submit" class="btn btn-primary">确定</button>
												</div>
											</form>
										
					</div>
				</div>
			</div>

		</div>
		<div class="footer" align = "center">
		   <a href = "#" ><span style="font-size: 14px; font-weight: 600;">本站版权</span></a>&nbsp;|&nbsp;<a href = "#"><span style="font-size: 14px; font-weight: 600;">关于我们</span></a>&nbsp;|&nbsp;<a href = "#"><span style="font-size: 14px; font-weight: 600;">帮助</span></a>
		</div>
		
	</div>
	<!-- Classie -->
		<script src="../js/classie.js"></script>
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
		</script>
	<!--scrolling js-->
	<script src="../js/jquery.nicescroll.js"></script>
	<script src="../js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="../js/bootstrap.js"> </script>
</body>
</html>