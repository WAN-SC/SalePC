<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
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
									<a href="../boss/getComm">商品分类信息</a>
								</li>
								<li>
									<a href="../boss/getFinisher">商品详细信息</a>
								</li>
								<li>
									<a href="../boss/getSxj">商品上下架</a>
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
					<h3 class="title1">商品分类信息</h3>
					<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 
						<div class="add">
							<button type="button" class="bigbutton" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加商品</button>
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<h4 class="modal-title" id="exampleModalLabel">添加商品信息</h4>
										</div>
										<form action="../boss/addComm" method="GET">
										<div class="modal-body">
											
												<div class="form-group">
													<label  class="control-label">分类:</label>&nbsp&nbsp
													<!-- class="form-control" -->
													<select name="fl">
													<option>---请选择---</option>
													<option value="10001">成品机</option>
													<option value="10002">配件</option>
													</select>
												</div>
												<div class="form-group">
													<label  class="control-label">类型:</label>&nbsp&nbsp
													<!-- class="form-control" -->
													<select name="lx">
													<option>---请选择---</option>
													<option value="10001">笔记本</option>
													<option value="10002">台式机</option>
													<option value="10003">平板</option>
													<option value="10001">CPU</option>
													<option value="10002">内存条</option>
													<option value="10003">硬盘</option>
													<option value="10004">显卡</option>
													<option value="10005">主板</option>
													<option value="10006">显示器</option>
													</select>
												</div>
												<div class="form-group">
													<label  class="control-label">品牌:</label>&nbsp&nbsp
													<!-- class="form-control" -->
													<select name="pp">
													<option>---请选择---</option>
													<option value="10001">华硕ASUS</option>
													<option value="10001">英特尔</option>
													<option value="10002">AMD</option>
													<option value="10001">金士顿</option>
													<option value="10001">WD西部数据</option>
													<option value="10002">Seagate希捷</option>
													<option value="10001">七彩虹Colorful</option>
													<option value="10002">蓝宝石SAPPHIRE</option>
													<option value="10001">三星SAMSUNG</option>
													<option value="10002">冠捷AOC</option>
													
													</select>
												</div>
												<div class="form-group">
													<label for="message-text" class="control-label">型号:</label>&nbsp&nbsp
													<input type="text" name="xh">
												</div>
											
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
											<input type="submit" class="btn btn-primary" value="确定">
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						
						<div class="search-box">
						<form action="../boss/queryComm" method="GET">
							根据类型：<select name="c2">
									<option></option>
									<option value="10001">笔记本</option>
									<option value="10002">台式机</option>
									<option value="10003">平板</option>
									<option value="10001">CPU</option>
									<option value="10002">内存条</option>
									<option value="10003">硬盘</option>
									<option value="10004">显卡</option>
									<option value="10005">主板</option>
									<option value="10006">显示器</option>
								   </select>&nbsp&nbsp&nbsp
							根据品牌：<select name="c3">
									<option></option>
									<option value="10001">华硕ASUS</option>
									<option value="10001">英特尔</option>
									<option value="10002">AMD</option>
									<option value="10001">金士顿</option>
									<option value="10001">WD西部数据</option>
									<option value="10002">Seagate希捷</option>
									<option value="10001">七彩虹Colorful</option>
									<option value="10002">蓝宝石SAPPHIRE</option>
									<option value="10001">三星SAMSUNG</option>
									<option value="10002">冠捷AOC</option>
								   </select><br/><br/>
							根据型号：<input type="text" name="value"/>&nbsp&nbsp&nbsp
							<input type="submit" class="smallbutton" value="搜索"/><br><br>
						</form>
						</div><!--//end-search-box-->
						<div class="table">
						<table class="table table-hover">
								<tr>
								<!-- 
								  <th>分类</th>
								  <th>类型</th>  -->
								  <th>类型</th>
								  <th>品牌</th>
								  <th>型号</th>
								</tr>
								<c:forEach items="${comm}" var="m">
									<tr>
									<!-- 
									<td>${c.c1 }</td>
									<td>${c.c2 }</td>  -->
									<td>${m.type }</td>
									<td>${m.name }</td>
									<td>${m.mode }</td>
									</tr>
								</c:forEach>
						</table>
						</div>
						<div style="widtd: 100% ; height: 30px ; text-align: center ;">
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