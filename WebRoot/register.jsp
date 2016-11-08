<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html;charset=UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册新用户</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->
<link rel="stylesheet" href="css/re.css">
<link rel="stylesheet" href="css/reset.css">

<style>
.welcome-container {
	width: 1180px;
	margin-right: auto;
	margin-left: auto;
	display: inline-block;
}

.welcome-img {
	position: absolute;
	left: 60px
}

.welcome-inner img {
	position: absolute;
	left: 80px;
	padding-top: 70px;
	height: 443px;
	width: 600px
}
</style>
<script type="text/javascript">  
function dosubmit(){  
      
    var th = document.form1;  
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
    th.action="<%=path%>/servlet/RegisterAction";
		th.submit();

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
	<div class="welcome--register"
		style="margin-right:100px;margin-top:75px">
		<div class="register register_pass">
			<div class="signin_tit">注册</div>
			<form action="" name="form1" method="post" enctype="application/x-www-form-urlencoded;charset=UTF-8">
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248307391179.png"
						style="left:12px" alt="" class="register_nav_img"> <input
						type="text" placeholder="请输入手机号" name="username" id="username"
						maxlength="30" class="register_text text_p">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="password"
						name="pswd" placeholder="请输入密码" id="pswd" maxlength="16"
						class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="signin_a">
					<a href="index.jsp" class="signin_zc">已有账号</a> <a
						href="/pcEntrance/tofindpass" class="signin_forget">忘记密码？</a>
				</div>
				<button type="button" id="login-btn-submit" class="signin_button"
					onclick="dosubmit()">注册</button>
			</form>
			<div class="register_bottom">blossomy支持门店城市当日达服务!</div>
		</div>
	</div>
</body>
</html>
