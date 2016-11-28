<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>未闻花名</title>
<link rel="Shortcut Icon" href="image/blogo.ico" />
<link href="css/bootstrap/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/newtop.css">
<link rel="stylesheet" href="css/re.css">
<link rel="stylesheet" href="css/cart.css">
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
	<div class="order" id="efg">
		<div class="shopping">
			<div class="shop-a">
				<div class="shop-left" style="width:800px">
					我的购物车
					<!--    
					<span style="margin-left:20px;font-size:14px;color:red;" id="addChocolateSpan"><input type="checkbox" id='addChocolate'  />单笔订单满999元，即可以699元购买价值999元柔情嫣红永生玫瑰</span>
					
					-->
				</div>
				<a href="javascript:void(0);" class="shop-right" id="cart_del_all">清空购物车</a>
			</div>
			<table class="shopping_cart" border="0" cellspacing="0"
				cellpadding="0" data-shopid="0">
				<tbody>
					<tr class="shopping_cart_title">
						<td width="110">序号</td>
						<td width="110">品牌</td>
						<td width="420">商品名称</td>
						<td width="120">单价</td>
						<td width="13"></td>
						<td width="60">数量</td>
						<td width="13"></td>
						<td>操作</td>
					</tr>
					<tr height="120" id="cart_tr_12" data-id="12" style="height:120px">
						<td>1</td>
						<td>blossomy</td>
						<td><img
							src="image/cart1.png"
							class="shopping_cart_img" alt="产品图" style="cursor:pointer;"
							onclick="window.open('http://www.roseonly.com.cn/item/12.html')">
							<div class="shopping_cart_name">经典永续-经典-朱砂-19支</div></td>
						<td class="td_price_12">￥199.0</td>

						<!-- 如果不是3467巧克力，正常显示 -->
						<td><a href="javascript:void(0)" class="cart_down"><img
								border="0" class="jia_jian" alt=""
								src="image/cart02.png">
						</a></td>
						<td><input type="text" value="1" id="cart_count_12"
							data-num="5775" class="shopping_cart_sl"></td>
						<td align="right"><a href="javascript:void(0);"
							class="cart_up"><img border="0" class="jia_jian" alt=""
								src="image/cart03.png">
						</a></td>
						
						<td><a href="javascript:void(0)" class="cart_del">删除</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="cart_total">
				合计：￥ <font id="cart_total">1999.0</font>
			</div>
			<input type="image" class="cart_button1" id="cart_pay"
				src="http://orders.roseonly.com.cn/resources/images/once.jpg">
			<input type="image" class="cart_button2"
				onclick="window.location='http://www.roseonly.com.cn'"
				src="http://orders.roseonly.com.cn/resources/images/go-on.jpg">
		</div>
		<div class="clear"></div>
		<div class="help-right">
			<div class="help-nav">订单帮助</div>
			<p>热线电话:18702515346</p>
			<p>
				客服邮箱:<a href="mailto:service@roseonly.com">782238049@qq.com</a>客服工作时间：周一至周日9:00-21:00
			</p>
			<p>如果您在下单过程中遇到问题，请与我们联系。因为鲜花商品对配送时效有特殊要求，订购后请随时登录查询物流状态。</p>
		</div>
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
</body>
<script src="js/jQuery/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>

</html>
