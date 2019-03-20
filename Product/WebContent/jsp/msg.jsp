<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/js/bootstrap.min.css">
	
    <title>接单状态提示</title> 
  </head>
  
  <body>
  <div class="jumbotron">
	<div style="text-align:center">

<img src="http://hbimg.b0.upaiyun.com/69e3dd6536bee29b18d22966a5ac6d642554893415dfe-KkB4Uh" alt=""/> 

<br>
<font size="18">
 <p> ${message }</p> 
 </font>
</div>
</div>

  
  </body>
</html>
	
