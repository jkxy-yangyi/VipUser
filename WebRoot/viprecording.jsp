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
    
    <title>会员消费信息</title>
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
    <h2 align="center">会员消费信息</h2>
	<div class="table1" align="center">
   	<a href="/VipUser/entry.jsp"><font color="#000000">商品信息录入</font></a>
    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
    <a href="<%=path %>/Vip/getAllVipAction.action"><font color="#000000">查询所有VIP信息</font></a>
    <a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
   	<a href="<%=path %>/login/QuitAction.action">退出</a>
   	</div>

   <div class="float">
  <table class="table table-striped" >
   <%
   		List<Consume> consumes =  (List<Consume>)request.getAttribute("consumes");
		if (consumes.size()==0) {
	%>
      <h2 align="center">该会员消费信息不存在</h2>
	<%}else{ %>
	  <tr>
	  		<td>消费id</td>
	   		<td>商品编号</td>
	   		<td>商品名称</td>
	   		<td>商品价格</td>
	   		<td>实收金额</td>
	   		<td>消费人</td>
	   </tr>
   <%
   
   	Iterator<Consume> iterator = consumes.iterator();
   	while(iterator.hasNext()){
   		Consume consume= iterator.next();
   		int ConsumeId = consume.getConsumeId();
   	%>
   	
   		<tr>
   		<td><%=ConsumeId %></td>
   		<td><%=consume.getCommodityId() %></td>
   		<td><%=consume.getCommodityName() %></td>
   		<td><%=consume.getPrice() %></td>
   		<td><%=consume.getPracticePrice()%></td>
   		<td><%=consume.getName() %></td>
   		</tr>
   	<%
   	}	}
    %>
 	
    </table>
    </div>
     
     
  </body>
</html>
