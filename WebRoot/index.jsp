<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link type="text/css" rel="stylesheet" href="css\uikit.css">
        <link type="text/css" rel="stylesheet" href="css/tooltip.css">
        <link type="text/css" rel="stylesheet" href="css/search.css">
        <link type="text/css" rel="stylesheet" href="css\style.css">
       
  
        <script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
        <script src="js/uikit.min.js" type="text/javascript"></script>
        <script src="js/components/tooltip.min.js" type="text/javascript"></script>        
        <script src="js/components/search.js" type="text/javascript"></script>        



    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   
	
	
	
	
	
	
	
	
  </head>
  
  <body >


  
  <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" id="sea" href="/Blog/blog/getall"><input id="Id" type="button" >INDEX</input></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="login.jsp"><span ></span> 登录</a></li>
      <li><a href="register.jsp"><span ></span> 注册</a></li>
      <li><a href="write_article.jsp?user=${user}"><span class="glyphicon glyphicon-log-in"></span> 写文章</a></li>
    </ul>
  </div>
</nav>
















<div class="uk-grid" style="min-height:100%;">
   
 
    <div class="o-right uk-width-medium-7-10 ">
        <div class="o-container uk-width-medium-4-5">
            <!--768以下出现导航栏-->
            <nav class="o-medium-bar uk-navbar uk-visible-small">
                <a class="o-toggle uk-navbar-brand" href="#o-nav" data-uk-offcanvas><i class="uk-icon-bars"></i></a>
                <div class="uk-navbar-flip">
                    <div class="uk-navbar-content">
                        <form class="o-hidden-small uk-search" data-uk-search>
                            <input class="uk-search-field" type="search" placeholder="点此搜索">
                        </form>
                    </div>
                </div>
                
                <div class="uk-navbar-content uk-navbar-center uk-navbar-brand">仿制简书</div>
            </nav>
            <hr class="uk-visible-small" />
            <div class="o-main">
                
            <h1>${user}</h1>
            
		<c:if test="${!empty ars }">
				<c:forEach items="${ars}" var="as">
				${as.id}
				     <article class="uk-article">
                    <h1 class="uk-article-title"><a href="/Blog/blog/getarticle?id=${as.id}&user=${user}">标题:${as.title}</a></h1>
                    <p>${as.contents }</p>
                    <p class="o-meta uk-article-meta">
                        <a href="#">${as.author }</a><!--作者-->
                        <i class="o-icon uk-icon-calendar-o"></i>
                        <a href="#">2005年04月16日</a><!--日期归档-->
                        <i class="o-icon uk-icon-book"></i>
                        <a href="#">
                        <a href="#">博客日记</a><!--分类-->
                        <i class="o-icon uk-icon-tags"></i>
                        <a href="#">洛神赋</a>,
                        <a href="#">图片</a>,
                        <a href="#">凤梨</a><!--文章标签-->
                        <i class="o-icon uk-icon-comments-o"></i>
                        <a href="#">122</a><!--评论数-->
                    </p>
                    <hr class="uk-article-divider" />
                </article>
             
				

                  </c:forEach>
			</c:if>
    
                <ul class="uk-pagination">
                    <li class="uk-pagination-previous uk-disabled"><span><i class="uk-icon-angle-double-left"></i> 上一页</span></li>
                    <li class="uk-pagination-next"><a href="#">下一页 <i class="uk-icon-angle-double-right"></i></a></li>
                </ul>
                <hr class="uk-article-divider">
            </div>
            <footer class="uk-text-muted uk-text-small">
                <!--子导航菜单-->
                <ul class="o-meta uk-subnav uk-subnav-line ">
                    <li><a href="#">帮助中心</a></li>
                    <li><a href="#">投稿指南</a></li>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">网站统计</a></li>
                </ul>
                <p class="o-meta">&copy;2015 <a href="#">仿制简书</a> /  <a href="#">沪ICP备11018329号-5</a></p>
            </footer>
        </div>
    </div>
</div>  
        
<div id="o-search" class="uk-offcanvas">
                                <div class="uk-offcanvas-bar">
                                    <form class="uk-search">
                                        <input class="uk-search-field" type="search" placeholder="搜索...">
                                    </form>
                                </div>
                            </div>        
<div id="o-nav" class="uk-offcanvas">
    <div class="uk-offcanvas-bar">
        <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav>
            <li><a href="#">首页</a></li>
            <li><a href="">我的日记</a></li>
            <li class="uk-parent">
                <a href="#">UI 设计</a>
                <ul class="uk-nav-sub">
                    <li><a href="">交互理论</a></li>
                    <li><a href="">参考案例</a>
                        <ul>
                            <li><a href="">交互原型</a></li>
                            <li><a href="">优秀案例</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="uk-parent">
                <a href="#">Web 开发</a>
                <ul class="uk-nav-sub">
                    <li><a href="">HTML&amp;CSS</a></li>
                    <li><a href="">JavaScript</a></li>
                </ul>
            </li>
            <li><a href="#">我的日记</a></li>
        </ul>
    </div>
</div>
  
  
  
  </body>
</html>
