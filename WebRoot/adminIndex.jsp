<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String userName_existence = (String)session.getAttribute("userName_existence"); 		
	session.setAttribute("userName_existence", "false");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<base href="<%=basePath%>">
<title>未闻花名</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->
<link rel="stylesheet" href="css/re.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/welcometop.css" >
<script type="text/javascript">  
function login(){  
    var th = document.form2;  
    if(th.username.value==""){  
        alert("用户名不能为空！");  
        th.username.focus();  
        return;  
    }  
    if(th.pswd.value==""){  
        alert("密码不能为空！");  
        th.pswd.focus();  
        return;  
    }  
 th.action = "<%=path%>/servlet/LoginAction";
		th.submit();
	}
	window.onload= function(){

	var userName_existence = <%=userName_existence%>;
	if(userName_existence!=""&&userName_existence==true){
		alert("用户已存在!");
	}
}
</script>

</head>

<body>
	<header>
	<div class="welcome-container">
		<img width="200" height="80" class="logo" src="image/logo.jpg" alt="">
		</div>
	</header>
	<hr>
	<div class="welcome-inner">
		<a target="_blank" href="#"> <img src="image/welcome.src" alt=""
			class="banner"> </a>
	</div>
		<form name="form2" action="" method="post">
	<div class="welcome--register"
		style="margin-right:100px;margin-top:75px">
		<div class="register register_pass">
		
				<div class="signin_tit">登录</div>
				<div class="register_nav">
					<img
						src="image/phoneicon.png"
						style="left:12px" alt="" class="register_nav_img"> <input
						type="text" placeholder="请输入手机号" name="username" id="username"
						maxlength="30" class="register_text text_p" required>
					<div class="reminder validate">&nbsp;</div>
				</div>
				<div class="register_nav">
					<img
						src="image/mimaicon.png"
						alt="" class="register_nav_img"> <input type="password"
						name="pswd" placeholder="请输入密码" id="pswd" maxlength="16"
						class="register_password">
					<div class="reminder validate">&nbsp;</div>
				</div>
				<div class="signin_a" style="margin-left:60px">
					<span><input type="checkbox" style="line-height:10px"><span style="margin-left:10px;margin-top:2px">记住密码</span> </label><span>
				</div>
				<button type="button" id="login-btn-submit" class="signin_button"
					onclick="login()">登录</button>
				<div class="register_bottom">blossomy支持门店城市当日达服务!</div>
				
		</div>
	</div>
	
	</form>


</body>
</html>
