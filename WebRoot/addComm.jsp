<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addComm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="/Blog/blog/save_comm">
    
    评论内容<input name="contents" type="text">
    
    时间：<input name="date" type="text">
    
    
	<% String commenter=request.getParameter("commenter");%>
 	<% String becommenter=request.getParameter("be_commenter");%>
 	
   评论者：<input name="commenter" type="text" value=<%=commenter%>>
   被评论者<input name="be_commenter" type="text" value=<%=becommenter%>>
   <input type="submit" value="提交"> 
    </form>




  </body>
</html>
