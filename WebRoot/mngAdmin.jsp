<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.user.*"%>
<%
	String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
//获取 session 中的 username;  
String username = (String)session.getAttribute("username");  
//获取从 servlet ProductActiion 中 传递的参数(数据库查询的结果)  
List<Map<String,Object>> list =(List<Map<String,Object>>) request.getAttribute("listAdmin");  
// 获取 分页对象  
DividePage dividePage = (DividePage) request.getAttribute("dividePage");  
// 获取查询的关键词  
String userName = (String) request.getAttribute("userName");  
if(list==null){  
    //第一次进 main.jsp页面，默认加载所有的产品  
    AdminService service = new AdminDao();  
    int totalRecord = service.getItemCount("");  
    dividePage = new DividePage(5,totalRecord,1);  
    int start = dividePage.fromIndex();  
    int end = dividePage.toIndex();  
    list = service.listAdmin("", start, end);  
}
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
    function searchAdmin(){  
        var th = document.form2;  
        th.action="<%=path%>/servlet/AdminAction?action_flag=search";  
        th.submit();  
    }  
      
    function first(){  
          
        window.location.href = "<%=path%>/servlet/AdminAction?action_flag=search&pageNum=1";  
          
    }  
    function next(){  
          
        window.location.href = "<%=path%>/servlet/AdminAction?action_flag=search&pageNum=<%=dividePage.getCurrentPage()+1%>";       
      
    }  
    function forward(){  
          
        window.location.href = "<%=path%>/servlet/AdminAction?action_flag=search&pageNum=<%=dividePage.getCurrentPage()-1%>";  
          
    }  
    function end(){  
          
        window.location.href = "<%=path%>/servlet/AdminAction?action_flag=search&pageNum=<%=dividePage.getPageCount()%>";  
              
    }  
      
    function changePage(currentPage){  
      
        window.location.href = "<%=path%>/servlet/AdminAction?action_flag=search&pageNum="+currentPage;  
      
    }  
       
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
      
    function del(){  
      
        if(getSelectedCount()==0){  
              
            alert("至少选择一个删除项！");  
            return;  
          
        }  
          
        var th = document.form1;  
        th.action="<%=path%>/servlet/AdminAction?action_flag=del";  
        th.submit();          
      
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
        th.action="<%=path%>/servlet/AdminAction?action_flag=view&proid="+getSelectedValue();  
        th.submit();          
      
    }  
      
    function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";  
          
    }  
    function dosubmit(){  
    var th = document.form1;  
    th.action="<%=path%>/servlet/AdminAction?action_flag=add";  
    th.submit();  
  
}  
 
       
      function showMessage(){
        var sf = document.getElementById('searchform');
        sf.style.display="block";
        
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
  <input id="toggle2" type="checkbox" checked>
  <label for="toggle2" class="animate"  style="margin-bottom:0px">人员管理<i class="fa fa-bars float-right"></i></label>
  <ul class="animate">
    <li class="animate" onclick="javascript:location.href='<%=path%>/mngAdmin.jsp'">管理员账号管理<i class="fa fa-code float-right"></i></li>
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
			<div class="panel-heading" style="height:50px">管理员账号管理</div>
			<div class="panel-body">
			<div style="margin:20 20 0 40;float:left;display:inline-block">
			<button type="button"  class="btn btn-primary btn-sm" onclick="javascript:location.href='<%=path%>/addAdmin.jsp'">添加</button></td>
				<button type="button" class="btn btn-success btn-sm"  style="margin-left: 30px"onclick="javascript:del();">删除</button>

					<form class="form-inline" name="form2" method="post" role="form" >
							<div class="form-group has-success has-feedback" style="position:absolute;left:850px;top:165px">
                        <label class="control-label" for="inputSuccess2"  style="padding-right:25px">账号查询</label>
                        <input type="text" class="form-control" name="username"   id="inputSuccess2" 	value="<%=userName != null ? userName : ""%>">
                        <span class="glyphicon glyphicon-search"  style="left:-25px" onclick="searchAdmin()"></span>
                          </div>
                        </form>
			</div>
				<table width=70% style="position:absolute;left:250px;margin-top:90px">


					<tr>
						<td>
							<form name="form1" action="" method="post">
								<table class="table table-striped"
									style="border:1px solid #dee1e2;margin-bottom:30px">
									<tr align="center">
										<td width=10%><input type="checkbox" name="checkall"
											onclick="javascript:selectAll(this.checked);" />
										</td>
										<td width=20%>姓名</td>
										<td width=10%>密码</td>
									</tr>
									<%
										if (list != null && !list.isEmpty()) {

											for (Map<String, Object> map : list) {
									%>

									<tr align="center">
										<td width=10%><input type="checkbox" name="ids" value="<%=map.get("id")%>" /></td>
										<td ><%=map.get("username")%></td>
										<td ><%=map.get("pswd")%></td>
										<%
											}

											} else {
										%>
									
									<tr align="center">
										<td width=10%><input type="checkbox" name="" />
										</td>
										<td></td>
										<td></td>
										<td></td>
                                        <td></td>
										<td></td>
									</tr>
									<%
										}
									%>




								</table>
							</form></td>
							
					</tr>
						<tr>
						<td colspan="4" align="center">共<%=dividePage.getPageCount()%>页
							<a href="javascript:first();">首页</a> <a
							href="javascript:forward();">上一页</a> <a href="javascript:next();">下一页</a>
							<a href="javascript:end();">尾页</a> 跳转到<select name="select"
							onchange="changePage(this.value)">

								<%
									int pageCount = dividePage.getPageCount();
									if (pageCount > 0) {
										for (int i = 1; i <= pageCount; i++) {
								%>

								<option value="<%=i%>"
									<%=(i == dividePage.getCurrentPage() ? "selected"
							: "")%>>
									<%=i%>
								</option>

								<%
									}

									} else {// 无记录
								%>
								<option value="1">1</option>
								<%
									}
								%>

						</select></td>
					</tr>
				</table>
			</div>
			</div>
			
	
</body>
</html>
