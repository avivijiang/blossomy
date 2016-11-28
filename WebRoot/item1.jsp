<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/welcometop.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<style>
.right{margin-top:0px;}
</style>
</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="container">
		<div class="contain_details">
			<!--产品信息-->
			<div class="details_num1">
				<div class="details_num1_left">
					<div class="li_left_bgimg"></div>
					<div class="li_left_xl">Classic<br/>经典永续</div>
					<div class="li_left_name" style="color:#941b1e">
						经典
						<!--非珠宝类,显示颜色-->
						<span class="span1">朱砂</span>
					</div>
					<!--待定-->
				</div>
				<!--轮播图-->
				<div class="main_jewel" style="position: relative">
					<div class="jewel_window">
						<div class="image_reel1">
							<img id="detail_main_img" style="width: 400px;height: 400px;" src="http://www.roseonly.com.cn/upload/products/14701945928768231.png"
								border="0" alt="经典-朱砂" title="经典-朱砂" />
						</div>
					</div>
				</div>
				<!--轮播图 end-->
				<div class="details_num1_right">
					<!--非珠宝类,显示颜色-->
					<div class="right_tit"><%=map.get("proname")%></div>
					<div class="right_xx"><%=map.get("profiles") %></div>
					<br/>
					<div class="right_pay">
					<%=map.get("proprice") %></div>
					<br/>
					<!--产品筛选 end-->
					<div class="right_select">
						<span class="right_font_tit">购买数量：</span>
						<a href="javascript:void(0);" class="right_down"><img border="0" alt="减" src="http://www.roseonly.com.cn/assets/roseonly/images/icon_down.png"></a>
						<input type="text" value="1" class="right_number">
						<a href="javascript:void(0);" class="right_up"><img border="0" alt="加" src="http://www.roseonly.com.cn/assets/roseonly/images/icon_up.png"></a>
						<div class="clear"></div>
					</div>
					<a href="javascript:tobuy(12);" class="button_bar1 unsold" name='for99clickToBuy'>立即购买</a>
					<a href="javascript:tocart(12);" class="button_bar2 unsold" name='for99clickToCar'>加入购物车</a>
					<a href="javascript:;" class="button_bar1" id="soldText" style="display:none"></a>
					<!-- Baidu Button END -->
					<div class="clear"></div>
					<div class="jewel_paging" style="padding-top:70px">
						<div>&lt</div>
						<a href="javascript:;" rel="1" class="img_selected"><img class="detail_img" border="0" src="http://www.roseonly.com.cn/upload/products/14701945928768231.png" /></a>
						<a href="javascript:;" rel="2"><img class="detail_img" border="0" src="http://www.roseonly.com.cn/upload/products/14697834422372911.png" /></a>
						<a href="javascript:;" rel="3"><img class="detail_img" border="0" src="http://www.roseonly.com.cn/upload/products/14697834422837817.png" /></a>
						<a href="javascript:;" rel="4"><img class="detail_img" border="0" src="http://www.roseonly.com.cn/upload/products/14697834423151620.png" /></a>
						<a href="javascript:;" rel="5"><img class="detail_img" border="0" src="http://www.roseonly.com.cn/upload/products/14697834423632274.png" /></a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div><img src="http://www.roseonly.com.cn/assets/roseonly/images/xq_08.png" /></div>
			<!--产品参数-->
			<!--产品参数end-->

			<!--详情图文信息-->
			<div class="div_details div_details_bg">
				<div class="details_nav1">
					<div class="f14">Love Story<br/><b class="f16">真爱物语</b></div>
					<p>-</p>
					<p class="f14"><strong></strong><strong>献给相信爱可以打败时间、</strong><br />
						<strong> 越过生死、忠贞不渝的人们。</strong><br />
						<br /> roseonly『经典永续』鲜花玫瑰，
						<br /> 真爱永不落幕。
						<br /> “roseonly,一生只送一人”
						<br /></p>
				</div>
				<div class="details_img"><img style="width:620px;height:465px;" src="http://www.roseonly.com.cn/upload/products/14605349434972908.jpg" alt="经典-朱砂"
						title="经典-朱砂" /></div>
			</div>
			<div class="div_details">
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14295877975059401.jpg" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
				<div class="details_nav1">
					<div class="f14">Designer Talk<br/><b class="f16">设计师物语</b></div>
					<p>-</p>
					<p class="f14"><strong>遍访世界玫瑰园，万里择一只为你<br />
