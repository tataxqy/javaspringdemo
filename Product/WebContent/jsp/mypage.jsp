<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的求助信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/jsp/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/products_page_style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/button.css">
    

</head>
<body>
<div class="products-preview">
    <header class="main-header">
        <h1 class="title">我的求助信息</h1>
        
    </header>

    <div class="products-builder">
        <ul>
            <li class="build">
                <section class="products-content">
               
                    <ul class="products-list">
                     <c:forEach var="help" items="${data.list}">
                        <li>
                            <pre ><xmp>${help.title }</xmp></pre>
                            <br> 
                   
                            <pre >截止日期<xmp>${help.time }</xmp></pre>
                            <br>
                            <img src="${pageContext.request.contextPath }/help/download?fileName=${help.path } "  height="200dp" width="200dp"/><br>
                             <pre >
                             <c:if test="${help.type==0 }">
    	                     <p class="button button-pill button-primary">还没有人接单噢</p>
    	
    	                     </c:if>
                             <c:if test="${help.type==1 }">
    	                     <p class="button button-pill button-primary">已接单</p>
    	                     </c:if>
                            
                            </pre>
                            <br>
                           </li>
                        </c:forEach>
                        
                    </ul>
                </section>
           
            </li>
        </ul>
    </div>
    
     <c:if test="${ data!=null}">
    	<div style='width:800px;margin:0 auto;'>
			<div id='kkpager'>
			<div>
			<span class='pageBtnWrap'  style='position: absolute; right:160px;'><a href='${pageContext.request.contextPath }/help/findHelpMy?pageIndex=1' title='首页'>首页</a>
			<a href='${pageContext.request.contextPath }/help/findHelpMy?pageIndex=${data.prePage}' title='上一页'>上一页</a>
			<a href='${pageContext.request.contextPath }/help/findHelpMy?pageIndex=${data.nextPage}' title='下一页'>下一页</a>
			<a href='${pageContext.request.contextPath }/help/findHelpMy?pageIndex=${data.totalPageCount}' title='尾页'>尾页</a></span>
			<span class='infoTextAndGoPageBtnWrap' style='position: absolute; right:20px;'>
			<span class='totalText'>当前第
			<span class='currPageNum'>${data.pageIndex}</span>页
			<span class='totalInfoSplitStr'>/</span>共
			<span class='totalPageNum'>${data.totalPageCount}</span>页</span>
			</span>
			</div>
			<div style='clear:both;'>
			</div>
			</div>
			</div>
    	
    	</c:if>
</div>

</body>
</html>