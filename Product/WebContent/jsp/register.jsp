<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册</title>
    <meta name="description" content="MSUI: Build mobile apps with simple HTML, CSS, and JS components.">
    <meta name="author" content="阿里巴巴国际UED前端">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <!-- Google Web Fonts -->

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">

    <link rel="apple-touch-icon-precomposed" href="/assets/img/apple-touch-icon-114x114.png">

    <script>
        //ga
    </script>
    <script>
    function checkEmail(field, alertText){
    	  with(field){
    	    apos = value.indexOf("@");
    	    dotPos = value.indexOf(".");
    	    if(apos<1 || dotPos-apos<2){
    	      alert(alertText);
    	      return false;
    	    }else{
    	      return true;
    	    }
    	  }
    	}

    
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?ba76f8230db5f616edc89ce066670710";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        

        window.onload=function(){
    		var su = document.getElementById("su");
    		su.onclick=function(){
    			
    			if(checkNull(document.getElementById("user_name").value))
                {
                    alert("姓名不能为空！");
                    document.getElementById("user_name").focus();
                    return false;
                }else if(checkNull(document.getElementById("password").value))
                {
                    alert("密码不能为空！");
                    document.getElementById("password").focus();
                    return false;
                }else if(checkNull(document.getElementById("againpassword").value))
                {
                    alert("确认密码不能为空！");
                    document.getElementById("againpassword").focus();
                    return false;
                    
                }else if(document.getElementById("againpassword").value!=document.getElementById("password").value)
                {
                	alert("两次密码输入不正确！");
                	return false;
                   
                }
                else if(checkNull(document.getElementById("email").value))
                {
                    alert("邮箱不能为空！");
                    document.getElementById("email").value.focus();
                    return false;
                }else if(!checkEmail(email,"不是可用的邮箱地址！"))
                {
                	      email.focus();
                	      return false;
                }
                else if(checkNull(document.getElementById("wechat").value))
                {
                    alert("微信不能为空！");
                    document.getElementById("wechat").value.focus();
                    return false;
                }else{
                	document.getElementById("form1").submit();
        			return false;
                }
    			
    			
    		};
    		
    		
    	};
    	
    	function validate()
        {
        	if(checkNull(document.getElementById("user_name").value))
            {
                alert("姓名不能为空！");
                document.getElementById("user_name").focus();
                return false;
            }else if(checkNull(document.getElementById("password").value))
            {
                alert("密码不能为空！");
                document.getElementById("password").focus();
                return false;
            }else if(checkNull(document.getElementById("againpassword").value))
            {
                alert("确认密码不能为空！");
                document.getElementById("againpassword").focus();
                return false;
                
            }else if(document.getElementById("againpassword").value!=document.getElementById("password").value)
            {
            	alert("两次密码输入不正确！");
            	return false;
               
            }
            else if(checkNull(document.getElementById("email").value))
            {
                alert("邮箱不能为空！");
                document.getElementById("email").value.focus();
                return false;
            } else if(checkNull(document.getElementById("wechat").value))
            {
                alert("微信不能为空！");
                document.getElementById("wechat").value.focus();
                return false;
            }
            else{
            	loginFrom.submit();
            }
        	                       
        }

            function checkNull(data){
                var reg=/^\s*$/;//0或多个空字符串
                return (reg.test(data));
            }
    	
    	
    </script>

</head>
<body>
<div class="page-group">
    <div id="page-layout" class="page">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left back" href="/demos/form">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title">用户注册</h1>
        </header>
         <form action="${pageContext.request.contextPath }/user/add" name="login" method="post" id="form1">
        <div class="content">
            <div class="list-block">
                <ul>
                    <!-- Text inputs -->
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">姓名</div>
                                <div class="item-input">
                                    <input type="text" placeholder="请输入姓名" id="user_name" name="user_name">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-password"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">密码</div>
                                <div class="item-input">
                                    <input type="password" placeholder="请输入密码" class="" id="password" name="password">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-password"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">确认密码</div>
                                <div class="item-input">
                                    <input type="password" placeholder="再次确认密码" class="" id="againpassword" name="againpassword">
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-email"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">联系邮箱</div>
                                <div class="item-input">
                                    <input type="email" placeholder="联系邮箱" id="email" name="email">
                                </div>
                            </div>
                        </div>
                    </li>
  
                    
                      <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-name"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">微信</div>
                                <div class="item-input">
                                    <input type="text" placeholder="微信" id="wechat" name="wechat">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-media"><i class="icon icon-form-gender"></i></div>
                            <div class="item-inner">
                                <div class="item-title label">性别</div>
                                <div class="item-input">
                                    <select name="gender">
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </li>
            
                  
                </ul>
            </div>
            <div class="content-block">
                <div class="row">
                    <div class="col-50"><a href="#" class="button button-big button-fill button-danger" >取消</a></div>
                    <div class="col-50"><a href="#" class="button button-big button-fill button-success" id="su">提交</a></div>
                </div>
            </div>
        </div>
        </form>
    </div>

</div>

<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
</body>
</html>