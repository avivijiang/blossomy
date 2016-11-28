<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.product.*"%>
<%
	String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
//获取 session 中的 username;  
String username = (String)session.getAttribute("username");  
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
    dividePage = new DividePage(5,totalRecord,1);  
    int start = dividePage.fromIndex();  
    int end = dividePage.toIndex();  
    list = service.listProduct("", start, end);  
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>产品管理</title>

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
    
    function selectAll(flag){  
          
        var ids = document.getElementsByName("ids");  
        for(var i = 0 ; i < ids.length ; i++){  
            ids[i].checked = flag;  
        }  
      
    }  
      
    function getSelectedCount(){  
      
        var ids = document.getElementsByName("ids");  
        var count = 0;  
        for(var i = 0 ; i < ids.length ; i++)  
        {  
                          
            ids[i].checked==true?count++:0;                   
        }  
        return count;  
      
    }  
      
    
      
    function getSelectedValue(){  
        var ids = document.getElementsByName("ids");  
          
        for(var i = 0 ; i < ids.length ; i++)  
        {  
                          
            if(ids[i].checked){  
                return ids[i].value;  
            }                 
        }  
          
    }  
      
    function view(){  
      
        if(getSelectedCount()<1){  
              
            alert("至少选择一个查看项！");  
            return;  
          
        }else if(getSelectedCount()>1){  
            alert("只能选择一个查看项！");  
            return;  
        }  
          
        var th = document.form1;  
        th.action="<%=path%>/servlet/ProductAction?action_flag=view&proid="+getSelectedValue();  
        th.submit();          
      
    }  
      
    function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";  
          
    }  
    function dosubmit(){  
    var th = document.form1;  
    th.action="<%=path%>/servlet/ProductAction?action_flag=add";  
    th.submit();  
  
}  
 
       
      function showMessage(){
        var sf = document.getElementById('searchform');
        sf.style.display="block";
        
        }
        
        function update(id){
       	 th.action="<%=path%>/servlet/ProductAction?action_flag=view&proid="+getSelectedValue();
        }
       
 
     /* var viewModel = {
        shouldShowMessage: ko.observable(true), // Message initially visible
       
        },
    };
    
    ko.applyBindings(viewModel);
    */
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
	<hr>

	<div class="sidebar"
		style="width:200px;height:600px;background:#f5f5f5;float:left">
		<dropdown> <input id="toggle1" type="checkbox" checked>
		<label for="toggle1" class="animate" style="margin-bottom:0px">产品管理<i
			class="fa fa-bars float-right"></i> </label>
		<ul class="animate">
			<li class="animate" 	onclick="javascript:location.href='<%=path%>/main.jsp'">产品查询<i
				class="fa fa-search float-right"></i></li>
			<li class="animate"
				onclick="javascript:location.href='<%=path%>/addProduct.jsp'">产品上新<i
				class="fa fa-plus float-right"></i>
			</li>

			<%-- <li class="animate" onclick="javascript:location.href='<%=path%>/delProduct.jsp'">产品下架<i class="fa fa-trash float-right"></i>
			</li> --%>
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
	</header>
	</body>
	</html>