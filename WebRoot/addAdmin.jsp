<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html;charset=UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

//获取 session 中的 username;  
String username = (String)session.getAttribute("username"); 
//username已存在; 
String userName_existence = (String)session.getAttribute("userName_existence"); 		
	session.setAttribute("userName_existence", "false"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/re.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/welcometop.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">

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
	     
    function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";  
          
    }  
    </script>

</head>

<body>
	<header>
	<div class="welcome-container">
		<img width="200" height="80" class="logo" src="image/logo.jpg" alt="">
	</div>

	<div class="state"
		style="float:right;position:relative;top:30px;right:40px">
		<font size=2>Hello，<%=username%> <a href="javascript:logout();"><i
				class="fa fa-power-off float-right" style="padding-left:20px"></i> </a>
		</font>
	</div>
	<hr>

	<div class="sidebar"
		style="width:200px;height:600px;background:#f5f5f5;float:left">
		<dropdown> <input id="toggle1" type="checkbox" checked>
		<label for="toggle1" class="animate" style="margin-bottom:0px">产品管理<i
			class="fa fa-bars float-right"></i> </label>
		<ul class="animate">
			<li class="animate"
				onclick="javascript:location.href='<%=path%>/main.jsp'">产品查询<i
				class="fa fa-search float-right"></i>
			</li>
			<li class="animate"
				onclick="javascript:location.href='http://localhost:8080/blossomyAdminSystem/servlet/ProductAction?action_flag=addPage'">产品上新<i
				class="fa fa-plus float-right"></i></li>


		</ul>
		</dropdown>

		<dropdown> <input id="toggle2" type="checkbox"> <label
			for="toggle2" class="animate" style="margin-bottom:0px">人员管理<i
			class="fa fa-bars float-right"></i>
		</label>
		<ul class="animate">
			<li class="animate"
				onclick="javascript:location.href='<%=path%>/mngAdmin.jsp'">管理员账号管理<i
				class="fa fa-code float-right"></i>
			</li>
			<li class="animate"
				onclick="javascript:location.href='<%=path%>/mngUsers.jsp'">用户管理<i
				class="fa fa-arrows-alt float-right"></i>
			</li>
		</ul>
		</dropdown>
	</div>

	<div class="panel panel-default"
		style="margin-left:200px;margin-bottom:0px">
		<div class="panel-heading" style="height:50px">添加人员</div>
		<div class="panel-body" style="margin:40 40 300 300">
			<!-- 添加人员列表 -->
			<form action="" name="form1" method="post" enctype="application/x-www-form-urlencoded;charset=UTF-8">
				<table class="table table-striped"
					style="border:1px solid #dee1e2;width:30%">
					<tr>
						<td class="col-sm-2 control-label">账号</td>
						<td><input type="text" class="form-control" name="username"
							 />
						</td>
					</tr>
					<tr>
						<td class="col-sm-2 control-label">密码</td>
						<td><input type="text" class="form-control" name="pswd"
							 />
							
						</td>
					</tr>
					</table>
					<button type="button" id="login-btn-submit" class="btn btn-primary btn-sm"
					onclick="dosubmit()" style="margin-left:100px">确定</button>
					</form>
		</div>
	</div>
</body>
</html>
