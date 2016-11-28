<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.product.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	//获取 session 中的 username;  
	String username = (String) session.getAttribute("username");
	String pswd= (String) session.getAttribute("pswd");
	String sex = (String) session.getAttribute("sex");
	String tel = (String) session.getAttribute("tel");
	String email= (String) session.getAttribute("email");
	String address = (String) session.getAttribute("address");
	
	String userName_existence = (String)session.getAttribute("userName_existence"); 		
	session.setAttribute("userName_existence", "false");

//获取从 servlet ProductActiion 中 传递的参数(数据库查询的结果)  
List<Map<String,Object>> list =(List<Map<String,Object>>) request.getAttribute("listProduct");  
// 获取 分页对象  
DividePage dividePage = (DividePage) request.getAttribute("dividePage");  
// 获取查询的关键词  
String productName = (String) request.getAttribute("productName");  
if(list==null){  
    //第一次进 main.jsp页面，默认加载所有的产品  
    ProductService service = new ProductDao();  
    int totalRecord = service.getItemCount("");  
    dividePage = new DividePage(10,totalRecord,1);  
    int start = dividePage.fromIndex();  
    int end = dividePage.toIndex();  
    list = service.listProduct("", start, end);  
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>未闻花名</title>
<link rel="Shortcut Icon" href="image/blogo.ico" />
<link href="css/bootstrap/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/newtop.css">
<link rel="stylesheet" href="css/re.css">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<script src="js/jQuery/jquery-3.1.1.min.js"></script>
<script src="js/jQuery/jquery-1.11.1.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript">  
window.onload= function(){

	var userName_existence = <%=userName_existence%>;
	if(userName_existence!=""&&userName_existence==true){
		alert("用户已存在!");
	}
}

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
 th.action = "<%=path%>/servlet/userLoginAction";
		th.submit();
	
}

	
	function showLogin() {
		var sl = document.getElementById('loginform');
		if (sl.style.display == "none") {
			sl.style.display = "block";
		} else {
			sl.style.display = "none"
		}
	}
 	function register(){  
      
    var th = document.registerform;  
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
function showRegi() {
		var sl = document.getElementById('regiform');
		if (sl.style.display == "none") {
			sl.style.display = "block";
		} else {
			sl.style.display = "none"
		}
	}
</script>
<style>
.cd-signin {
	background: none;
	border: none;
	margin: 0;
}

#loginform {
	position: absolute;
	z-index: 1000;
	right: 0;
}
#regiform {
	position: absolute;
	z-index: 1000;
	right: 0;
}
</style>
</head>

