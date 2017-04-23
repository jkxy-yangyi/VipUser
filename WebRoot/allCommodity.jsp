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
    
    <title>商品信息</title>
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
    <h2 align="center">商品信息</h2>
	<div class="table1" align="center">
    <a href="entry.jsp"  ><font color="#000000">商品信息录入</font></a>
    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
   	<a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
    <a href="<%=path %>/findvip.jsp" ><font color="#000000">VIP个人信息查询</font></a>
   	<a href="<%=path %>/login/QuitAction.action">退出</a>
   </div> 
   <div class="float">   
  <table  class="table table-striped ">
  		<tr>
    			<td>商品名称</td>
    			<td>商品价格</td>
    			<td>商品折扣</td>
    		</tr>
    <%
    
    	List<Commodity> commodities = (List<Commodity>)request.getAttribute("commodities");
    	for(int i=0;i<commodities.size();i++){
    		Commodity commodity =  commodities.get(i);
    		String commodityName = commodity.getCommodityName();
    		double commodityprice = commodity.getPrice();
    		double commodityagio = commodity.getAgio();
    		
    %>
    
    		<tr>
    			<td><%=commodityName %></td>
    			<td><%=commodityprice %></td>
    			<td><%=commodityagio %></td>
    		</tr>
    <%
    	}

     %>
  </table>
  </div>
  
  </body>
</html>
