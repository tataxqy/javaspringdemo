<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>首页</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/jsp/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath }/jsp/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="${pageContext.request.contextPath }/jsp/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/jsp/css/creative.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" >关于我们</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">查查天气</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">校园帮帮</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath }/user/loginout.action">注销</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>关于我们</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">在这里，你可以畅所欲言，发布校园闲置和求助！</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">更多</a>
          </div>
        </div>
      </div>
    </header>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <hr class="light my-4">
            <p class="text-faded mb-4">今天冷不冷？适不适合出门拿快递？查一下就知道</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="${pageContext.request.contextPath }/jsp/weather.jsp">查查天气</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">校园帮帮</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
           <a href="${pageContext.request.contextPath }/help/findHelp">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-gem text-primary mb-3 sr-icon-1"></i>
              <h3 class="mb-3">校园求助</h3>
              <p class="text-muted mb-0">在这里查看求助信息！</p>
            </div>
             </a>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
          <a href="${pageContext.request.contextPath }/jsp/release.jsp">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-paper-plane text-primary mb-3 sr-icon-2"></i>
              <h3 class="mb-3">发布</h3>
              <p class="text-muted mb-0">发布你的求助！</p>
            </div>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
           <a href="${pageContext.request.contextPath }/help/findHelpOrder">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-code text-primary mb-3 sr-icon-3"></i>
              <h3 class="mb-3">已接订单</h3>
              <p class="text-muted mb-0">查询自己接的订单.</p>
            </div>
             </a>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <a href="${pageContext.request.contextPath }/help/findHelpMy">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-heart text-primary mb-3 sr-icon-4"></i>
              <h3 class="mb-3">我的求助</h3>
              <p class="text-muted mb-0">查询你发布的求助信息!</p>
            </div>
             </a>
          </div>
        </div>
      </div>
    </section>

  


    

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath }/jsp/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/jsp/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath }/jsp/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath }/jsp/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="${pageContext.request.contextPath }/jsp/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath }/jsp/js/creative.min.js"></script>

  </body>

</html>
