<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
Map<String,Object> map = (Map<String,Object>)request.getAttribute("productMap");  
  String username = (String) session.getAttribute("username");
session.setAttribute("car"+username, 1);%>


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
<link rel="stylesheet" href="css/welcometop.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<style type="text/css">
.panel panel-default img {
	height: 50px;
	width: 50px
}

.spinnerExample {
	margin: 10px 0;
}
</style>
<script type="text/javascript">
$('.spinnerExample').spinner({});

function logout(){  
      
    window.location.href="<%=path%>/servlet/LogoutAction?action_flag=logout";

	}
function wanted(){
			var th = document.formcar; 
			var proid = getElementById('proid').value;
			var num = getElementById('count').value;
	 		alert("22222222");
	 		th.action="<%=path%>/servlet/ProductAction?action_flag=shopcar&proid="+ proid + "&num=" + num;
		th.submit();
	}
</script>
</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="container">
	<form name="formcar" action="" method="post">
		<div class="contain_details">
			<!--产品信息-->
			<div class="details_num1">
				<div class="details_num1_left">
					<div class="li_left_bgimg"></div>
					<div class="li_left_xl">
						Classic<br /><%=map.get("procategory")%>
					</div>
					<div class="li_left_name" style="color:#941b1e">
					产地
						<!--非珠宝类,显示颜色-->
						<span class="span1"><%=map.get("proaddress")%></span>
					</div>
					<!--待定-->
				</div>
				<!--轮播图-->
				<div class="main_jewel" style="position: relative">
					<div class="jewel_window">
						<div class="image_reel1">
							<img id="detail_main_img" style="width: 400px;height: 400px;"
								src="<%=path%>/upload/<%=map.get("proimage")%>" border="0"
								alt="经典-朱砂" title="经典-朱砂" />
						</div>
					</div>
				</div>
				<!--轮播图 end-->
				<div class="details_num1_right">
					<!--非珠宝类,显示颜色-->
					<div class="right_tit"><%=map.get("proname")%></div>
					<div class="right_xx"><%=map.get("profiles")%></div>
					<br />
					<div class="right_pay">￥
						<%=map.get("proprice")%>
					</div>
					<br />
					<!--产品筛选 end-->
					<div class="right_select">
					<input type="hidden" name="proid" value="<%=map.get("proid")%>" />
						<span class="right_font_tit">购买数量：</span>
							 <a href="javascript:void(0);" class="right_down">
							<img border="0" alt="减"
							src="image/icon_down.png"
							onclick="document.getElementById('count').value=parseInt(document.getElementById('count').value)-1">
						</a> 
						<input id="count" class="right_number" value='1' />
						 <a href="javascript:void(0);" class="right_up"><img border="0"
							alt="加" src="image/icon_up.png"
							onclick="addnum();">
						</a>
						<div class="clear"></div>
						</form>
					</div>
					<button class="button_bar1 unsold" onclick="wanted()">加入购物车</button> 
					<button class="button_bar2 unsold" name='for99clickToCar'>立即购买</button> 
				
					<script>		
	                   function addnum(){ 
								document.getElementById('count').value=parseInt(document.getElementById('count').value)+1;
							}
							</script>
					<div class="clear"></div>
					<div class="jewel_paging" style="padding-top:70px">
						<div>&lt</div>
						<a href="javascript:;" rel="1" class="img_selected"><img
							class="detail_img" border="0"
							src="http://www.roseonly.com.cn/upload/products/14701945928768231.png" />
						</a> <a href="javascript:;" rel="2"><img class="detail_img"
							border="0"
							src="http://www.roseonly.com.cn/upload/products/14697834422372911.png" />
						</a> <a href="javascript:;" rel="3"><img class="detail_img"
							border="0"
							src="http://www.roseonly.com.cn/upload/products/14697834422837817.png" />
						</a> <a href="javascript:;" rel="4"><img class="detail_img"
							border="0"
							src="http://www.roseonly.com.cn/upload/products/14697834423151620.png" />
						</a> <a href="javascript:;" rel="5"><img class="detail_img"
							border="0"
							src="http://www.roseonly.com.cn/upload/products/14697834423632274.png" />
						</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div>
				<img
					src="http://www.roseonly.com.cn/assets/roseonly/images/xq_08.png" />
			</div>
			<div class="div_details div_details_bg">
				<div class="details_nav1">
					<div class="f14">
						Love Story<br /> <b class="f16">真爱物语</b>
					</div>
					<p>-</p>
					<p class="f14">
						<strong></strong><strong>献给相信爱可以打败时间、</strong><br /> <strong>
							越过生死、忠贞不渝的人们。</strong><br /> <br /> roseonly『经典永续』鲜花玫瑰， <br /> 真爱永不落幕。
						<br /> “roseonly,一生只送一人” <br />
					</p>
				</div>
				<div class="details_img">
					<img style="width:620px;height:465px;"
						src="<%=path%>/upload/<%=map.get("prodetails1")%>" alt="经典-朱砂"
						title="经典-朱砂" />
				</div>
			</div>
			<div class="div_details div_details_bg">
				<div class="details_nav1">
					<div class="f14">
						Details<br /> <b class="f16">产品物语</b>
					</div>
					<p>-</p>
					<p class="f14">
						<strong></strong>玫瑰朵数：19朵<br /> <span>花枝长度：80cm<span>(根据花盒包装有所修剪）</span>
						</span><br /> 礼盒尺寸：长81cm*宽21cm*高13cm
					</p>
				</div>
				<div class="details_img">
					<img class="lazy"
						data-original="http://www.roseonly.com.cn/upload/products/14299533453599379.png"
						src="<%=path%>/upload/<%=map.get("prodetails2")%>" alt="经典-朱砂"
						title="经典-朱砂" />
				</div>
			</div>
			<div class="div_details ">
				<div class="details_img">
					<img class="lazy"
						data-original="http://www.roseonly.com.cn/upload/products/14585438467799310.png"
						src="<%=path%>/upload/<%=map.get("prodetails3")%>" alt="经典-朱砂"
						title="经典-朱砂" />
				</div>
				<div class="details_nav1">
					<p class="f14">
						<strong>朱砂玫瑰</strong><br /> 爱是心口的一粒朱砂痣。 <br />
						以不灭的爱火和浪漫，定义至死不渝的深刻和浪漫。 <br /> <br /> <strong>情动玫瑰</strong><br />
						此生心动，此时情动，正是爱的神力。 <br /> 以电光火石的爱意，献给全世界生死热恋的人们。 <br /> <br /> <strong>初心玫瑰</strong><br />
						爱再无条件，历经世事而初心依旧。 <br /> 以毫无保留的付出，去回应你无条件的深深爱意。 <br /> <br /> <strong>红颜玫瑰</strong><br />
						献给彼此信任、长久陪伴的爱人。 <br /> 时间可以磨损感情，却无法磨损爱，真爱永不止息。 <br /> <br /> <strong>心动玫瑰</strong><br />
						献给直露本心，今生钟情的爱人。 <br /> 纵然世事千变万化，你永远是世间最美的牵挂。 <br /> <br /> <strong>惊艳玫瑰</strong><br />
						献给一见钟情、百折不悔的爱人。 <br /> 纵使千山万水阻隔，对你的爱依旧直抵心田。 <br /> <br /> <strong>爱恋玫瑰</strong><br />
						爱是世事荒芜也无法抹灭的英雄梦想。 <br /> 万事沧桑唯有我们的爱恋永世不变。 <br /> <br /> <strong>约定玫瑰</strong><br />
						爱是免你颠沛流离的终生约定。 <br /> 从相遇就已开始渴望今生将你收藏、轻柔安放于心房。 <br />
					</p>
				</div>
			</div>
		
		</div>
		
	</div>
	
	<div style="position:relative;margin-top:2100px">
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
</body>
</html>
