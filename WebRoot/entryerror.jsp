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
  <%
  	User user = (User)session.getAttribute("user");
  	String name = user.getUsername();
   %>
     <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/vip/index.jsp">商场VIP会员管理系统</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a><span class="glyphicon glyphicon-user"></span> <%=name %></a></li>
            <li><a href="<%=path %>/系统维护.jsp"><span class="glyphicon glyphicon-user"></span> 关于</a></li>
            <li><a href="<%=path %>/帮助.jsp"><span class="glyphicon glyphicon-log-in"></span> 帮助</a></li>
            <li><a href="<%=path %>/login/zhuxiaoAction.action"><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
        </ul>
    </div>
</nav>    
<div class="table" >


     <a href="/VipUser/entry.jsp"><font color="#000000">商品信息录入</font></a>
											    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
											    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
											    <a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
											    <a href="<%=path %>/findvip.jsp" ><font color="#000000">VIP个人信息查询</font></a>
											   	<a href="<%=path %>/help.jsp" ><font color="#000000">帮助</font></a>
												<a href="<%=path %>/login/QuitAction.action">退出</a>
   </div>   
    <div class="fontColor">
    	商品录入失败了,请手动返回
    </div>
  </body>
</html>
