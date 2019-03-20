<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Details</title>
    <!-- Bootstrap core CSS -->
    <%-- c:url 标签的作用：
    	1.自动在URL的前面加上context path
    	2.如果客户端禁用了Cookie，自动使用URL重写技术，把jsessionid放到url的分号后面
    	/taobao/resources/bootstrap/css/bootstrap.css;jsessionid=xxxxx
     --%>
    <link href=" ${pageContext.request.contextPath }/jsp/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/jsp/resources/css/taobao.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/css/button.css">

</head>

<body>

<!-- 横幅导航条开始 -->
<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand">商品信息</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="search.jsp?op=4"> 返回</a></li>
            </ul>
        </div>

    </div>
</nav>
<!-- 横幅导航条结束 -->

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

         <%
             request.setCharacterEncoding("UTF-8");
             String i =request.getParameter("i");
             String pname=request.getParameter("pname");
             String qoh=request.getParameter("qoh");
             String op=request.getParameter("original_price");
             String dis=request.getParameter("discnt_rate");
             String pid=request.getParameter("pid");
             double dis1=Double.valueOf(dis.toString());
             double op1=Double.valueOf(op.toString());
             double showprice=op1*(1-dis1);
         %>
        <!-- 内容主体开始 -->
        <div class="col-xs-12 col-sm-12">
            <div class="col-xs-12 col-sm-6">
                <img alt="商品的图片" src="${pageContext.request.contextPath }/jsp/resources/images/article/<%=i%>.jpg">
            </div>
            <div class="col-xs-12 col-sm-6">
                <p><%=pname%></p>

                <p>
                    <span class="price"><%=op%></span>

                        <span style="color: red">折扣： (<%=showprice%>)</span>


                </p>
                <p>
                    库存量：<span id="storage"><%=qoh%></span>
                </p>
                <p>
                <form method="post" action="release.jsp?pid=<%=pid%>?qoh=<%=qoh%>">
                    <input type="submit" value="购买" class="button button-pill button-primary">
                </form>

                <form method="get" action="list">
                    <input type="hidden" name="method" value="getAll" />
                    <!-- 商品数量 -->

                </form>
                </p>

            </div>
            <div class="col-xs-12">
                <fieldset>
                    <legend>介绍</legend>
                    <%=pname%>
                </fieldset>
            </div>
        </div>
    </div>
    <hr>
    <footer>
        <p>&copy; 版权所有</p>
    </footer>
</div>
<script src="${pageContext.request.contextPath }/resources/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/taobao.js"></script>
</body>
</html>