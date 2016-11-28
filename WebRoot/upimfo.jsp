<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//获取 session 中的 username;  
	String id = (String) session.getAttribute("id");
	String username = (String) session.getAttribute("username");
	String pswd = (String) session.getAttribute("pswd");
	String sex = (String) session.getAttribute("sex");
	String tel = (String) session.getAttribute("tel");
	String email = (String) session.getAttribute("email");
	String address = (String) session.getAttribute("address");
%>
<%-- <%
		String rand = session.getAttribute("code").toString();
		String input = request.getParameter("code");
		if(rand.equals(input)){
			out.println("<script language='javascript'>same();</script>");
		}else{
			out.print("<script language='javascript'>different();</script>");
		}
	%> --%>
	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>未闻花名</title>
<link rel="Shortcut Icon" href="image/blogo.ico" />
<script type="text/javascript" src="js/safe/aywmq_qt.js"></script>
<script type="text/javascript" src="js/safe/da_opt.js"></script>
<meta name="keywords" content="">
<meta name="description" content="">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/safe/css.css" />
<link rel="stylesheet" href="css/safe/common.min.css" />
<link rel="stylesheet" href="css/safe/ms-style.min.css" />
<link rel="stylesheet" href="css/safe/personal_member.min.css" />
<link rel="stylesheet" href="css/safe/Snaddress.min.css" />
<script type="text/javascript" src="js/sui.js"></script>
<style>
.demo {
	width: 420px;
	margin: 40px auto 0 auto;
	min-height: 250px;
}

