<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SUI Mobile Demo</title>
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

</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String pid=request.getParameter("pid");
	//String qoh1=request.getParameter("qoh");
	//int qoh=Integer.valueOf(qoh1).intValue();
%>
<form action="buy.jsp?pid=<%=pid%>" method="post">
	<div class="page-group">
		<div id="page-label-input" class="page">
			<header class="bar bar-nav">
				<a class="button button-link button-nav pull-left back"
					href="/demos/form"> <span class="icon icon-left"></span> 返回
				</a>
				<h1 class="title">购买信息</h1>
			</header>
			<div class="content">
				<div class="list-block">
					<ul>
						<li>
							<div class="item-content">
								<div class="item-media"><i class="icon icon-form-gender"></i></div>
								<div class="item-inner">
									<div class="item-title label">cid</div>
									<div class="item-input">
										<select name="cid">
											<option>c000</option>
											<option>c001</option>
											<option>c002</option>
											<option>c003</option>
											<option>c004</option>
											<option>c005</option>
										</select>
									</div>
								</div>
							</div>
						</li>


						</li>
						<!-- Text inputs -->
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">purid</div>
									<div class="item-input">
										<input type="text" id="purid" name="purid" placeholder="请输入purid">
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item-content">
								<div class="item-media"><i class="icon icon-form-gender"></i></div>
								<div class="item-inner">
									<div class="item-title label">eid</div>
									<div class="item-input">
										<select name="eid">
											<option>e00</option>
											<option>e01</option>
											<option>e02</option>
											<option>e03</option>
											<option>e04</option>
											<option>e05</option>
										</select>
									</div>
								</div>
							</div>
						</li>

						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title label">qty</div>
									<div class="item-input">
										<input type="text" id="qty"name="qty" placeholder="请输入购买数量">
									</div>
								</div>
							</div>
						</li>



					</ul>
				</div>
				<div class="content-block">
					<div class="row">
						<div class="col-50">
							<a href="" class="button button-big button-fill button-danger">返回</a>
						</div>
						<div class="col-50">
							<input type="submit" value ="确定购买" class="button button-big button-fill button-success"
								id="submit"></>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</form>
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
</html>
