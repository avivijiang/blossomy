<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.page.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			//获取 session 中的 username;  
	
	String username = (String) session.getAttribute("username");
	String pswd= (String) session.getAttribute("pswd");
	String sex = (String) session.getAttribute("sex");
	String tel = (String) session.getAttribute("tel");
	String email= (String) session.getAttribute("email");
	String address = (String) session.getAttribute("address");
//获取从 servlet ProductActiion 中 传递的参数(数据库查询的结果)  
List<Map<String,Object>> list =(List<Map<String,Object>>) request.getAttribute("listProduct");  
// 获取 分页对象  
DividePage dividePage = (DividePage) request.getAttribute("dividePage");  
// 获取查询的关键词  
String productName = (String) request.getAttribute("productName");  
if(list==null){  
    //第一次进 main.jsp页面，默认加载所有的产品  
    HomePageService service = new HomePageDao();  
    int totalRecord = service.getItemCount("");  
    dividePage = new DividePage(50,totalRecord,1);  
    int start = dividePage.fromIndex();  
    int end = dividePage.toIndex();  
    list = service.listProduct("", start, end,);  
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>未闻花名</title>
<link rel="Shortcut Icon" href="image/blogo.ico" />
<link href="css/bootstrap/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/newtop.css">
<link rel="stylesheet" href="css/re.css">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/indexhome.css">
<link rel="stylesheet" href="css/details.css">
<link rel="stylesheet" href="css/public.css">
<script src="js/jQuery/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>

<style>
.right {
	margin-top: 0px;
}
</style>
</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="clear"></div>

	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel" style="margin-bottom:50px">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- 	Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="image/crousel1.jpg" class="img-responsive center-block"
					alt="">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="image/crousel2.jpg" class="img-responsive center-block"
					alt="">
				<div class="carousel-caption"></div>
			</div>

		</div>
		<!-- 
		Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span> </a> <a class="right carousel-control"
			href="#carousel-example-generic" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span> </a>
	</div>
	<div class="newtitle">
		<p style="font-family:'微软雅黑', 'Microsoft YaHei';">精品推荐</p>
	</div>
	<hr class="feature-divider">
	<!-- 主要内容 -->
	<div class="container summary">

		<!-- 简介 -->
		<div class="row" id="summary-container">
			<div class="col-md-4">
				<img class="imger" src="image/6.png" style="height:250px"
					alt="chrome">
				<h2>新品上线</h2>
				<p>CLASSIC</p>
			</div>
			<div class="col-md-4">
				<img class="imger" src="image/4.png" style="height:250px"
					alt="firefox">
				<h2>经典热卖</h2>
				<p>Preserved</p>
			</div>
			<div class="col-md-4">
				<img class="imger" src="image/5.png" style="height:250px"
					alt="safari">
				<h2>节日礼品</h2>
				<p>Flora</p>
			</div>
		</div>
	</div>

	<!-- 关于 -->
	<div class="modal fade" id="about-modal" tabindex="-1" role="dialog"
		aria-labelledby="modal-label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title" id="modal-label">关于</h4>
				</div>
				<div class="modal-body">
					<p>正在开发</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="top-section" style="margin:auto;width:1240px">
		<tbody>
			<tr>
				<td colspan="7"><img src="image/top10.jpg" width="1240"
					height="82" alt="">
				</td>
			</tr>
			<img src="image/home1.jpg" alt="" style="margin-left:145px"> </a>
			<img src="image/home2.jpg" alt="" style="margin-left:145px">
			<img src="image/home3.jpg" alt="" style="margin-left:145px">

			<tr>
				<td colspan="7"><a href="#" target="_blank"> <img
						src="image/home4.jpg" width="1240" height="291" alt=""> </a>
				</td>
			</tr>
			<tr>
				<td colspan="7"><a href="#" target="_blank"> <img
						src="image/home5.jpg" width="1240" height="351" alt=""> </a>
				</td>
			</tr>
			<tr>
				<td colspan="7"><a href="#" target="_blank"> <img
						src="image/home6.jpg" width="1240" height="302" alt=""> </a>
				</td>
			</tr>
			<tr>
				<td colspan="7"><a href="#" target="_blank"> <img
						src="image/home7.jpg" width="1240" height="318" alt=""> </a>
				</td>
			</tr>
			<img src="image/home8.jpg" alt="" style="margin-left:116px">
			<tr>
				<td colspan="7"><a href="#" target="_blank"> <img
						src="image/home9.png" width="1240" height="332" alt=""> </a>
				</td>
			</tr>
			<tr>
				<td colspan="7"><a
					href="#" target="_blank">
						<img src="image/home10.jpg" width="1240" height="429" alt="">
				</a>
				</td>
			</tr>
			<tr>
				<td colspan="7" style="width:1240px;height:660px"></td>
			</tr>
		</tbody>

	</div>
	<form class="form-inline" name="form1" method="post" role="form">
		<%
			if (list != null && !list.isEmpty()) {

				for (Map<String, Object> map : list) {
		%>
		<div class="col-md-3 brief" style="float:left"
			onclick="query('<%=map.get("proid")%>')">
			<div style="text-align:center">
				<img src="<%=path%>/upload/<%=map.get("proimage")%>"
					style="height:250px">
			</div>
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

	</div>

	<script src="js/jQuery/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://www.zjmainstay.cn/jquery/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
		$(".include").each(function() {
			if (!!$(this).attr("file")) {
				var $includeObj = $(this);
				$(this).load($(this).attr("file"), function(html) {
					$includeObj.after(html).remove(); //加载的文件内容写入到当前标签后面并移除当前标签
				})
			}
		});
	</script>
</body>
</html>
