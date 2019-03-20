<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>用户登录</title>
   <!-- <link href="login.css" type="text/css" rel="stylesheet"> --> 
    <style>
    *{
    font: 13px/1.5 '寰蒋闆呴粦', Verdana, Helvetica, Arial, sans-serif;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -box-sizing: border-box;
    padding:0;
    margin:0;
    list-style:none;
    box-sizing: border-box;
}

body,html{
    height:100%;
    overflow:hidden;
}
body{
    background:url(http://www.17sucai.com/preview/397880/2016-10-08/%E8%93%9D%E8%89%B2%E7%B2%BE%E7%AE%80%E7%89%88%E5%90%8E%E5%8F%B0/images/web_login_bg.jpg) no-repeat center;
    background-size: cover;
}
a{
    color:#27A9E3;
    text-decoration:none;
    cursor:pointer;
}
.login{
    margin: 150px auto 0 auto;
    min-height: 420px;
    max-width: 420px;
    padding: 40px;
    background-color: #ffffff;
    margin-left: auto;
    margin-right: auto;
    border-radius: 4px;
    /* overflow-x: hidden; */
    box-sizing: border-box;
}
a.logo{
    display: block;
    height: 58px;
    width: 167px;
    margin: 0 auto 30px auto;
    background-size: 167px 42px;
}
.message {
    margin: 10px 0 0 -58px;
    padding: 18px 10px 18px 60px;
    background: #27A9E3;
    position: relative;
    color: #fff;
    font-size: 16px;
}
#interval {
    background: url(http://www.17sucai.com/preview/397880/2016-10-08/%E8%93%9D%E8%89%B2%E7%B2%BE%E7%AE%80%E7%89%88%E5%90%8E%E5%8F%B0/images/aiwrap.png);
    width: 18px;
    height: 10px;
    margin: 0 0 20px -58px;
    position: relative;
}

input[type=text],
input[type=file],
input[type=password],
input[type=email], select {
    border: 1px solid #DCDEE0;
    vertical-align: middle;
    border-radius: 3px;
    height: 50px;
    padding: 0px 16px;
    font-size: 14px;
    color: #555555;
    outline:none;
    width:100%;
}
input[type=text]:focus,
input[type=file]:focus,
input[type=password]:focus,
input[type=email]:focus, select:focus {
    border: 1px solid #27A9E3;
}


.login .button{
    display: inline-block;
    vertical-align: middle;
    padding: 12px 24px;
    margin: 0px;
    font-size: 18px;
    line-height: 24px;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    color: #ffffff;
    background-color: #27A9E3;
    border-radius: 3px;
    border: none;
    -webkit-appearance: none;
    outline:none;
    width:100%;
}
hr.hr15 {
    height: 15px;
    border: none;
    margin: 0px;
    padding: 0px;
    width: 100%;
}
hr.hr20 {
    height: 20px;
    border: none;
    margin: 0px;
    padding: 0px;
    width: 100%;
}

.copyright{
    font-size:14px;
    color:rgba(255,255,255,0.85);
    display:block;
    position:absolute;
    bottom:15px;
    right:15px;
}
    </style>
    <script type="text/javascript">
    window.onload=function(){
		var login = document.getElementById("login");
		login.onclick=function(){
			if(document.getElementById("user_name").value.length<=0){
				alert("请填写用户名");
				document.getElementById("user_name").focus();
				return false;
			}
			
			if(document.getElementById("password").value.length<=0){
				alert("请填写密码");
				document.getElementById("password").focus();
				return false;
			}
			
			document.getElementById("form1").submit();
			
		};
		var register = document.getElementById("register");
		register.onclick=function(){
			window.location.href = '${pageContext.request.contextPath }/jsp/register.jsp';
			return false;
		};
		
	};
    </script>
</head>
<body>


<div class="login">
    <div class="message">用户登录</div>
    <div id="interval"></div>
    <form action="${pageContext.request.contextPath }/user/login" name="login" method="post" id="form1">
        <input name="user_name" placeholder="用户名" required="" type="text" id="user_name">
        <hr class="hr15">
        <input name="password" placeholder="密码" required="" type="password" id="password">
        <hr class="hr15">
        <font color="red" size="3sp">
          
        </font>
        <button class="button" style="width:100%; margin-top: 20px;" type="button" id="login">用户登录</button>
        <button class="button" style="width:100%; margin-top: 20px" type="button" id="register">注册</button>
        <hr class="hr20">
    </form>
</div>
</body>
</html>


