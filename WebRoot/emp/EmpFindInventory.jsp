<!DOCTYPE HTML>
<html>
<head>
<title>查询库存</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="../css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="../js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="../js/metisMenu.min.js"></script>
<script src="../js/custom.js"></script>
<link href="../css/custom.css" rel="stylesheet">
<link href="../css/button.css" rel="stylesheet">
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
							<a href="#"><i class="fa fa-cogs nav_icon"></i>信息修改 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="EmpChangeInfo.jsp">个人信息修改</a>
								</li>
							</ul>
						</li>
						<li class="">
							<a href="#"><i class="fa fa-book nav_icon"></i>库存查询<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="EmpFindInventory.jsp">库存查询</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="#"><i class="fa fa-th-large nav_icon"></i>仓库记录 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="findModelTypeAndId">添加进出库记录</a>
								</li>
								<li>
									<a href="findIoWarehouseLog">查询进出库记录</a>
								</li>
							</ul>
						</li>
						
						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>添加订单 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="findModelTypeId">添加订单</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="#"><i class="fa fa-file-text-o nav_icon"></i>退单处理<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="findAllDealNumber">退单处理</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="#" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>业绩查询 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="EmpGrade.jsp">业绩查询</a>
								</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="Emp.jsp">
						<h1>返回主页</h1>
						<span>＜＜＜</span>
					</a>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
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
										<p> ${ user } </p>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="EmpChangeInfo.jsp"><i class="fa fa-user"></i>修改密码</a> </li> 
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
					<h3 class="title1">查询库存</h3>
					<div class="bs-example widget-shadow" data-example-id="hoverable-table"> 
						<input type = "radio" name = "cang" value = "chucang" checked = "checked">&nbsp;&nbsp;店面仓库&nbsp;&nbsp;&nbsp;&nbsp;
						<input type = "radio" name = "cang" value = "jincang">&nbsp;&nbsp;外租仓库<br/><br/>
						成品电脑&nbsp;/&nbsp;零件：
						<select>
							<option value="1" selected="selected">-请选择-</option>
							<option value="2">成功2</option>
							<option value="3">成功3</option>
							<option value="4">成功4</option>
							<option value="5">失败5</option>
							<option value="6">失败6</option>
							<option value="7">失败7</option>
							<option value="8">失败8</option>
							<option value="9">失败9</option>
						</select>
						<br/><br/>
						型号：<input type = "text" name = "xinghao" placeholder="型号搜索">
						<br/><br/>
						<table class="table table-hover"> 
							<tdead> 
								<tr> 
									<th>序号</th> 
									<th>仓库名</th> 
									<th>储存产品</th> 
									<th>产品名称</th> 
									<th>产品型号</th> 
									<th>产品数量</th> 
									<th>储存位置</th> 
									<th>进出库时间</th> 
									<th>负责人</th> 
									<th>备注</th> 
									<th>操作</th> 
								</tr> 
							</tdead> 
							<tbody> 
								<tr> 
									<th>1</th> 
									<td>店面仓库</td> 
									<td>笔记本电脑</td> 
									<td>地球人笔记本</td> 
									<td>diqiurenII</td> 
									<td>50</td> 
									<td>店面仓库B区</td> 
									<td>2017-5-16</td> 
									<td>马蒙龙</td> 
									<td>无</td> 
									<td><a href = "EmpFindInventoryInfo.jsp"><input type = "button" class = "smallbutton" value="详情" name= "info"/></a></td> 
								</tr>
								<tr> 
									<th>2</th> 
									<td>仓库名称</td> 
									<td>进出方式</td> 
									<td>原仓库</td> 
									<td>目标仓库</td> 
									<td>数量</td> 
									<td>进价</td> 
									<td>负责人</td> 
									<td>时间</td> 
									<td>原由</td> 
									<td><a href = "EmpFindInventoryInfo.jsp"><input type = "button" class = "smallbutton" value="详情" name= "info"/></a></td> 
								</tr>
								<tr> 
									<th>3</th> 
									<td>仓库名称</td> 
									<td>进出方式</td> 
									<td>原仓库</td> 
									<td>目标仓库</td> 
									<td>数量</td> 
									<td>进价</td> 
									<td>负责人</td> 
									<td>时间</td> 
									<td>原由</td> 
									<td><a href = "EmpFindInventoryInfo.jsp"><input type = "button" class = "smallbutton" value="详情" name= "info"/></a></td> 
								</tr> 
							</tbody> 
						</table>
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