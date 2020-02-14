<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Atelier | Products</title>
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
	<jsp:include page="Main_Upper_RemoveCate.jsp" flush="false"/>

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
			<nav id="colorlib-main-menu" role="navigation" style="margin-top: 100px;">
				<ul>
					<li  style="font-size: 18px"><a href="ATMain">공방 홈페이지</a></li>
					<li  style="font-size: 18px"><a href="ATNotice">공지사항</a></li>
					<li  style="font-size: 18px"><a href="ATSupportMg">응원의 한마디</a></li>
					<li  style="font-size: 18px"><a href="ATMessageWrite" onclick="window.open(this.href, '_blank', 'width=655px,height=650px,toolbars=no,scrollbars=no');return false;">쪽지</a></li>
					<li  style="font-size: 18px"><a href="ATProduct">판매물품</a></li>
					<li  style="font-size: 18px"><a href="#">체험</a></li>
					<li  style="font-size: 18px"><a style="color: brown;" href="ATManager">공방관리</a></li>
				</ul>
			</nav>
		</aside>
	<!-------------------------------------------------------여기까지 좌측바 메뉴입니다.---------------------------------------------------------------------->
		
		<div id="colorlib-main">
			<aside id="colorlib-hero" style="height: 400px; margin-bottom: -10px;">
				<div class="flexslider" style="height: 400px;">
					<ul class="slides" style="height: 400px;">
				   	<li style="background-image: url(resources/AT_front/images/img_bg_1.jpg);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc" style="background: none; top: 200px;">
						   					<h1 style="font-size: 18px; font-weight: 600;">공방의 소개글이 들어갑니다.</h1>
						   					<h2><a href="https://colorlib.com/" target="_blank" style="font-size: 18px; font-weight: 600; color: #A09182; border-bottom: 1px solid #A09182;">공방 사이트 주소</a></h2>
											<p><a class="btn btn-primary btn-learn" style="font-weight: 600;">구독 & 좋아요</a></p>
										</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(resources/AT_front/images/img_bg_2.jpg);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc" style="background: none; top: 200px;">
						   					<h1 style="font-size: 18px; font-weight: 600;">공방의 소개글이 들어갑니다.</h1>
						   					<h2><a href="https://colorlib.com/" target="_blank" style="font-size: 18px; font-weight: 600; color: #A09182; border-bottom: 1px solid #A09182;">공방 사이트 주소</a></h2>
											<p><a class="btn btn-primary btn-learn" style="font-weight: 600;">구독 & 좋아요</a></p>
										</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(resources/AT_front/images/img_bg_3.jpg);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc" style="background: none; top: 200px;">
						   					<h1 style="font-size: 18px; font-weight: 600;">공방의 소개글이 들어갑니다.</h1>
						   					<h2><a href="https://colorlib.com/" target="_blank" style="font-size: 18px; font-weight: 600; color: #A09182; border-bottom: 1px solid #A09182;">공방 사이트 주소</a></h2>
											<p><a class="btn btn-primary btn-learn" style="font-weight: 600;">구독 & 좋아요</a></p>
										</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				  	</ul>
			  	</div>
			</aside>
		
			<div class="colorlib-work">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3" style="text-align: center; right: 2%;">
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
								style="font-weight: 400; font-size: 20px; letter-spacing: 0.5px;">판매중인 상품<hr>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft" style="margin-left: 160px;">
							<div class="project" style="background-image: url(resources/AT_front/images/work-1.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
							<div class="project" style="background-image: url(resources/AT_front/images/work-2.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2 animate-box" data-animate-effect="fadeInLeft">
							<div class="project" style="background-image: url(resources/AT_front/images/work-3.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft" style="margin-left: 160px;">
							<div class="project" style="background-image: url(resources/AT_front/images/work-1.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
							<div class="project" style="background-image: url(resources/AT_front/images/work-2.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2 animate-box" data-animate-effect="fadeInLeft">
							<div class="project" style="background-image: url(resources/AT_front/images/work-3.jpg); width: 350px; height: 280px;">
								<div class="desc" style="text-align: center;">
									<div class="con" style="margin-top: 100px;">
										<span style="font-size: 17px;">CATEGORY : ㅇㅇㅇ</span>
										<h3><a>상품명</a></h3>		
									</div>
								</div>
							</div>
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
	
	
	<!-- MAIN JS -->
	<script src="resources/AT_front/js/main.js"></script>

	</body>
</html>

