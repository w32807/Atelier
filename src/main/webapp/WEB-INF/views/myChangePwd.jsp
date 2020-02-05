<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<script type="text/javascript">
      		window.onload = function() {//이 페이지가 실행 되면, 이 함수를 실행해라
				var chk = "${check}";
				if(chk == "fail"){
					alert("정보 수정 실패");
					location.reload(true);//화면을 다시 한번 불러오면서 check를 리셋함 
				}
			}
</script>
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
						<ul class="nav-right">
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
						<div class="blog-tags">
							<h4>Product Tags</h4>
							<div class="tag-item">
								<a href="#">Towel</a> <a href="#">Shoes</a> <a href="#">Coat</a>
								<a href="#">Dresses</a> <a href="#">Trousers</a> <a href="#">Men's
									hats</a> <a href="#">Backpack</a>
							</div>
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
										<h2>비밀번호 변경</h2>
										<form name="myChangePwd" action="myChangePwdProc" method="get">
											<input type="hidden" name="cm_id" value="${mb.cm_id}">
											<div class="group-input">
												<label for="CM_PWD">기존 Password를 입력해주세요. *</label> <input
													type="text" name="pwd1" id="CM_PWD" required>
											</div>
											<div class="group-input">
												<label for="CM_PWD">변경할 Password를 입력해주세요. *</label> <input
													type="text" name="pwd2" id="CM_PWD" required
													onblur=checkvalue();>
											</div>
											<div class="group-input">
												<label for="CON_CM_PWD">변경할 Password를 재입력 해주세요.*</label> <input
													type="text" name="pwd3" id="COM_CM_PWD" required
													onblur=checkvalue();>
											</div>
											<input type="text" name="status"
												style="border: 0; color: highlight; font size: 12px 굴림; width: 160"
												readonly onfocus="this.blur();" value="[ 비밀번호를 입력해 주세요 ]">
											<div class="group-input gi-check">
												<div class="gi-more">
													<!-- 비밀번호 찾기 
                                    <a href="#" class="forget-pass">passward 찾기</a>
                                    -->
												</div>
											</div>
											<button type="submit" class="site-btn login-btn">비밀번호
												변경하기</button>
										</form>
										<div class="switch-login">
											<a href="login" class="or-login">로그인</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Register Form Section End -->
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
<!-- 비밀번호 확인 -->
<script language='javascript'>

// checkvalue 기능
function checkvalue() {

// a 텍스트 필드와 b 텍스트 필드 중 둘다 값이 있을 때
if(memberJoinFrm.pwd2.value && memberJoinFrm.pwd3.value) {

  // 두 필드의 값이 서로 다를 때
  if(memberJoinFrm.pwd2.value!=memberJoinFrm.pwd3.value){

   // status 필드에 일치하지 않는다는 문장 출력
   memberJoinFrm.status.value = "[ 일치하지 않습니다 ]";

   // 그에 맞게 길이 수정
   memberJoinFrm.status.style.width = 120;

  // 두 필드의 값이 동일 할 때
  } else {

   // status 필드에 일치한다는 문장 출력
   memberJoinFrm.status.value = "[ 일치합니다 ]";

   // 역시 그에 맞게 길이 수정
   memberJoinFrm.status.style.width = 83;
  }

// a 텍스트 필드와 b 텍스트 필드 두중하나라도 값이 없을 때
} else {

  // 아무것도 입력이 안 되어 있으므로 비밀번호를 입력해 달라는 메세지를 status 필드에 출력 함
  memberJoinFrm.status.value = "[ 비밀번호를 입력해 주세요 ]";

  // 그에 맞게 길이 수정
  memberJoinFrm.status.style.width = 160;
}

}

</script>
</body>

</html>