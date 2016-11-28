<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
Map<String,Object> map = (Map<String,Object>)request.getAttribute("productMap");  
  String username = (String) session.getAttribute("username");
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>查看产品</title>  
      
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
	<style  type="text/css">
	.panel panel-default img{
	height:50px;width:50px}
	</style>

<script type="text/javascript">  
function dosubmit(){  
    var th = document.form1;  
    th.action="<%=path%>/servlet/HomePageAction?action_flag=update";
		th.submit();

	}
	function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";  
          
    } 
    function changeable(){
  
	document.getElementById("change1").disabled = false;
		document.getElementById("change3").disabled = false;
		document.getElementById("change4").disabled = false;
		document.getElementById("change5").disabled = false;
		document.getElementById("change6").disabled = false;
		document.getElementById("change7").disabled = false;
		document.getElementById("change8").disabled = false;
		document.getElementById("change9").disabled = false;
		
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
			<li class="animate"onclick="javascript:location.href='<%=path%>/main.jsp'">产品查询<i
				class="fa fa-search float-right"></i></li>
			<li class="animate"
				onclick="javascript:location.href='http://localhost:8080/blossomyAdminSystem/servlet/ProductAction?action_flag=addPage'">产品上新<i
				class="fa fa-plus float-right"></i>
			</li>
       </ul>
		</dropdown>
		<dropdown>
  <input id="toggle2" type="checkbox">
  <label for="toggle2" class="animate">人员管理<i class="fa fa-bars float-right"></i></label>
  <ul class="animate">
    <li class="animate">管理员账号管理<i class="fa fa-code float-right"></i></li>
    <li class="animate" onclick="javascript:location.href='<%=path%>/mngUsers.jsp'">用户管理<i class="fa fa-arrows-alt float-right"></i></li>
  </ul>
</dropdown>
	</div>
	<div class="panel panel-default"
			style="margin-left:200px;margin-bottom:0px">
			<div class="panel-heading" style="height:50px">查看详情</div>
			<div class="panel-body">
			 
  <div align="center">  
          
        <table  width=70% style="margin:auto">  
              
           	<form id="form1" name="form1" action="" method="post" enctype="multipart/form-data">
            <tr>  
                <td>  
                    <table class="table" width =70% border =1 >  
                        <tr align="center">  
                            <td width = 20%>产品名称</td>  
                            <td width = 30%>
                            <input type="text" name="proname" id="change1" value="<%=map.get("proname") %>"  disabled="disabled" ></td>  
                            <td width = 20%>产品类别</td>  
                           <td>  
                          <%--  <select>
                          <option selected="<%=map.get("procategory")%>"></option>
                               <option value ="1">鲜花</option>
                               <option value ="2">永生花</option>
                               <option value="3">礼盒</option>
                               <option value="4">生日推荐</option>
                         </select> --%>
                           <input type="text"   name="procategory" disabled="disabled"  value="<%=map.get("procategory") %>"><br>
                           <span style="font-size:12px;color:red">1/鲜花；2/永生花；3/礼盒；4/生日推荐
                           <br>不可修改类别</span>
                           </td>  
                          </tr>  
                        <tr align="center">  
                        <td width = 20%>产品价格</td>  
                            <td> <input type="text"  id="change3" name="proprice" disabled="disabled"  value="<%=map.get("proprice") %>"></td>  
                            <td width = 20%>产品产地</td>  
                            <td width = 30%><input type="text" name="proaddress"  id="change4" disabled="disabled"  value="<%=map.get("proaddress") %>"></td>  
                           </tr>  
                        
                         <tr align="center">  
                            <td >产品简介</td>  
                            <td colspan=3><input type="text"  id="change5" name="profiles" disabled="disabled"  value="<%=map.get("profiles") %>"></td>                      
                        </tr>  
                        <tr align="center">  
                            <td>产品主图</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("proimage") %>"  style="height:200px;width:200px">
                            <input type="file" id="change6" disabled="disabled"   value="<%=map.get("proimage") %>"  class="form-control" name="proimage" /></td>                           
                          
                        </tr>  
                       <tr align="center">  
                            <td>产品介绍图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails1") %>" style="height:200px;width:200px">
                              <input type="file"    id="change7"   disabled="disabled"    value="<%=map.get("prodetails1") %>"   class="form-control" name="prodetails1" /></td>                           
                          
                        </tr>  
                        <tr align="center">  
                            <td>产品介绍图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails2") %>" style="height:200px;width:200px">
                            <input type="file"  id="change8"    disabled="disabled"  class="form-control" name="prodetails2"  /></td>                           
                          
                        </tr>
                          <tr align="center">  
                            <td>产品介绍图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails3") %>" style="height:200px;width:200px">
                               <input type="file" id="change9"  disabled="disabled"    class="form-control" name="prodetails3" /></td>                           
                          		<input type="hidden" name="proid" value="<%=map.get("proid") %>" />
                        </tr>
                        </form>
                    </table>  
                </td>  
            </tr>  
            <tr>  
                <td align="center"> 
                <button type="button"   class="btn btn-primary btn-sm"  style="margin-right: 30px"  onclick="changeable()">修改</button> 
                    <button type="button"   class="btn btn-primary btn-sm"  style="margin-right: 30px"  onclick="javascript:dosubmit();">保存</button>  
                    <button type="button"  class="btn btn-default btn-sm" onclick="javascript:history.go(-1)">返回</button>  
                </td>  
            </tr>  
          
        </table>  
          </div>
          </div>
         
      
  </div>  
  </body>  
</html>  