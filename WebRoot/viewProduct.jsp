<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>  
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

<script type="text/javascript">  
function dosubmit(){  
    var th = document.form1;  
    th.action="<%=path%>/servlet/ProductAction?action_flag=add";
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
		style="width:200px;height:1200px;background:#f5f5f5;float:left">
		<dropdown> <input id="toggle1" type="checkbox" checked>
		<label for="toggle1" class="animate" style="margin-bottom:0px">产品管理<i
			class="fa fa-bars float-right"></i> </label>
		<ul class="animate">
			<li class="animate" onclick="javascript:location.href='<%=path%>/main.jsp'">产品查询<i
				class="fa fa-search float-right"></i></li>
			<li class="animate"
				onclick="javascript:location.href='<%=path%>/addProduct.jsp'">产品上新<i
				class="fa fa-plus float-right"></i>
			</li>

		</ul>
		</dropdown>
<dropdown>
  <input id="toggle2" type="checkbox">
  <label for="toggle2" class="animate">订单管理<i class="fa fa-bars float-right"></i></label>
  <ul class="animate">
    <li class="animate">待处理订单<i class="fa fa-code float-right"></i></li>
    <li class="animate">订单物流<i class="fa fa-arrows-alt float-right"></i></li>
    <li class="animate">售后订单<i class="fa fa-cog float-right"></i></li>
  </ul>
</dropdown>
	</div>
	<div class="panel panel-default"
			style="margin-left:200px;margin-bottom:0px">
			<div class="panel-heading" style="height:50px">查看详情</div>
			<div class="panel-body">
  <div align="center">  
          
        <table  width=70% style="margin:auto">  
              
           
            <tr>  
                <td>  
                    <table class="table" width =70% border =1 >  
                        <tr align="center">  
                            <td width = 20%>产品名称</td>  
                            <td width = 30%><%=map.get("proname") %></td>  
                            <td width = 20%>产品类别</td>  
                            <td><%=map.get("procategory") %></td>  
                              
                          
                        </tr>  
                        <tr align="center">  
                        <td width = 20%>产品价格</td>  
                            <td><%=map.get("proprice") %></td>  
                            <td width = 20%>产品产地</td>  
                            <td width = 30%><%=map.get("proaddress") %></td>  
                           </tr>  
                        
                         <tr align="center">  
                            <td >产品简介</td>  
                            <td colspan=3><%=map.get("procategory") %></td>                      
                        </tr>  
                        <tr align="center">  
                            <td>产品图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("proimage") %>"></td>                           
                          
                        </tr>  
                       <tr align="center">  
                            <td>产品图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails1") %>"></td>                           
                          
                        </tr>  
                        <tr align="center">  
                            <td>产品图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails2") %>"></td>                           
                          
                        </tr>
                          <tr align="center">  
                            <td>产品图片</td>  
                            <td colspan=3><img src="<%=path%>/upload/<%=map.get("prodetails3") %>"></td>                           
                          
                        </tr>
                    </table>  
                </td>  
            </tr>  
            <tr>  
                <td align="center">  
                    <button type="button"   class="btn btn-primary btn-sm"  style="margin-right: 30px"  onclick="javascript:location.href='<%=path %>/main.jsp'">确定</button>  
                    <button type="button"  class="btn btn-default btn-sm" onclick="javascript:history.go(-1)">返回</button>  
                </td>  
            </tr>  
          
        </table>  
          </div>
          </div>
         
      
  </div>  
  </body>  
</html>  