.demo p {
	line-height: 42px;
	font-size: 16px
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/birthday.js"></script>
<script>  
function dosubmits(){ 
	
    var th = document.form1;  
    th.action="<%=path%>/servlet/UserAction?action_flag=update";
		th.submit();
	}
$(function () {
	$.ms_DatePicker({
            YearSelector: ".sel_year",
            MonthSelector: ".sel_month",
            DaySelector: ".sel_day"
    });
	$.ms_DatePicker();
}); 
	function refresh() {
		//IE存在缓存,需要new Date()实现更换路径的作用
		document.getElementById("image").src="authcode.jsp?"+new Date();
	}
		function same(){
		loginForm.action = "login/login_login";
		loginForm.submit();
	}
	function different(){
		alert("请输入正确的验证码");
		location.href = "login.jsp";
	}
</script>
<style type="text/css">
.nav-manage .list-nav-manage {
	position: absolute;
	padding: 15px 4px 10px 15px;
	left: 0;
	top: -15px;
	width: 90px;
	background: #FFF;
	box-shadow: 1px 1px 2px #e3e3e3, -1px 1px 2px #e3e3e3;
	z-index: 10;
}

.ms-nav li {
	float: left;
	position: relative;
	padding: 0 20px;
	height: 44px;
	font: 14px/26px "Microsoft YaHei";
	color: #FFF;
	cursor: pointer;
	z-index: 10;
}

.titles {
	font-size: 14px;
	color: #333333;
}
</style>
</head>

<body class="ms-body">
	<div id="" class="ng-top-banner"></div>
	<div class="ng-toolbar">
		<div class="ng-toolbar-con wrapper">
			<div class="ng-toolbar-left">
				<a class="ng-bar-node ng-bar-node-backhome" href="index.jsp"
					id="ng-bar-node-backhome" style="display: block;"> <span><img
						src="image/home.png" style="margin-right: 10px;" />返回首页</span> </a>
			</div>
			<div class="ng-toolbar-right">
				
				<div class="ng-bar-node-box username-handle" id=""
					style="display: block;">
					<a href="" rel="nofollow"
						class="ng-bar-node username-bar-node username-bar-node-noside">
						<span id=""><%=username %></span> <em class="hasmsg ng-iconfont"></em>
						<em class="ng-iconfont down"></em> </a>
					<div class="ng-d-box ng-down-box ng-username-slide"
						style="display:none;">
						<a href="" class="ng-vip-union" target="_blank" rel="nofollow">账号管理</a>
						<a href="" rel="nofollow">退出登录</a>
					</div>
				</div>
				<div class="ng-bar-node reg-bar-node" id="reg-bar-node"
					style="display: none;">
					<a href="" rel="nofollow" class="login">登录</a> <a href=""
						target="_blank" class="login reg-bbb" rel="nofollow">注册</a>
				</div>

				<div class="ng-bar-node-box myorder-handle">
					<a class="ng-bar-node ng-bar-node-fix touch-href ng-bar-node-pr5"><span>我的订单</span><em
						class="ng-iconfont down"></em>
					</a>
					<div class="ng-down-box ng-d-box myorder-child"
						style="display:none;">
						<a>待支付<em id="waitPayCounts"></em>
						</a> <a>待收货<em id="waitDeliveryCounts"></em>
						</a> <a>待评价<em id="waitEvaluation"></em>
						</a> <a>修改订单</a>
					</div>
				</div>
				<a class="ng-bar-node ng-bar-node-mini-cart" rel="nofollow" href="">
					<span><img src="image/mycar.png" style="margin-right:4px" />购物车</span>
					<span class="total-num-bg-box"> <em></em> <i></i> </span> </span> </a>
				<div class="ng-bar-node-box service-handle">
					<a href=""
						class="ng-bar-node ng-bar-node-service ng-bar-node-fix touch-href ng-bar-node-pr5"
						rel="nofollow"><span>联系我们</span><em class="ng-iconfont down"></em>
					</a>
					<div class="ng-down-box ng-d-box service-center-child ng-ser-list"
						style="display:none;">
						<a>帮助中心</a> <a>查找门店</a>
					</div>
				</div>
			</div>
			<div id="ng-minicart-slide-box"></div>
		</div>
	</div>
	<header class="ms-header ms-header-inner ms-head-position"> <article
		class="ms-header-menu">

	<div class="header-menu">
		<div class="ms-logo">
			<a class="ms-head-logo" name="Myyigou_index_none_daohangLogo"><span
				style="font-size: 30px;color: #fff;font-weight: bold;    line-height: 28px;;">个人中心</span>
			</a>

		</div>
		<nav class="ms-nav">
		<ul>
			<li class=""><a href="" data-url="">首页</a><i class="nav-arrow"></i>
			</li>
			<li class="nav-manage selected"><a href="" data-url="">账户管理<em></em>
			</a><i class="nav-arrow"></i>
				<div class="list-nav-manage " hidden="">
					<p class="nav-mge-hover">
						账户管理<em></em>
					</p>
					<p>
						<a>个人资料</a>
					</p>
					<p>
						<a>安全设置</a>
					</p>
					<p>
						<a>账号绑定</a>
					</p>
					<p>
						<a>地址管理</a>
					</p>
				</div></li>
			<li class="ms-nav-msg"><a>消息</a><i class="nav-arrow"></i>
			</li>
		</ul>
		<div class="ms-search">
			
				<input id="" type="text" value=""> <a id="" href=""></a>
			
		</div>
		</nav>
	</div>

	</article> <article class="ms-useinfo">
	<div class="header-useinfo" id="">
		<div class="ms-avatar">
			<div class="useinfo-avatar">
				<img src="image/picture.jpg" style="height:100px;width:100px">
				<div class="edit-avatar"></div>
				<a class="text-edit-avatar">修改</a>
			</div>
			<a><%=username %></a>
		</div>

		<div class="ms-name-info">
			<div class="info-member">
				<span style="margin-left: 20px;"> <a target="_blank">我的资料</a>
				</span>
			</div>
			<div class="info-safety">
				<span class="safety-lv lv-3"> <a>安全等级：<span>中</span>
				</a> </span> <a class="bind-phone"> <i
					style="background-image: url(image/upnum.png);"></i>修改手机</a> <a
					class="bind-email"> <i
					style="background-image: url(image/upemail.png);"></i>修改邮箱</a> <a
					class="manage-addr"><i
					style="background-image: url(image/upaddress.png);"></i>地址管理</a>
			</div>
		</div>
	</div>

	</article> </header>
	<div id="ms-center" class="personal-member">
		<div class="cont">
			<div class="cont-side">
				<div class="side-neck">
					<i></i>
				</div>
				<div class="ms-side">
					<article class="side-menu side-menu-off">
					<dl class="side-menu-tree">
						<dt>账户管理</dt>
						<dd>
							<a style="color:#607D8B"><span class="active"></span>我的资料</a>

						</dd>
						<dd>
							<a><span></span>安全设置</a>

						</dd>
						<dd>
							<a><span></span>账号绑定</a>

						</dd>
						<dd>
							<a><span></span>关联互联号</a>

						</dd>
						<dd>
							<a><span></span>地址管理</a>

						</dd>
					</dl>

					<a ison="on" class="switch-side-menu icon-up-side"><i></i>
					</a> </article>
				</div>
			</div>
			  <form id="form1" name="form1" action="" method="post" enctype="multipart/form-data">
			<div class="cont-main">
				<div class="main-wrap mt15">
					<h3>
						<strong>个人信息</strong>
					</h3>
					<div class="user-profile clearfix">
						<div class="user-profile-wrap">
							<div class="profile-avatar">
								<img src="image/picture.jpg" height="120" width="120"> <a
									href="" name="">编辑头像</a>
								<div class="edit_bg"></div>
							</div>
						</div>
           	         
						<div class="profile-info">
							<div class="control-group clearfix ">
								<div class="controls lh26">
									<label class="control-label"><em>*</em>
									<span style="margin-left: 10px;">用户名:</span>
									<input name="username" style="margin-left: 10px;" type="text" value="<%=username %>"  />
									<!-- <span style="margin-left: 10px;">注册成功,不能修改</span> -->
								</div>
							</div>
						</div>
					</div>
					<div class="form-list tab-switch personal-wrap-show">
							<div class="control-group clearfix">
								<label class="control-label"><em>*&nbsp;</em>性别：</label>
								<div id="gender" class="controls">
									<label class="sex-label"> 
									<input type="radio" name="sex" checked="checked" value="男"/> <span>男</span> 
									</label> 
									<label class="sex-label"> 
									<input type="radio" name="sex"  value="女"/> <span>女</span> </label> 
								</div>
							</div>
							<div class="control-group clearfix">
								<label class="control-label">手机：</label>
								<div class="controls">
									<input type="text" class="text" name="tel"  value="<%=tel%>" maxlength="12"/>
								</div>
							</div>
							<div class="control-group clearfix">
								<label class="control-label">邮箱：</label>
								<div class="controls">
									<input type="text" class="text" name="email" value="<%=email%>" maxlength="12"/>
								</div>
							</div>
							<!-- <div class="control-group clearfix">
								<label class="control-label">出生日期：</label>
								<div class="controls" style="width:420px">
									<select id="sel_year" style="width:60px"></select>年
									 <select id="sel_month" style="width:50px"></select>月
									<select id="sel_day" style="width:50px"></select>日
								</div>
							</div> -->
					</div>
					<div class="control-group clearfix">
								<label class="control-label">地址：</label>
								<div class="controls">
									<input type="text" class="text" name="address"  value="<%=address %>" maxlength="12" />
									<input type="hidden" name="id" value="<%=id%>" />
								</div>
							</div>
				<!-- 	<div id="" class="control-group clearfix" style="display:block;">
						<input id="" type="hidden" autocomplete="off"> <label
							class="control-label"><em>*&nbsp;&nbsp;&nbsp;</em>验证码：</label>
						<div class="controls">
							<input id="" type="text" class="text" maxlength="4"
								autocomplete="off" name="" style="width:150px" value="">
							<span class="tips-words"></span>
								<img id="image" border="0" width="62" height="24" class="authCode" onclick="refresh()" src="authcode.jsp" title="点击更换图片" >
						</div>
					</div> -->
					</form>
					
			<button onclick="dosubmits()" style="margin-left:200px">保 存</button>
					<div class="control-group clearfix priority-low">
						<label class="control-label">&nbsp;</label>
						
						<div id="" class="error-place"></div>
						<div class="error-place mt29"></div>
					</div>
					
				</div>
			</div>
		</div>


	</div>
	</div>
	<div class="clear"></div>
	<div class="ng-footer">
		<textarea class="footer-dom" id="footer-dom-02">
			</textarea>
		<div class="ng-fix-bar"></div>
	</div>
	<style type="text/css">
.ng-footer {
	height: 130px;
	margin-top: 0;
}

.ng-s-footer {
	height: 130px;
	background: none;
	text-align: center;
}

.ng-s-footer p.ng-url-list {
	height: 25px;
	line-height: 25px;
}

.ng-s-footer p.ng-url-list a {
	color: #666666;
}

.ng-s-footer p.ng-url-list a:hover {
	color: #f60;
}

.ng-s-footer .ng-authentication {
	float: none;
	margin: 0 auto;
	height: 25px;
	width: 990px;
	margin-top: 5px;
}

.ng-s-footer p.ng-copyright {
	float: none;
	width: 100%;
}

.root1200 .ng-s-footer p.ng-copyright {
	width: 100%;
}
</style>
	<script type="text/javascript" src="js/safe/ms_common.min.js"></script>
</body>
</html>
