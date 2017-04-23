<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <title>VIP管理系统</title>
    
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
									<div class="content clear-block">
										<form action="<%=path%>/login/LoginAction.action" method="post">
							           	 	<input type="text" name="username" placeholder="请输入名字" required/><br>
							            	<input type="password" name="password" placeholder="请输入姓" required/><br><br>
							            	<button type="submit">登录</button>
										</form>
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
	</div>
  
  <%
		Object message = session.getAttribute("message");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert("<%=message%>");
	</script>
	<%} %>


  </body>
</html>
