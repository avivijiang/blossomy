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
<link rel="stylesheet" href="css/amazeui.min.css"/>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/tel/amazeui.min.js"></script>
		<link rel="stylesheet" href="css/tel/zpwd/sjsz.css" />
		<link rel="stylesheet" href="css/tel/sui.css" />
		<script type="text/javascript" src="js/sui.js"></script>
		<link rel="stylesheet" href="css/tel/jd.css" />
		<title></title>
		<style>
			/*.bottomLine {
				border-bottom: 1px solid #ccc;
				border-top: 1px solid #ccc;
				margin-bottom: 10px;
				/*padding: 10px;*/
			/*padding-top: 10px;
				padding-bottom: 10px;
				word-spacing: 0.05rem;
				text-align: center;
				margin-top: 82px;*/
			/*width:677px ;*/
			/*line-height: ;*/
			/*}*/
			.bottomLine {
				border-bottom: 1px solid #ccc;
				border-top: 1px solid #ccc;
				padding-top: 8px;
				/*padding-bottom:10px;*/
			}
			
			.bot {
				margin-bottom: 50px;
				/*text-align: center;*/
				color: #7b6f5b;
			}
			
			.radio-pretty.checked > span:before {
				color: #f88600;
			}
			
			input {
				height: 62px;
			}
			
			.imgbot {
				width: 128px;
				height: 128px;
			}
		</style>
	</head>
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


</body>
</html>
