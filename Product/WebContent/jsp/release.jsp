<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>发布</title>
<meta name="description"
	content="MSUI: Build mobile apps with simple HTML, CSS, and JS components.">
<meta name="author" content="阿里巴巴国际UED前端">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="/favicon.ico">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<!-- Google Web Fonts -->

<link rel="stylesheet"
	href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
<link rel="stylesheet"
	href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">

<link rel="apple-touch-icon-precomposed"
	href="/assets/img/apple-touch-icon-114x114.png">
<script>

</script>
</head>
<body>
	<div class="page-group">
	  <form name = "loginForm"  id ="loginForm"action="${pageContext.request.contextPath }/help/add"  method="post" enctype="multipart/form-data" >
		<div id="page-label-input" class="page">
			<header class="bar bar-nav">
				<a class="button button-link button-nav pull-left back"
					href="${pageContext.request.contextPath }/jsp/index.jsp"> <span class="icon icon-left"></span> 返回
				</a>
				<h1 class="title">发布求助</h1>
			</header>
			<div class="content">
				<div class="list-block">
					<ul>
						<!-- Text inputs -->
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">求助标题</div>
									<div class="item-input">
										<input type="text" id="title" name="help.title" placeholder="请输入求助标题">
									</div>
								</div>
							</div>
						</li>
						<!-- 具体内容 text -->
						<li class="align-top">
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">具体内容</div>
									<div class="item-input">
										<textarea id="content" name="help.content" placeholder="请输入求助的具体内容"></textarea>
									</div>
								</div>
							</div>
						</li>
						<!-- 商铺分类 下拉列表 -->
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">截止时间</div>
									<div class="item-input">
										<input type="date" id="ddl" name="help.time"/>
									</div>
								</div>
							</div>
						</li>

						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">报酬金额</div>
									<div class="item-input">
										<input type="text" id="pay" name="help.pay" placeholder="请输入报酬金额">
									</div>
								</div>
							</div>
						</li>

						<!-- 缩略图 上传控件 -->
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">上传图片</div>
									<div class="item-input">
										<input type="file" id="img" name="file">
									</div>
								</div>
							</div>
						</li>

						<!-- 验证码 ka -->
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">验证码</div>
									<input type="text" id="j_captcha" name="checkcode" placeholder="验证码">
									<div class="item-input">
										<img id="captcha_img" alt="点击更换" title="点击更换"
											onclick="changeVerifyCode()" src="${pageContext.request.contextPath }/help/identifyingCode" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="content-block">
					<div class="row">
						<div class="col-50">
							<a href="${pageContext.request.contextPath }/jsp/index.jsp" class="button button-big button-fill button-danger">返回</a>
						</div>
						<div class="col-50">
							<input type="button" value="提交" onclick="validate()" class="button button-big button-fill button-success">
						</div>
					</div>
				</div>
			</div>
		</div>
  </form>
	</div>
	
	<script type='text/javascript'
		src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
	<script type='text/javascript'
		src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
	<script type='text/javascript'
		src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
	<script type='text/javascript' src='../resources/js/common/common.js'
		charset='utf-8'></script>
	<script type='text/javascript'
		src='../resources/js/shop/shopoperation.js' charset='utf-8'></script>
</body>
 <script src="${pageContext.request.contextPath }/jsp/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
function changeVerifyCode(){
    var time=new Date().getTime();
   $("#captcha_img").attr('src',"${pageContext.request.contextPath }/help/identifyingCode?d="+time)
}
</script>

<script >
        var loginForm=document.getElementById("loginForm");
        function validate()
        {
        	if(checkNull(document.getElementById("title").value))
            {
                alert("标题不能为空！");
                document.getElementById("title").focus();
                return false;
            }else if(checkNull(document.getElementById("content").value))
            {
                alert("内容不能为空！");
                document.getElementById("content").focus();
                return false;
            }else if(checkNull(document.getElementById("ddl").value))
            {
                alert("截止日期不能为空！");
                document.getElementById("ddl").focus();
                return false;
            }else if(checkNull(document.getElementById("pay").value))
            {
                alert("报酬金额不能为空！");
                document.getElementById(pay).value.focus();
                return false;
            }else if(checkNull(document.getElementById("img").value))
            	{
            	 alert("详情图片不能为空！");
            	 return false;
            	}
            else{
            	loginForm.submit();
            	return true;
            }
        	                       
        }

            function checkNull(data){
                var reg=/^\s*$/;//0或多个空字符串
                return (reg.test(data));
            }

        </script>

</html>