</strong><br /> 在赤道上的玫瑰花田，沐浴365天的阳光和雨水，
						<br /> 才有超长浓艳花期、及在花园中花枝挺拔至1.5米的厄瓜多尔玫瑰。
						<br /> 精选高达3英寸的罕世花蕾，每一朵如心脏般大小，
						<br /> roseonly，只选全世界百里挑一的鲜花臻品。
						<br />
						<br />
						<br />
						<strong>经典玫瑰，献给铭刻于心的真爱<br />
<div>
	<br />
</div>
</strong> 与爱配料，调制魔药，亲吻花瓣之时，魔力挥散。<br /> 以19支厄瓜多尔矜贵玫瑰，诠释和见证长久不变的爱恋。
						<br /> 经典持久的爱情和爱人，你值得拥有。
						<br /></p>
				</div>
			</div>
			<div class="div_details div_details_bg">
				<div class="details_nav1">
					<div class="f14">Details<br/><b class="f16">产品物语</b></div>
					<p>-</p>
					<p class="f14"><strong></strong>玫瑰朵数：19朵<br />
						<span>花枝长度：80cm<span>(根据花盒包装有所修剪）</span></span><br /> 礼盒尺寸：长81cm*宽21cm*高13cm
					</p>
				</div>
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14299533453599379.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
			</div>
			<div class="div_details ">
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14585438467799310.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
				<div class="details_nav1">
					<p class="f14">
						<strong>朱砂玫瑰</strong><br /> 爱是心口的一粒朱砂痣。
						<br /> 以不灭的爱火和浪漫，定义至死不渝的深刻和浪漫。
						<br />
						<br />
						<strong>情动玫瑰</strong><br /> 此生心动，此时情动，正是爱的神力。
						<br /> 以电光火石的爱意，献给全世界生死热恋的人们。
						<br />
						<br />
						<strong>初心玫瑰</strong><br /> 爱再无条件，历经世事而初心依旧。
						<br /> 以毫无保留的付出，去回应你无条件的深深爱意。
						<br />
						<br />
						<strong>红颜玫瑰</strong><br /> 献给彼此信任、长久陪伴的爱人。
						<br /> 时间可以磨损感情，却无法磨损爱，真爱永不止息。
						<br />
						<br />
						<strong>心动玫瑰</strong><br /> 献给直露本心，今生钟情的爱人。
						<br /> 纵然世事千变万化，你永远是世间最美的牵挂。
						<br />
						<br />
						<strong>惊艳玫瑰</strong><br /> 献给一见钟情、百折不悔的爱人。
						<br /> 纵使千山万水阻隔，对你的爱依旧直抵心田。
						<br />
						<br />
						<strong>爱恋玫瑰</strong><br /> 爱是世事荒芜也无法抹灭的英雄梦想。
						<br /> 万事沧桑唯有我们的爱恋永世不变。
						<br />
						<br />
						<strong>约定玫瑰</strong><br /> 爱是免你颠沛流离的终生约定。
						<br /> 从相遇就已开始渴望今生将你收藏、轻柔安放于心房。
						<br />
					</p>
				</div>
			</div>
			<div class="div_details div_details_bg ">
				<div class="details_nav1">
					<p class="f14">
						<span></span><span><strong>无可复制的roseonly玫瑰<br />
</strong></span><br />
						<span>1%的严苛甄选，全程无菌剪切，保证罕世玫瑰的持久生命力，</span><br />
						<span>2℃低温冷链包装、无菌储存、专线运输，</span><br />
						<span>从厄瓜多尔的玫瑰园，到您的手中，72小时内严控完成。</span><br />
						<br />
					</p>
				</div>
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14295877975056243.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
			</div>
			<div class="div_details ">
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14295877975052071.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
				<div class="details_nav1">
					<p class="f14">
						<span><strong>象征坚定不渝的诺誓礼盒<br />
</strong></span><span><br />
</span><span>roseonly的玫瑰大师，让每道工序为玫瑰而生。<br />
<br />
</span><span><strong>会呼吸的roseonly花盒</strong></span><br />
						<span>独特镂空设计，会呼吸的盒子，让娇艳的玫瑰时刻呼吸，</span><br />
						<span>更让玫瑰免受挤压、摩擦，<br />
玫瑰到达您手与在花园中时一模一样。</span><br />
						<br />
					</p>
				</div>
			</div>
			<div class="div_details div_details_bg ">
				<div class="details_nav1">
					<p class="f14">
						<span></span><span><strong>沉静与理性的roseonly灰<br />
<br />
</strong></span><span>经典roseonly灰，诠释理性、持守、稳固的力量，<br />
</span><span>象征坚不可摧的堡垒，呵护爱情初放的娇艳。</span><span></span><br />
					</p>
				</div>
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14525034352536899.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
			</div>
			<div class="div_details ">
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14302144760822616.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
				<div class="details_nav1">
					<p class="f14">
						<span><strong>新娘婚纱的花束包装<br />
</strong></span><br />
						<span>以圣洁的婚纱裙摆包裹鲜花，搭配精致的roseonly丝带，</span><br />
						<span>象征着高贵优雅的爱意，唯愿为你兑现真爱承诺。</span><span></span><br />
						<br />
					</p>
				</div>
			</div>
			<div class="div_details div_details_bg ">
				<div class="details_nav1">
					<p class="f14">
						<b>真爱证明<br />
<br />
</b>roseonly真爱证明卡，落笔为证，见证今生挚爱。<br /> 证明卡上附有二维码，
						<br /> 绑定收礼人的名字，此生不能更改，
						<br /> 用手机扫一扫，接收TA在下单时留下的倾情之语。
					</p>
				</div>
				<div class="details_img"><img class="lazy" data-original="http://www.roseonly.com.cn/upload/products/14308142490757883.png" src="http://www.roseonly.com.cn/assets/roseonly/images/default.png"
						alt="经典-朱砂" title="经典-朱砂" /></div>
			</div>
			<div class="wxts"><img src="http://www.roseonly.com.cn/upload/syspic_new/14744289812792308.jpg"></div>
			<div class="details_mostcar">
				<div class="f14">Caring Notes<br/><b class="f16">保养物语</b></div>
				<br>
				<p style="font-weight: bold;">细心呵护保养，成就roseonly永恒之美</p>
				<br>
				<a href="http://www.roseonly.com.cn/about/huhuatiaoli.html">点击查看详情</a>
			</div>
			<div class="details_mostcar mt20">
				<div class="f14">Exchange<br/><b class="f16">退换条例</b></div>
				<br>
				<p style="font-weight: bold;">下单后有任何问题，请及时联系客服</p>
				<br>
				<a href="http://www.roseonly.com.cn/about/tuihuantiaoli.html">点击查看详情</a>
			</div>
			<!--详情图文信息-->
			<!--产品推荐-->
			<!--产品推荐 end-->
		</div>
		<div class="main_view_line2"></div>
		<!--产品信息 end-->
	</div>
	</div>
	<script type="text/javascript" src="http://www.roseonly.com.cn/scripts/myjs/jquery.select.js"></script>
	<script type="text/javascript" src="http://www.roseonly.com.cn/scripts/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="http://www.roseonly.com.cn/index/myjs/product_ctime.js"></script>

	<!-- 聚合 -->

	<!-- 99click end -->

	<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

	<noscript><img src="//stats.ipinyou.com/adv.gif?a=t5s..QA4PSdkyvq6N0CHHXwj6f0&e=" style="display:none;" /></noscript>

	<div class="footer">
		<div class="footer_box">
			<div class="new_l">
				<a href=""><img src="image/logo.jpg" alt="">
				</a>
			</div>
			<ul>
				<p>新手指南</p>
				<li><a href="http://www.roseonly.com.cn/about/gouwuliucheng.html" target="_blank">购物流程</a></li>
				<li><a href="http://www.roseonly.com.cn/about/zhifufangshi.html" target="_blank">支付方式</a></li>
				<li><a href="http://www.roseonly.com.cn/about/changjianwenti.html" target="_blank">常见问题</a></li>
			</ul>
			<ul>
				<p>售后服务</p>
				<li><a href="http://www.roseonly.com.cn/about/tuihuantiaoli.html" target="_blank">退款说明</a></li>
				<li><a href="http://www.roseonly.com.cn/about/huhuatiaoli.html" target="_blank">保养物语</a></li>
			</ul>
			<ul>
				<p>物流配送</p>
				<li><a href="http://www.roseonly.com.cn/about/peisongfangshi.html" target="_blank">配送方式</a></li>
				<li><a href="http://www.roseonly.com.cn/about/peisongfuwu.html" target="_blank">配送服务</a></li>
			</ul>
			<ul style="background:none">
				<p>关于我们</p>
				<li><a href="http://www.roseonly.com.cn/about/pinpaijieshao.html" target="_blank">品牌介绍</a></li>
				<li><a href="http://www.roseonly.com.cn/about/guanyuwomen.html" target="_blank">联系我们</a></li>
				<li><a href="http://www.roseonly.com.cn/about/jiaruwomen.html" target="_blank">加入我们</a></li>
			</ul>
			</a>
		</div>

	</div>
	<div id='preview' class='previewShowWindow' style="display:none;">
		<img id='pi' src='http://www.roseonly.com.cn/index/images/QR-big.jpg' alt="扫描二维码" />
	</div>
	</div>
	<style>
		#gift {
			width: 45px;
			height: 45px;
			background: #969696;
			position: fixed;
			bottom: 155px;
			right: 5px;
			border-radius: 8px;
			z-index: 999
		}
		
		#gift a:hover {
			width: 45px;
			height: 45px;
			background: #414141;
			position: fixed;
			bottom: 155px;
			right: 5px;
			border-radius: 8px;
		}
		
		.index_ewm {
			position: fixed;
			display: none;
			bottom: 0;
			right: 60px;
		}
	</style>
	<!--<div id="gift">
	<a class="go_top" href="javascript:;" onmouseover="$('.index_ewm').show();" onmouseout="$('.index_ewm').hide();"><img  style="width:42px;margin-top:1px" src="http://www.roseonly.com.cn/upload/syspic_new/14703636853368914.svg" /></a>
	<img src="http://www.roseonly.com.cn/upload/syspic_new/14701101941932202.jpg" class="index_ewm" />
