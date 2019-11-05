<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>添加订单</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
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
			
			<h3 class="title1">添加订单 </h3>
			<div class="form-three widget-shadow">
				<form class="form-horizontal" action="addOrderFormInfo" method="POST">
					<div class="form-group">
						<label for="disabledinput" class="col-sm-2 control-label">添加产品：</label>
						<div class="col-sm-8">
							<table >
								<tr>
									<th id = "addorderformta">
										选择
									</th>
									<th id = "addorderformtable">
										商品型号
									</th>
									<th  id = "addorderformtable">
										商品名称
									</th>
									<th  id = "addorderformtabl">
										商品类别
									</th>
									<th  >
										<input type = "button" class= "subbuttn" value = "组装机订单">
									</th>
								</tr>
								<c:forEach items = "${mti}" var = "m">
									<tr>
										<td  id = "addorderformta">
											<input type= "radio" name = "shangpin" value = "${ m.getId() }" checked="checked" >
										</td>
										<td  id = "addorderformtable">
											${ m.getMode() }
										</td>
										<td  id = "addorderformtable">
											${ m.getName() }
										</td>
										<td  id = "addorderformtable">
											${ m.getType() }
										</td>
									</tr>
									
								</c:forEach>
							</table>
						</div>
					</div>
					<div class="form-group">
						<label for="disabledinput" class="col-sm-2 control-label">交易数量：</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1"  name = "number"  placeholder="交易数量">
						</div>
					</div>
					
					<div class="form-group">
						<label for="radio" class="col-sm-2 control-label">商品来源：</label>
						<div class="col-sm-8">
							<div class="radio block"><label><input name = "from"  type="radio" value = "dianmian"  checked="checked"> 店面仓库</label></div>
							<div class="radio block"><label><input name = "from"  type="radio"  value = "waizu">外租仓库</label></div>
							<div class="radio block"><label><input name = "from"  type="radio" value = "neigou" >内购同行</label></div>
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">商品售价：</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1"  name = "shoujia" placeholder="商品售价 （元）">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">客户姓名：</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1"  name = "clintname"  placeholder="客户姓名">
						</div>
					</div>
					<div class="form-group">
						<label for="radio" class="col-sm-2 control-label">支付方式：</label>
						<div class="col-sm-8">
							<div class="radio block"><label><input name = "zhifu"  type="radio" value = "xianjin"> 现金支付</label></div>
							<div class="radio block"><label><input name = "zhifu"  type="radio"  value = "shuaka" checked="checked">刷卡支付</label></div>
							<div class="radio block"><label><input name = "zhifu"  type="radio" value = "zhifubao" >支付宝支付</label></div>
							<div class="radio block"><label><input name = "zhifu"  type="radio" value = "weixin" >微信支付</label></div>
							<div class="radio block"><label><input name = "zhifu"  type="radio" value = "qita" >其他支付方式</label></div>
						</div>
					</div>
					<div class="form-group">
						<label for="txtarea1" class="col-sm-2 control-label">备注：</label>
						<div class="col-sm-8"><textarea name="text"  cols="80" rows="6"></textarea></div>
					</div>

					<div style="widtd: 100% ; height: 30px ; text-align: center ;">
						<label ><input type = "reset" value = "重置"/></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label><input type = "submit" class= "subbutton" value = "确认"></label>
					</div>
				</form>
			</div>

		</div>
		<div class="footer" align = "center">
		   <a href = "#" ><span style="font-size: 14px; font-weight: 600;">本站版权</span></a>&nbsp;|&nbsp;<a href = "#"><span style="font-size: 14px; font-weight: 600;">关于我们</span></a>&nbsp;|&nbsp;<a href = "#"><span style="font-size: 14px; font-weight: 600;">帮助</span></a>
		</div>
		
	</div>
	
	<script>
		$(function() {
		    var add = "<%=session.getAttribute("isadd")%>";
		    if( add =="true" )
		    {
		    	alert( "恭喜您，添加一条订单，添加数据成功！" );
		    }else if( add == "false" )
		    {
		    	alert( "Sorry，添加订单失败！" );
		    }else if( add == "tf")
		    {
		    	alert( "Sorry，业务操作失败，或因库存不足！" );
		    }else
		    {
		    	
		    }

			});
	</script>
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