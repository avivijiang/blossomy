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
    th.action="<%=path%>/servlet/UserRegisterAction";
		th.submit();

	}
</script>
</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="welcome--register"
		style="text-align:center;margin-top:75px">
		<div class="register register_pass">
			<div class="signin_tit">注册</div>
			<form action="" name="form1" method="post"
				enctype="application/x-www-form-urlencoded;charset=UTF-8">
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248307391179.png"
						style="left:12px" alt="" class="register_nav_img"> <input
						type="text" placeholder="请输入注册用户名" name="username" id="username"
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
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="password"
						name="confirmpswd" placeholder="再次确认密码" id="comfirmpswd"
						maxlength="16" class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					性别： <input type="radio" name="sex" value="男"/>男 
					<input type="radio" checked="checked" name="sex" value="女"/>女
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="text"
						name="tel" placeholder="输入手机号码" id="tel"
						maxlength="16" class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="email"
						name="email" placeholder="输入邮箱" id="email" maxlength="16"
						class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="text"
						name="address" placeholder="输入收货地址" id="address" maxlength="16"
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
			
		</div>
	</div>
</body>
</html>