<body>
	<header>
	<div class="head"
		style="left:right;background:#f5f5f5;height:30px;width:100%;inline-block:30px;border:0px">
		<ul>
			<li class="dropdown"
				style="position:relative;left:50px;line-height:30px"><a
				href="#" class="dropdown-toggle" data-toggle="dropdown">南昌<span
					class="caret"></span> </a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#feature-tab" data-tab="tab-chrome">请选择收货地址</a>
					</li>
					<li role="presentation" class="divider"></li>
					<li><a href="#feature-tab" data-tab="tab-chrome">南昌</a>
					</li>
					<li><a href="#feature-tab" data-tab="tab-firefox">北京</a>
					</li>
					<li><a href="#feature-tab" data-tab="tab-safari">上海</a>
					</li>
					<li><a href="#feature-tab" data-tab="tab-safari">广州</a>
					</li>
				</ul></li>
			<li class="right"
				style="position: absolute;left:1200px;right: 0;height:30px;line-height:30px">
				<a href="personal.jsp">
					<%
						if (username != null) {
							/*    out.println("<a href=#  style='margin-right:5px;'>我的订单|</a>"); */
							out.println(username);
							out.println("<a href=exit.jsp style='margin-left:5px;'>|退出</a>");
						} else {
					%> </a>
				<button class="cd-signin" onclick="showLogin()">登录</button> <span
				class="h_line">|</span>
				<button class="cd-signin" onclick="showRegi()">注册</button>
				<%
					}
				%>
			
	</div>
	<div id="blossomylogo">
		<img alt="Brand" src="image/logo.jpg"
			style="margin-left:40px;height:100px">
		<div class="bg-div">

			<%-- <form class="form-inline" name="form2" method="post" role="form" >
							<div class="form-group has-success has-feedback" style="position:absolute;left:850px;top:165px">
                        <label class="control-label" for="inputSuccess2"  style="padding-right:25px">产品查询</label>
                        <input type="text" class="form-control" name="proname"   id="inputSuccess2" 	value="<%=productName != null ? productName : ""%>">
                        <span class="glyphicon glyphicon-search"  style="left:-25px" onclick="searchProduct()"></span>
                          </div>
                        </form> --%>
			<form class="form-inline" name="formsearch" method="post" role="form">
				<input type="text" placeholder="   玫瑰" class="search-input-text-my"
					value="<%=productName != null ? productName : ""%>" /> <input
					type="submit" class="search-input-button" value="搜索"
					onclick="searchProduct()" />
			</form>
		</div>
	</div>
	<div class="shopcar">
		<div class="shopcar-logo">
			<img src="image/gocar.png" alt=""> <span><a
				href="shopCar.jsp">购物车</a> </span> <img src="image/quan.png" alt="">
		</div>
	</div>
	</div>


	</header>
	<hr>
	<nav class="navbar navbar-inverse" role="navigation"
		style="margin-bottom:0;border-radius: 0px;height:40px;border:0px">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="navbar-collapse collapse" style="height:40px">
			<ul class="nav navbar-nav mynav">
				<li class=""><a href="index.jsp">首页</a>
				</li>
				<li class=""><a href="testdisplay.jsp">鲜花</a>
				</li>
				<li class=""><a href="#">永生花</a>
				</li>
				<li class=""><a href="#">礼盒</a>
				</li>
				<li class=""><a href="#">生日推荐</a>
				</li>
				<li><a href="#" data-toggle="modal" data-target="#about-modal">关于我们</a>
				</li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="welcome--register"
		style="margin-right：65px;margin-top:0px;display:none" id="loginform">
		<form name="form2" action="" method="post">
			<div class="register register_pass">

				<div class="signin_tit">登录</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248307391179.png"
						style="left:12px" alt="" class="register_nav_img"> <input
						type="text" placeholder="请输入手机号" name="username" id="username"
						maxlength="30" class="register_text text_p">
					<div class="reminder validate">&nbsp;</div>
				</div>
				<div class="register_nav">
					<img
						src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> <input type="password"
						name="pswd" placeholder="请输入密码" id="pswd" maxlength="16"
						class="register_password">
					<div class="reminder validate">&nbsp;</div>
				</div>
				<div class="signin_a">
					<a href="register.jsp" class="signin_zc">快速注册</a> <a
						href="/pcEntrance/tofindpass" class="signin_forget">忘记密码？</a>
				</div>
				<button type="button" id="login-btn-submit" class="signin_button"
					onclick="login()">登录</button>
				<div class="register_bottom">blossomy支持门店城市当日达服务!</div>

			</div>
		</form>
	</div>
	<div class="welcome--register" style="margin-right：65px;margin-top:0px;display:none" id="regiform">
		<form action="" name="registerform" method="post" enctype="application/x-www-form-urlencoded;charset=UTF-8">
			<div class="register register_pass" style="height:650px">
				<div class="signin_tit">注册</div>
				  <div class="register_nav">
					<i class="fa fa-user" aria-hidden="true" style="color:#aeaba9;position:absolute;left: 10px;top:16px;"></i>
					<input type="email" name="username" placeholder="输入用户名" id="username" maxlength="16" class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<img  src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png"
						alt="" class="register_nav_img"> 
						<input type="password" name="pswd" placeholder="请输入密码" id="pswd" maxlength="16" class="register_password">
				
				</div>
				<div class="register_nav">
					<img src="http://www.roseonly.com.cn/upload/syspic_new/14682248238795325.png" alt="" class="register_nav_img"> <input type="password"
						name="confirmpswd" placeholder="再次确认密码" id="comfirmpswd" maxlength="16" class="register_text text_p">
					<div class="reminder validate"></div>
				</div>
				<div style="height:45px;width:290px;border:1px solid #b3b3b3;background:#ffffff;margin:15 60 15 55">
					<div class="register_nav">
						<div style="margin-left:30px;margin-top:10px;margin-left:-155px;color:#aeaba9">
							<i class="fa fa-venus-mars"
								style="margin-right:13px;margin-left:20px"></i> <input
								type="radio" name="sex" value="男" />男 <input type="radio"
								checked="checked" name="sex" value="女"/ >女
							
						</div>
					</div>
				</div>
				<div class="register_nav"> <img src="image/phoneicon.png" alt="" class="register_nav_img">
					<input type="text" name="tel" placeholder="输入手机号码" id="tel"
						maxlength="16" class="register_password">
					
				</div>
				<div class="register_nav">
					<i class="fa fa-envelope-o" aria-hidden="true"
						style="color:#aeaba9;position:absolute;left: 10px;top:16px;"></i>
					<input type="email" name="email" placeholder="输入邮箱" id="email"
						maxlength="16" class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="register_nav">
					<i class="fa fa-location-arrow" aria-hidden="true"
						style="color:#aeaba9;position:absolute;left: 10px;top:16px;"></i>
					<input type="text" name="address" placeholder="输入收货地址" id="address"
						maxlength="16" class="register_password">
					<div class="reminder validate"></div>
				</div>
				<div class="signin_a">
					<a href="index.jsp" class="signin_zc">已有账号</a> <a
						href="/pcEntrance/tofindpass" class="signin_forget">忘记密码？</a>
				</div>
				<button type="button" id="register-btn-submit" class="signin_button" onclick="register()">注册</button>
		</form>
</div>
	</div>
	



</body>

</html>