<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>error</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" media="all" href="css/defaults.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/system-menus.css" />
	<link type="text/css" rel="stylesheet" media="all" href="css/style.css" />
	
    <meta http-equiv='refresh' content='5;url=../login.jsp'>
    <script type='text/javascript'>
        var i=5;
        function getTime(){
            document.getElementById('num').innerHTML="<font color='red'>"+i+"</font>";
            i-=1;
            var x=setTimeout('getTime()',1000)
            if(i<=0){
                clearTimeout(x);
            }
        }
        window.onload=getTime;
    </script>
  </head>
  
  <body>
   登陆失败。
   <h2>注意!!页面将在<div id='num' style='display=inline;'>5</div>秒后跳转</h2>
  </body>
</html>
