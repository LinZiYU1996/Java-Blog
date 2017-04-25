<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

java.util.Date currentTime = new java.util.Date();//得到当前系统时间

String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'write_article.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" type="text/css" href="dist/css/wangEditor.css">
	  <link rel="stylesheet" href="css/buttons.css">
  </head>
  
  <body>
   <h3>wangEditor test</h3>
  <form action="/Blog/blog/save_article"> 
   <input type="text" value="文章标题" name="title" style="border:none;width:500px; height:40px;"> 

	<textarea name="contents" id='textarea1' style='height:200px; max-height:400px; width:100%;'>
		
		
	</textarea>
	<input type="submit" value="提交" class="button button-royal button-giant">
	<input type="text" name="date"  id="today" value=<%=str_date1%> >
	
	<% String user=request.getParameter("user");%>
 	<input type="text" name="author"value=<%=user%>>
 	
 	
	</form>
	${author}

	<script type="text/javascript" src='dist/js/jquery-1.10.2.min.js'></script>
	<script type="text/javascript" src='dist/js/wangEditor.min.js'></script>
	<!--<script type="text/javascript" src='../src/js/wangEditor.js'></script>-->
	<script type="text/javascript">
		$(function(){
			var editor = $('#textarea1').wangEditor();
		});
	</script>
   
   
   
   
  </body>
</html>