</div> -->
	<div id="back-to-top">
		<!--<a href="http://im.roseonly.com.cn/" target="_blank"><img src="http://www.roseonly.com.cn/index/images/right_tb01.png" alt="在线咨询"  /></a>-->
		<!--<img src="http://www.roseonly.com.cn/index/images/right_tb02.png" alt="二维码" path="http://www.roseonly.com.cn/index/images/QR-big.jpg" onMouseOver="showPic(this)" onMouseOut="closeShow(this);" />-->
		<a class="go_top" href="javascript:;"><img src="http://www.roseonly.com.cn/upload/syspic_new/14703637041003761.svg" />
		</a>
	</div>
	<!--客服开始-->
	<div id="zhichiBtnBox">
		<a id="zhichiBtn" href="javascript:;" target="_blank">
			<img src="http://www.roseonly.com.cn/upload/syspic_new/14703636967439422.svg">
		</a>
		<div class="mes_content">
			<div class="mes_icon">
				<div class="tel_sj"><img src="http://www.roseonly.com.cn/upload/syspic_new/14769441969842358.png" alt="">
				</div>
				<div class="tel_icon">
					<p class="tel_txt">联系电话</p>
					<p class="tel_phone">400-1314-520</p>
				</div>
				<div class="tel_line"></div>
				<div class="zxkf_txt">
					<a href="http://www.sobot.com/chat/pc/index.html?sysNum=1fe87079144a4587872a516c25aabd86">在线客服</a>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript" src="http://orders.roseonly.com.cn/resources/js/seo/click99/o_code.js?roseonlyiver=123"></script>


	<noscript><img src="//stats.ipinyou.com/adv.gif?a=t5s..QA4PSdkyvq6N0CHHXwj6f0&e=" style="display:none;" /></noscript>
	</body>

</html>