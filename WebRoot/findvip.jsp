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
    
    <title>会员查询</title>
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
    <h2 align="center">会员查询</h2>
	<div class="table1" align="center">
    <a href="entry.jsp"  ><font color="#000000">商品信息录入</font></a>
    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
   	<a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
   	<a href="<%=path %>/login/QuitAction.action">退出</a>
   </div> 

    <div class="float" align="center">
        <form action="<%=path%>/Vip/getVipByNameAction.action" method="post">
		            <input type="text" name="name"  placeholder="请输入要查询VIP的姓名" required>
        		    <button type="submit" class="btn btn-success width">查询</button>
    </form>
    </div>
  </body>
   <%
		Object message = session.getAttribute("message");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert("<%=message%>");
	</script>
	<%} %>
</html>
