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
    
    <title>会员信息修改</title>
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
  <%
  	User user = (User)session.getAttribute("user");
  	String name = user.getUsername();
   %>
      <h2 align="center">会员信息修改</h2>

     <%
    	String mm = request.getParameter("vipId");
  		int vipId = Integer.parseInt(mm); 
     %>
     <div align="center">
     <form action="<%=path %>/Vip/updateVipAction.action" method="post" >
    	<input type="text" name="name" placeholder="vip姓名" required>
    	<input type="text" name="age" class="form-control width top" placeholder="vip年龄" required>
    	<input type="hidden" name="vipId" value="<%=vipId%>">
        <button type="submit">确认修改</button>
     </form>
     </div>
  </body>
</html>
