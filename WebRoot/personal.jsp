<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//获取 session 中的 username;  
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

<title>我的资料</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="Shortcut Icon" href="image/blogo.ico" />
<link href="css/bootstrap/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/newtop.css">
<link rel="stylesheet" href="css/re.css">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/indexhome.css">
<link rel="stylesheet" href="css/details.css">
<link rel="stylesheet" href="css/public.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/templatemo-blue.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/custom.js"></script>

</head>
<jsp:include page="top.jsp"></jsp:include>
<body data-spy="scroll" data-target=".navbar-collapse">

	<div class="preloader">
		<div class="sk-spinner sk-spinner-wordpress">
			<span class="sk-inner-circle"></span>
		</div>
	</div>


	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<hr>
				<h1 class="tm-title bold shadow">
					Hi, I am
					<%=username%></h1>

			</div>
		</div>
	</div>
	</header>
<%-- <form class="form-horizontal" role="form">
  <div class="form-group" >
    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-10">
    <input type="text" name="username"
					id="change1" value="<%=username %>" disabled="disabled"/><br>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">性别</label>
    <div class="col-sm-10">
     <input type="text" name="sex"
					id="change1" value="<%=sex%>" /><br>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">联系号码</label>
    <div class="col-sm-10">
    <input type="text" name="text"
					id="change1" value="<%=tel%>" /><br>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">邮编</label>
    <div class="col-sm-10">
    <input type="text" name="text"
					id="change1" value="<%=email%>" /><br>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
    <div class="col-sm-10">
    <input type="text" name="text"
					id="change1" value="<%=address%>" /><br>
    </div>
  </div>
  <div class="form-group">
    
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改</button>
    </div>
  </div>
</form> --%>
	 <!-- about and skills section -->
	<section class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12">
		
			<th class="about" style="height:500px;float:left">
				<a href="massage.jsp">修改信息</a></br>
				<td style="margin:20px">
				<lable style="margin:10px">用户名</lable> 
				<input type="text" name="username"
					id="change1" value="<%=username %>" disabled="disabled"/><br></td>
					<div style="margin:20px">
				<lable style="margin:10px">性别</lable> 
					<input type="text" name="sex"
					id="change1" value="<%=sex%>" /><br>
					<div style="margin:20px">
				<lable style="margin:10px">联系电话</lable> 
					<input type="text" name="text"
					id="change1" value="<%=tel%>" /><br>
					<div style="margin:20px">
				<lable style="margin:10px">邮箱</lable> 
					<input type="text" name="text"
					id="change1" value=<%=email%> /><br>
					<div style="margin:20px">
				<lable style="margin:10px">地址</lable> 
					<input type="text" name="text"
					id="change1" value=<%=address%> /><br>
				</div>
		</div>

	</div>
	</section> 
	<div class="main_view_line2"></div>
	<!--footer-->
	<div class="footer">
		<div class="footer_box">
			<div class="new_l">
				<a href=""><img src="image/logo.jpg" alt=""> </a>
			</div>
			<ul>
				<p>新手指南</p>
				<li><a href="#" target="_blank">购物流程</a></li>
				<li><a href="#" target="_blank">支付方式</a></li>
				<li><a href="#" target="_blank">常见问题</a></li>
			</ul>
			<ul>
				<p>售后服务</p>
				<li><a href="#" target="_blank">退款说明</a></li>
				<li><a href="#" target="_blank">保养物语</a></li>
			</ul>
			<ul>
				<p>物流配送</p>
				<li><a href="#" target="_blank">配送方式</a></li>
				<li><a href="#" target="_blank">配送服务</a></li>
			</ul>
			<ul style="background:none">
				<p>关于我们</p>
				<li><a href="#" target="_blank">品牌介绍</a></li>
				<li><a href="#"> 联系我们</a></li>
				<li><a href="#"> 加入我们</a></li>
			</ul>
			</a>
		</div>

	</div>

</body>
</html>