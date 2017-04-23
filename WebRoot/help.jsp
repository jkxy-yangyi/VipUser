<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.jkxy.web.model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" media="all" href="css/defaults.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system-menus.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/style.css" />
  </head>
  
  <body>
  
  <div id="header-region" class="clear-block"></div>
	<div id="wrapper">
		<div id="container" class="clear-block">
			<div id="header">
				<div id="logo-floater"></div>
			</div>
			<div id="center">
				<div id="squeeze">
					<div class="right-corner">
						<div class="left-corner" style="text-align: center;">
							<h2>VIP会员管理系统</h2>
							<div class="clear-block">
								<div id="node-2" class="node">
											
											     在开始项目开发之前，首先来介绍一下本系统的主要功能。<br>
◆ 登录<br>
本系统为商场VIP消费情况查询系统，具有一定的保密性。因此必须要有一定的权限<br>
才能使用本系统查询。要进行查询就必须先登录才能使用本系统。登录之后进入系统的主<br>
界面，在主界面可以选择用户想要执行的功能模块。<br>
◆ 商品信息录入<br>
在维护本系统时，要不断更新系统的数据。其中商品的信息是在不断增加的，当新进<br>
商品时，要保证商品信息的同步更新。在本模块可将新进商品的信息录入保存在服务器的<br>
数据库中。<br>
◆ 商品信息查询<br>
有时候想了解某种商品的详细信息。在本模块可以查询所想知道的商品的详细信息。<br>
◆ VIP信息管理<br>
本系统为VIP消费查询系统，因此对VIP的信息管理是核心。本模块是进行VIP信息登<br>
记的模块。<br>
◆ VIP购物登记<br>
当VIP购物时，要对其所购物品进行登记，以便以后对其进行统计。<br>
◆ VIP信息查询<br>
对VIP的信息查询是经常性的操作，在本模块可以查询指定VIP的详细信息，以了解某<br>
会员的购物情况。<br>
◆ 系统维护<br>
本系统并不是每个人都可以使用，在本模块可以授予某个使用者使用本系统的权利，<br>
同样也可以剥夺某个使用者使用本系统的权利。<br>
◆ 帮助<br>
使用者可以在本模块学习怎么使用系统，以方便操作。<br>
										<br>
									</div>
									<div class="clear-block">
										<div class="meta"></div>
									</div>
								</div>
							</div>
							<div id="footer"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
  
  
  </body>
</html>
