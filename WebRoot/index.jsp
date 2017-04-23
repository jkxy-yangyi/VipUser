<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.jkxy.web.model.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link type="text/css" rel="stylesheet" media="all" href="css/defaults.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system-menus.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/style.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system-boot.css" />
  
  </head>
  
  <body>
  <%
  	User user = (User)session.getAttribute("user");
  	String name = user.getUsername();
   %>
   
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
							<h2>VIP会员管理系统首页</h2>
							<div class="clear-block">
								<div id="node-2" class="node">
											
								    <a href="/VipUser/entry.jsp"><font color="#000000">商品信息录入</font></a>
								    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
								    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
								    <a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
								    <a href="<%=path %>/findvip.jsp" ><font color="#000000">VIP个人信息查询</font></a>
								   	<a href="<%=path %>/help.jsp" ><font color="#000000">帮助</font></a>
									<a href="<%=path %>/login/QuitAction.action">退出</a>
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
