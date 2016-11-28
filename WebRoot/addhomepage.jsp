<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String username = (String) session.getAttribute("username");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>新增产品</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
    th.action="<%=path%>/servlet/HomePageAction?action_flag=add";
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
		<font size=2>Hello，<%=username%> <a
			href="javascript:logout();"><i
				class="fa fa-power-off float-right" style="padding-left:20px"></i> </a>
		</font>
	</div>
	</header>
	<hr>

	<div class="sidebar"
		style="width:200px;height:600px;background:#f5f5f5;float:left">
		<dropdown> <input id="toggle1" type="checkbox" checked>
		<label for="toggle1" class="animate" style="margin-bottom:0px">产品管理<i
			class="fa fa-bars float-right"></i> </label>
		<ul class="animate">
			<li class="animate" onclick="javascript:location.href='<%=path%>/main.jsp'">产品查询<i
				class="fa fa-search float-right"></i></li>
			<li class="animate"
				onclick="javascript:location.href='http://localhost:8080/blossomyAdminSystem/servlet/ProductAction?action_flag=addPage'">产品上新<i
				class="fa fa-plus float-right"></i>
			</li>

			<%-- <li class="animate"  onclick="javascript:location.href='<%=path%>/delProduct.jsp'">产品下架<i class="fa fa-trash float-right"></i>
			</li> --%>
		</ul>
		</dropdown>
<dropdown>
  <input id="toggle2" type="checkbox" checked>
  <label for="toggle2" class="animate"  style="margin-bottom:0px">人员管理<i class="fa fa-bars float-right"></i></label>
  <ul class="animate">
    <li class="animate">管理员账号管理<i class="fa fa-code float-right"></i></li>
    <li class="animate" onclick="javascript:location.href='<%=path%>/mngUsers.jsp'">用户管理<i class="fa fa-arrows-alt float-right"></i></li>
  </ul>
</dropdown>
<dropdown>
  <input id="toggle3" type="checkbox">
  <label for="toggle3" class="animate"  style="margin-bottom:0px">首页管理<i class="fa fa-bars float-right"></i></label>
  <ul class="animate">
    <li class="animate" onclick="javascript:location.href='<%=path%>/addhomepage.jsp'">热门推荐上新<i class="fa fa-code float-right"></i></li>
        <li class="animate" onclick="javascript:location.href='<%=path%>/homepage.jsp'">热门推荐管理<i class="fa fa-code float-right"></i></li>
  </ul>
</dropdown>
	</div>
	<div class="panel panel-default"
		style="margin-left:200px;margin-bottom:0px">
		<!-- Default panel contents -->
		<div class="panel-heading" style="height:50px">首页商品上新</div>
		<!-- <table class="table table-striped"  style="margin:auto;width=60%;position:absolute;left:250px"> -->
		<div class="panel-body">
			<tr>
				<td>
					<form id="form1" name="form1" action="" method="post"
						enctype="multipart/form-data">
						<table class="table table-striped"
							style="border:1px solid #dee1e2;width:50%">
							<tr>
								<td  class="col-sm-2 control-label">产品名称</td>
								<td><input type="text"  class="form-control" name="proname" id="proname" /></td>
							</tr>
							<tr>
								<td class="col-sm-2 control-label">产品类别</td>
								<td><select class="form-control" class="form-control"
									name="profiles" id="procategory">
										<%-- <c:forEach items="${flowerType}" var="type">
										    <option value="${type.id}">${type.flower_type_name}</option>
										</c:forEach> --%>
										<option value="1">鲜花</option>
										<option value="2">永生花</option>
										<option value="3">礼盒</option>
										<option value="4">生日推荐</option>
								</select></td>
							</tr>
							<tr>
								<td class="col-sm-2 control-label">产品简介</td>
								<td><input type="text"   class="form-control" name="profiles" id="profiles" /></td>
							</tr>
							<tr>
								<td class="col-sm-2 control-label">产品价格</td>
								<td><input type="text"   class="form-control" name="proprice" id="proprice" /></td>
							</tr>
							<tr>
								<td class="col-sm-2 control-label">产品产地</td>
								<td colspan="3"><input type="text"   class="form-control" name="proaddress"
									id="proaddress" /></td>
							</tr>
							<tr>
								<td class="col-sm-2 control-label">产品图片</td>
								<td colspan="3"><input type="file"  class="form-control"  name="proimage"
									id="proimage" size=35 /></td>
							</tr>
							<tr>
								<td>详情图片</td> 
								<td colspan="3"><input type="file"   class="form-control" name="prodetails1"
									id="prodetails1" size=35 /></td>
							</tr>
							<tr>
								<td>详情图片</td>
								<td colspan="3"><input type="file"   class="form-control" name="prodetails2"
									id="prodetails2" size=35 /></td>
							</tr>
							<tr>
								<td>详情图片</td>
								<td colspan="3"><input type="file"  class="form-control"  name="prodetails3"
									id="prodetails3" size=35 /></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			
				<td colspan="4" align="center">
					<button type="button"  class="btn btn-success btn-sm" onclick="javascript:dosubmit();" style="margin:20 30 20 200">确定</button>
					<button type="button" class="btn btn-primary btn-sm" onclick="javascript:location.href='homepage.jsp'">返回</button>
				</td>
			
			</table>
		</div>
	</div>


</body>
</html>
