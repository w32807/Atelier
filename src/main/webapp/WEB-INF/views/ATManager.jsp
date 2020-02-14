<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Atelier | My Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="resources/AT_front/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="resources/AT_front/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="resources/AT_front/css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="resources/AT_front/css/flexslider.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="resources/AT_front/css/style.css">
	
	<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/style.css" type="text/css">
    
	<!-- Modernizr JS -->
	<script src="resources/AT_front/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<!-- 상단바 Include -->
	<jsp:include page="Main_Upper.jsp" flush="false"/>

    <!----------------------------------------------------------여기까지 상단바입니다.-------------------------------------------------------------------------->
    
    <!-------------------------------------------------------여기서부터 좌측바 메뉴입니다.---------------------------------------------------------------------->
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight"
				style="overflow-y: hidden; overflow-x: hidden; position: absolute; border-bottom: white; height: auto; min-height: 1400px; z-index: 998;">
			<h1 id="colorlib-logo" style="margin-bottom: 0; text-align: center;">
				<a href="ATDatail" style="background-color: white; padding: 10px 0px;">
				<img src="http://www.topstarnews.net/news/photo/201905/629556_323603_2217.jpg" style="width: 180px; padding-bottom: 0px;"> 
				</a>
				<h1 id="AT_SNS" style="text-align: center;"></h1>	
			</h1>
			
			<nav id="colorlib-main-menu" role="navigation">
				<ul style="margin-top: 10px">
					<li class="colorlib-active" style="font-size: 20px; text-align: center; margin-bottom: 120px;">
						<a href="ATDetail" style="font-weight: bolder;">공방들의 이름ㅋㅋ</a>
					</li>
				</ul>
			</nav>
			<div class="colorlib-middle-icon" style="position: relative; bottom: 40px; font-size: 25px; text-align: center; font-weight: 400; margin: -70px 0; padding: 0 20px;">
				<ul style="padding: 0; list-style: none; display: inline-flex;">
					<li style="margin-right: 10px;">
						<a href="http://www.facebook.com" target="blank" style="color: rgba(0, 0, 0, 0.6);">
							<i class="icon-facebook2"></i>
						</a>
					</li>
					<li style="margin-right: 10px;">
						<a href="http://twitter.com" target="blank" style="color: rgba(0, 0, 0, 0.6);">
							<i class="icon-twitter2"></i>
						</a>
					</li>
					<li style="margin-right: 10px;">
						<a href="http://www.instagram.com" target="blank" style="color: rgba(0, 0, 0, 0.6);">
							<i class="icon-instagram"></i>
						</a>
					</li>
					<li style="margin-right: 10px;">
						<a href="http://www.linkedin.com" target="blank" style="color: rgba(0, 0, 0, 0.6);">
							<i class="icon-linkedin2"></i>
						</a>
					</li>
				</ul>
			</div>
			<nav id="colorlib-main-menu" role="navigation">
				<ul style="margin-top: 100px">
				<li class="colorlib-active" style="font-size: 20px">공방 관리</li>
						<li style="font-size: 18px"><a href="ATManager">공방 관리 홈</a></li>
						<li style="font-size: 18px"><a href="ATInfoModify">공방 페이지 수정</a></li>
						<li style="font-size: 18px"><a href="ATOrderRequest">거래처 조회</a></li>
						<li style="font-size: 18px"><a href="ATOrderState">주문 조회</a></li>
						<li style="font-size: 18px"><a href="ATOrderSearch">발주 조회</a></li>
						<li style="font-size: 18px"><a href="ATProdManage">제품 관리</a></li>
						<li style="font-size: 18px"><a href="#">체험 관리</a></li>
						<li style="font-size: 18px"><a href="ATMessageRQ" onclick="window.open(this.href, '_blank', 'width=655px,height=650px,toolbars=no,scrollbars=no');return false;">메인관리자에게 문의</a></li>
				</ul>
			</nav>
		</aside>
	<!-------------------------------------------------------여기까지 좌측바 메뉴입니다.---------------------------------------------------------------------->
	
		<div id="colorlib-main">
			<div class="colorlib-contact" style="padding-bottom: 7.5em;">
				<div class="container-fluid" style="margin-left: 100px;">
					<div class="row">
						<div class="col-md-12">
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
								style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">공방 정보<hr>
							</h2>
						</div>
					</div>
					<div class="row" style="padding-left: 200px;">
						<div class="col-md-5 col-md-push-6" style="left: 50px;">
							<div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="colorlib-icon" style="background-color: white;">
									<img src="resources/AT_front/images/subscribe.png" style="width: 100px; padding-bottom: 0px;">
								</div>
								<div class="colorlib-icon" style="margin: 0 230px; background-color: white;">
									<img src="resources/AT_front/images/product.png" style="width: 100px; padding-bottom: 0px;">
								</div>
								<div class="colorlib-icon" style="margin: 0 460px; background-color: white;">
									<img src="resources/AT_front/images/machine.png" style="width: 100px; padding-bottom: 0px;">
								</div>
							</div>
							<div class="colorlib-text" style="margin-top: 120px; width: 900px; font-size: 18px;">
								<span><a href="#" style="margin-left: 2px; color: #A09182; font-weight: bolder;">구독자 수</a></span>
								<span style="font-weight: bolder;">${subNum}</span>
								<span><a href="#" style="margin-left: 125px; color: #A09182; font-weight: bolder;">등록된 상품</a></span>
								<span style="font-weight: bolder;">${prodNum}</span>
								<span><a href="#" style="margin-left: 130px; color: #A09182; font-weight: bolder;">제품 오더</a></span>
								<span style="font-weight: bolder;">${orderNum}</span>
							</div>
						</div>
						<div class="col-md-7 col-md-pull-5">
							<div class="row">
								<div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
									
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="colorlib-services" style="margin-left: 100px;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3">
						
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
								style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">발주 정보<hr></h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6"   style="left: 50px">
							<c:forEach begin="0" step="2" var="atmList" items ="${atmList}">
							<div class="colorlib-feature animate-box"
								data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
								<div class="colorlib-icon" style="width: 130px; height: 130px;">
									<i class="icon-tag"></i>
								</div>
								<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">
									<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">
										<b>${atmList.ro_type}</b>
									</h3><br>
										<b>날짜</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_dateSimple}</span><br>
										<b>수량</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_count}</span><br>
										<b>단가</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_rm_price}원</span><br>
								</div>
							</div>
							</c:forEach>
						</div>
						<div class="col-md-6" style="left: -70px;">
						<c:forEach begin="1" step="2" var="atmList" items ="${atmList}">
							<div class="colorlib-feature animate-box"
								data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
								<div class="colorlib-icon" style="width: 130px; height: 130px;">
									<i class="icon-paperplane"></i>
								</div>
								<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">
									<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">
										<b>${atmList.ro_type}</b>
									</h3><br>
										<b>날짜</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_dateSimple}</span><br>
										<b>수량</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_count}</span><br>
										<b>단가</b><span>&nbsp;&nbsp;&nbsp;${atmList.ro_rm_price}원</span><br>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 하단바 Include -->
	<jsp:include page="Main_Footer.jsp" flush="false"/>

    <!-- Js Plugins -->
    <script src="resources/main/js/jquery-3.3.1.min.js"></script>
    <script src="resources/main/js/bootstrap.min.js"></script>
    <script src="resources/main/js/jquery-ui.min.js"></script>
    <script src="resources/main/js/jquery.countdown.min.js"></script>
    <script src="resources/main/js/jquery.nice-select.min.js"></script>
    <script src="resources/main/js/jquery.zoom.min.js"></script>
    <script src="resources/main/js/jquery.dd.min.js"></script>
    <script src="resources/main/js/jquery.slicknav.js"></script>
    <script src="resources/main/js/owl.carousel.min.js"></script>
    <script src="resources/main/js/main.js"></script>
    
	<!-- jQuery -->
	<script src="resources/AT_front/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resources/AT_front/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resources/AT_front/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resources/AT_front/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="resources/AT_front/js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="resources/AT_front/js/sticky-kit.min.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="resources/AT_front/js/google_map.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="resources/AT_front/js/main.js"></script>

	</body>
</html>

