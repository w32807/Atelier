<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Atelier | My Page</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/themify-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/style.css"
	type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

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
					<!-- 
					<a href="main" class="hideandshow login-panel" action="logout"><i class="fa fa-user"></i>로그아웃</a>
					 -->
					<script>
						function goPage(){
							var f = document.gologout;
							f.action = "logout";
							f.method = "post";
							f.submit();
						}
					</script>
					<form name="gologout"></form>
					<a href="logout" class="hideandshow login-panel"><i
						class="fa fa-user"></i>로그아웃</a>
					<c:if test="${msg == 'logoutSuccess' }">
						<script type="text/javascript">
							alert('로그아웃을 성공했습니다.');
						</script>
					</c:if>

					<a href="login" class="showandhide login-panel"><i
						class="fa fa-user"></i>로그인</a> <a href="memJoinFrm"
						class="showandhide login-panel"><i class="fa fa-user"></i>회원가입</a>
					<a href="CONotice" class="login-panel"><i class="fa fa-user"></i>고객센터</a>

					<!-- SNS광고란 -->
					<div class="top-social">
						<temp class="hideandshow">${mb.cm_name}님 환영합니다.</temp>
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
							<a href="/"> <img src="./resources/main/img/logo_main.jpg"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<button type="button" class="category-btn">검색창</button>
							<div class="input-group">
								<input type="text" placeholder="원하시는 공방명/상품을 입력해주세요.">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</div>
						</div>
						<!-- 마이페이지 -->
					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right hideandshow">
							<li class="heart-icon"><a href="myPage"> <i
									class="icon_heart_alt"></i> <span>6</span></li>
							<li class="cart-price">MyPage</li>
							</a>

							<li class="cart-icon"><a href="basket"> <i
									class="icon_bag_alt"></i> <span>9</span></li>
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
						<i class="ti-menu"></i> <span>Home</span>
						<ul class="depart-hover">
							<li class="active"><a href="main">Shop Home</a></li>
							<li><a href="ATMain">Atelier Home</a></li>
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


	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="/"><i class="fa fa-home"></i> Home</a> <span>My
							Page</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Blog Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
					<div class="blog-sidebar">
						<div class="profile_form"
							style="border: 2px solid #00000033; text-align: center; border-radius: 30px;">
							<img class="profile_img"
								src="./resources/main/img/blog/profile_sample.jpg"
								style="padding: 30px 0px;">
							<h4>Anne Hathaway</h4>
							<p>sample@gmail.com</p>
						</div>
						<div class="blog-catagory">
							<h4>My Menu</h4>
							<ul>
								<li><a href="myOrder">주문 내역</a></li>
								<li><a href="basket">장바구니</a></li>
								<li><a href="mySubscript">구독 리스트</a></li>
								<li><a href="messager">메세지</a></li>
								<li><a href="myInfoUpdate">내 정보 수정</a></li>
								<li><a href="myChangePwd">비밀번호 변경</a></li>
								<li><a href="myDropout">회원 탈퇴</a></li>
								<li><a href="myAdminRQ"
									onclick="window.open(this.href, '_blank', 'width=655px,height=650px,toolbars=no,scrollbars=no');return false;">관리자에게
										문의하기</a>
							</ul>
						</div>
						<div class="atelier_go">
							<h4>Atelier Menu</h4>
							<ul>
								<li><a href="ATManager">공방 관리</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="col-lg-9 order-1 order-lg-2">
					<!-- Register Section Begin -->
					<div class="register-login-section spad">
						<div class="container">
							<div class="row">
								<div class="col-lg-6 offset-lg-3">
									<div class="login-form">
										<h2>회원 탈퇴</h2>
										<h4 style="text-align:center;">탈퇴 전에 꼭 읽어주세요!</h4>
										<br>
										<p style="text-align:center;">
											사요나라 ㅃㅇㅃㅇ 잘가 안녕 그동안 즐거웠어
											 <br><br>비번 입력하면 끗!
										</p>
										<form action="DropoutProc" method="post">
											<div class="group-input">
												<label for="username">탈퇴할 ID </label> <input
													type="text" id="username" name="cm_id"
													value=${mb.cm_id} readonly>
												
											</div>
											<div class="group-input">
												<label for="pass">Password를 입력해주세요. *</label> <input
													type="text" id="pass" name="cm_pwd" required>
											</div>
										
											<button type="submit" class="site-btn login-btn">
												ㄲㅈ
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

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
							<a href="https://www.instagram.com/"><i
								class="fa fa-instagram"></i></a> <a href="https://twitter.com/"><i
								class="fa fa-twitter"></i></a> <a
								href="https://www.pinterest.co.kr/"><i
								class="fa fa-pinterest"></i></a>
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
						<a href="/"> <img src="./resources/main/img/logo_bottom.png"
							alt="" style="margin-top: 25px;">
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
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
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
	<script src="<c:url value="/resources/main/js/jquery-3.3.1.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/jquery-ui.min.js"/>"></script>
	<script
		src="<c:url value="/resources/main/js/jquery.countdown.min.js"/>"></script>
	<script
		src="<c:url value="/resources/main/js/jquery.nice-select.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/jquery.zoom.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/jquery.dd.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/jquery.slicknav.js"/>"></script>
	<script src="<c:url value="/resources/main/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/main/js/main.js"/>"></script>

	<script type="text/javascript">
    /* ---------------------------------------------------------------------------------------
	 * 기능: 로그인 여부에 따른 버튼 출력여부 결정
	 * 작성자: JSG
	 * 수정자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
    window.onload = function(){
    	$('.hideandshow').hide();
    	var mid = '${mb.cm_id}';
    	var mname = '${mb.cm_name}';
    	console.log('세션값'+'${mb}');
    	console.log(mid);
    	console.log(mname);
    	if(mid != ''){
    		$('.hideandshow').show();
    	}
    	
    	$('.showandhide').show();
    	var mid1 = '${mb.cm_id}';
    	var mname1 = '${mb.cm_name}';
    	console.log('세션값'+'${mb}');
    	console.log(mid1);
    	console.log(mname1);
    	if(mid1 != ''){
    		$('.showandhide').hide();
    	}
    	
    }
    </script>
</body>

</html>