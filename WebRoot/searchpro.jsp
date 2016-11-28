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
    dividePage = new DividePage(100,totalRecord,1);  
    int start = dividePage.fromIndex();  
    int end = dividePage.toIndex();  
    list = service.listProduct("", start, end);  
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>未闻花名</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="Shortcut Icon" href="image/blogo.ico" />
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/re.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/welcometop.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="css/bootstrap/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/newtop.css">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/indexhome.css">
<link rel="stylesheet" href="css/details.css">
<link rel="stylesheet" href="css/public.css">
<script src="js/jQuery/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">

<script type="text/javascript">  
    function searchProduct(){  
        var th = document.form2;  
        th.action="<%=path%>/servlet/ProductAction?action_flag=searchpro";  
        th.submit();  
    }  
      
    function first(){  
          
        window.location.href = "<%=path%>/servlet/ProductAction?action_flag=search&pageNum=1";  
          
    }  
    function next(){  
          
        window.location.href = "<%=path%>/servlet/ProductAction?action_flag=search&pageNum=<%=dividePage.getCurrentPage()+1%>";       
      
    }  
    function forward(){  
          
        window.location.href = "<%=path%>/servlet/ProductAction?action_flag=search&pageNum=<%=dividePage.getCurrentPage()-1%>";  
          
    }  
    function end(){  
          
        window.location.href = "<%=path%>/servlet/ProductAction?action_flag=search&pageNum=<%=dividePage.getPageCount()%>";  
              
    }  
      
    function changePage(currentPage){  
      
        window.location.href = "<%=path%>/servlet/ProductAction?action_flag=search&pageNum="+currentPage;  
      
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
        th.action="<%=path%>/servlet/ProductAction?action_flag=del";  
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
        th.action="<%=path%>/servlet/ProductAction?action_flag=view&proid="+getSelectedValue();  
        th.submit();          
      
    }  
      
    function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";  
          
    }  

 function query(id){  
 		
        var th = document.form1;  
        th.action="<%=path%>/servlet/ProductAction?action_flag=flower&proid="+id;  
        th.submit();          
      
    }  
        </script>
<body>
	<jsp:include page="top.jsp"></jsp:include>

	<form class="form-inline" name="form1" method="post" role="form">
		<%
			if (list != null && !list.isEmpty()) {

				for (Map<String, Object> map : list) {
		%>
		<!-- 	<div class="container summary">
	<div class="row" > -->
		<!-- 	<a href="item1.jsp"> -->
		<div class="col-md-3 brief" style="float:left"
			onclick="query('<%=map.get("proid")%>')">
			<div style="text-align:center">
				<img src="<%=path%>/upload/<%=map.get("proimage")%>"
					style="height:250px">
			</div>
			<div class="intro">
				<b class="f13"><%=map.get("proname")%></b><br> <b class="f14"><%=map.get("proprice")%></b>
			</div>
		</div>
		<!--  </a> -->
		</div>
		<%
			}

			}
		%>

		</div>
		
		<div class="main_view_line2"></div>
		<!--footer-->
		<div class="footer">
			<div class="footer_box">
				<div class="new_l">
					<a href=""><img src="image/logo.jpg" alt=""> </a>
				</div>
				<ul>
					<p>新手指南</p>
					<li><a href="#" target="_blank">购物流程</a>
					</li>
					<li><a href="#" target="_blank">支付方式</a>
					</li>
					<li><a href="#" target="_blank">常见问题</a>
					</li>
				</ul>
				<ul>
					<p>售后服务</p>
					<li><a href="#" target="_blank">退款说明</a>
					</li>
					<li><a href="#" target="_blank">保养物语</a>
					</li>
				</ul>
				<ul>
					<p>物流配送</p>
					<li><a href="#" target="_blank">配送方式</a>
					</li>
					<li><a href="#" target="_blank">配送服务</a>
					</li>
				</ul>
				<ul style="background:none">
					<p>关于我们</p>
					<li><a href="#" target="_blank">品牌介绍</a>
					</li>
					<li><a href="#"> 联系我们</a>
					</li>
					<li><a href="#"> 加入我们</a>
					</li>
				</ul>
				</a>
			</div>
          </div>
	</form>
</body>
</html>
