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
    
    <title>所有会员消费记录</title>
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
    <h2 align="center">所有会员消费记录</h2>
	<div class="table1" align="center">
   	<a href="/VipUser/entry.jsp"><font color="#000000">商品信息录入</font></a>
    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
   	<a href="<%=path %>/login/QuitAction.action">退出</a>
   	</div>
   	
   	
    <div class="float">  
    <table class="table table-striped ">
    	<tr>
	   		<td>订单号</td>
	   		<td>姓名</td>
	   		<td>消费名称</td>
	   		<td>实付金额</td>
   		</tr>
    <%
    
    	List<Consume> consumes = (List<Consume>)request.getAttribute("consumes");
    	for(int i=0;i<consumes.size();i++){
    		Consume consume =  consumes.get(i);
   			String vName = consume.getName();
   			int ConsumeId = consume.getConsumeId();
    		
    %> 
    <tr>
    	<td><%=ConsumeId %></td>
   		<td><%=vName %></td>
   		<td><%=consume.getCommodityName() %></td>
   		<td><%=consume.getPracticePrice() %></td>
   		</tr>
    <%
    	}

     %>
     
  </table>
  </div>
  </body>
</html>
