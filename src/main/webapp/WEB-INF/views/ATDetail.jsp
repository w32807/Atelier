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
	<!-- 상단바 -->
	<!-- 이메일 전화번호 회원가입 로그인 -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                <!-- 헤더 이메일
                    <div class="mail-service">
                        <i class=" fa fa-envelope"></i>
                    </div>
                     -->
                     <!-- 헤더 전화번호 
                    <div class="phone-service">
                        <i class=" fa fa-phone"></i>
                    </div>
                     -->
                </div>
                <!-- 로그인, 회원가입 -->
                <div class="ht-right">
                    <a href="login" class="login-panel"><i class="fa fa-user"></i>로그인</a>
                    <a href="memJoinFrm" class="login-panel"><i class="fa fa-user"></i>회원가입</a>
                    <a href="CONotice" class="login-panel"><i class="fa fa-user"></i>고객센터</a>
                    <!-- 히든 버튼 처리
					<a href="#" class="login-panel"  style="visibility:hidden;"><i class="fa fa-user"></i>로그아웃</a>
					-->
                    <!-- SNS광고란 -->
                    <div class="top-social">
                        <a href="https://www.facebook.com/"><i class="ti-facebook"></i></a>
                        <a href="https://twitter.com/"><i class="ti-twitter-alt"></i></a>
                        <a href="https://www.instagram.com/"><i class="ti-linkedin"></i></a>
                        <a href="https://www.pinterest.co.kr/"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="/">
                                <img src="./resources/main/img/logo_main.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <button type="button" class="category-btn">검색창</button>
                            <div class="input-group">
                                <input type="text" placeholder="원하시는 공방명/상품을 입력해주세요.">
                                <button type="button"><i class="ti-search"></i></button>
                            </div>
                        </div>
                        <!-- 마이페이지 -->
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">
	                            <li class="heart-icon">
	                                <a href="myPage">
	                                    <i class="icon_heart_alt"></i>
	                                    <span>6</span>
	                            </li>
	                            <li class="cart-price">MyPage</li>
	                            </a>
	                            
	                            <li class="cart-icon">
	                                <a href="basket">
	                                    <i class="icon_bag_alt"></i>
	                                <span>9</span>
	                            </li>
                            <li class="cart-price">basket</li>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>Home</span>
                        	<ul class="depart-hover" style="z-index: 999;">
                            <li class="active"><a href="main">Shop Home</a></li>
                            <li><a href=ATMain>Atelier Home</a></li>
                            <li><a href="/">Experience</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                    	<!-- 선택된 카테고리 색 변경
                        <li class="active">
                         -->
                        <li><a href="prodList_All">전체 보기</a></li>
                        <li><a href="prodList_Clo">의류</a></li>
                        <li><a href="prodList_Bag">가방</a></li>
                        <li><a href="prodList_shoes">신발</a></li>
                        <li><a href="prodList_Wallet">지갑</a></li>
                        <li><a href="prodList_Belt">벨트</a></li>
                        <li><a href="prodList_Gloves">장갑</a></li>
                        <li><a href="prodList_House">가구</a></li>
                        <li><a href="prodList_Etc">기타 악세사리</a></li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->
<!-- 상단바 End -->

    <!-------------------------------------------------------여기서부터 좌측바 메뉴입니다.---------------------------------------------------------------------->
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight"
				style="overflow-y: hidden; overflow-x: hidden; position: absolute; border-bottom: white; height: auto; min-height: 1400px; z-index: 998;">
			<h1 id="colorlib-logo" style="margin-bottom: 0; text-align: center;">
				<a href="ATDatail" style="background-color: white; padding: 10px 0px;">
				<img src="http://www.topstarnews.net/news/photo/201905/629556_323603_2217.jpg" width="180px" height="180px"> 
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
	
	<!-- 하단바 -->
	<!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <ul>
                            <li>Address: 인천 미추홀구 학익동 663-1 태승빌딩 5층</li>
                            <li>Phone: 032-876-3332</li>
                            <li>Email: whdgus5841@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                            <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                            <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.pinterest.co.kr/"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                        	<li><a href="CONotice">고객 센터</a></li>
                            <li><a href="CONotice">약관</a></li>
                            <li><a href="CONotice">개인 정보 처리 방침</a></li>
                            <li><a href="CONotice">QNA</a></li>
                            <li><a href="CONotice">Contact US</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="myPage">myPage</a></li>
                            <li><a href="basket">Basket</a></li>
                            <li><a href="ATRegist">공방 회원 신청</a></li>
                            <li><a href="ADNoticeList">Admin</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                         <a href="/">
                                <img src="./resources/main/img/logo_bottom.png" alt="" style="margin-top: 25px;">
                            </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="./resources/main/img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
<!-- 하단바 End -->

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

