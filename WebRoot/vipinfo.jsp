<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.jkxy.web.model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员个人信息</title>
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
    <h2 align="center">会员个人信息</h2>
	<div class="table1" align="center">
    <a href="entry.jsp"  ><font color="#000000">商品信息录入</font></a>
    <a href="<%=path %>/Commodity/getAllCommodityAction.action" ><font color="#000000">查询所有商品</font></a>
   	<a href="<%=path %>/consume/allConsumeAction.action" ><font color="#000000">所有VIP购物记录</font></a>
    <a href="<%=path %>/findVip.jsp" ><font color="#000000">VIP个人信息查询</font></a>
   	<a href="<%=path %>/login/QuitAction.action">退出</a>
   </div>
   

    <%
   			Vip vip =	(Vip)request.getAttribute("vip");
    		String vName = vip.getName();
    		int vipAge = vip.getAge();
    		Date joinTime = vip.getJoinTime();
    		int vipId = vip.getVipId();
     %>
      <div class="float">  
     <table class="table table-striped ">
	     <tr>
	    			<td>VIP姓名</td>
	    			<td>VIP年龄</td>
	    			<td>VIP加入时间</td>
	    			<td><a>消费情况</a></td>
	    			<td><a>是否修改</a></td>
	    			<td><a>是否删除</a></td>
	    </tr>
     	<tr>
    			<td><%=vName %></td>
    			<td><%=vipAge %></td>
    			<td><fmt:formatDate value="<%=joinTime %>" pattern="yyyy-MM-dd"/></td>
    			<td><a href="<%=path%>/Vip/getConsumeAction.action?vipId=<%=vipId%>">情况</a></td>
    			<td><a href="<%=path%>/vipupdate.jsp?vipId=<%=vipId %>">修改</a></td>
    			<td><a href="<%=path%>/Vip/deleteVipAction.action?vipId=<%=vipId%>">删除</a></td>
    		</tr>
    	</table>
    	</div>
  </body>
</html>
