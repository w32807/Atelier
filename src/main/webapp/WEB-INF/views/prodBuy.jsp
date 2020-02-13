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
<title>Atelier | Purchase</title>

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
<style type="text/css">
	.count {
		margin-right: 30px;
	}
	.prodInfo{
		width: 30px;
	}
</style>
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
					<div class="breadcrumb-text product-more">
						<a href="main"><i class="fa fa-home"></i> Home</a> <a
							href="prodList_All">Shop</a> <span>Purchase</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Shopping Cart Section Begin -->
	<section class="checkout-section spad">
		<div class="container">
			<form action="orderInsert" class="checkout-form" method="post">
				<div class="row">
					<div class="col-lg-6">
						<!-- 로그인 화면으로 가기 -->
						<div class="checkout-content">
							<a href="login" class="content-btn">로그인 화면으로 가기</a>
						</div>
						<!--  로그인 화면으로 가기 끝 -->
						<h4>결제하기</h4>
						<hr>
						<h4>주문자 정보</h4>
						<!-- row 시작 -->
						<div class="row">
							<!--  첫이름 마지막 이름 
                            <div class="col-lg-6">
                                <label for="fir">First Name<span>*</span></label>
                                <input type="text" id="fir">
                            </div>
                            <div class="col-lg-6">
                                <label for="last">Last Name<span>*</span></label>
                                <input type="text" id="last">
                            </div>
                            -->
							<div class="col-lg-12">
								<label for="zip"></label>주문자 성명 <input  type="text" id="senderName" required value="${mb.cm_name}" readonly="readonly">
							</div>
							<div class="col-lg-12">
								<label for="zip"></label>주문자 전화번호 <input type="text" id="senderPhone" required value="${mb.cm_phone}">
							</div>

							<h4>받는 사람</h4> 
							
							<div class="col-lg-12">
								<label for="zip">받는사람 성명<span style="margin-left: 8px; font-size: 13px;">주문자와 동일
								<input id="receiver" type="checkbox" style="width: 13px; margin-left: 5px; margin-top: -8px; position: absolute;"></span></label> 
								<input type="text" id="receiverName" name="receiverName" required value="">
							</div>
							
							<div class="col-lg-12">
								<label for="zip">받는사람 전화번호</label> <input type="text" id="receiverPhone" name="receiverPhone" required value="">
							</div>
							<!--  탭시작 -->
							<div class="product-tab">
								<div class="tab-item">
									<ul class="nav" role="tablist">
										<li><a id="tab1" class="active" data-toggle="tab" href="#tab-1"
											role="tab">배송지1</a></li>
										<li><a id="tab2" data-toggle="tab" href="#tab-2" role="tab">배송지2</a>
										</li>
										<li><a id="tab3" data-toggle="tab" href="#tab-3" role="tab">배송지3</a>
										</li>
									</ul>
								</div>
								
								<!-- 탭시작 -->
								<div class="tab-item-content">
									<div class="tab-content">
										<div class="tab-pane fade-in active" id="tab-1"
											role="tabpanel">
											<div class="product-content">
												<div class="row">
													<div class="col-lg-12">
														<h5>
															주소<span>*</span>
														</h5>
														<hr>
														<label for="street"></label> <input type="text"
															id="addr1" class="street-first" value="${mb.cm_addr}"> 
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="tab-2" role="tabpanel">
											<div class="product-content">
												<div class="row">
													<div class="col-lg-12">
														<h5>
															주소<span>*</span>
														</h5>
														<hr>
														<label for="street"></label> <input type="text"
															id="addr2" class="street-first" value="${mb.cm_addr2}"> 
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="tab-3" role="tabpanel">
											<div class="product-content">
												<div class="row">
													<div class="col-lg-12">
														<h5>
															주소<span>*(직접입력)</span>
														</h5>
														<hr>
														<label for="street"></label> <input type="text"
															id="addr3" class="street-first">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 탭시마이 -->
						</div>
						<!-- row 끝 -->
					</div>
					<div class="col-lg-6">
						<hr>
						<div class="place-order">
							<!-- Breadcrumb Section Begin -->
							<div class="breacrumb-section">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="breadcrumb-text product-more">
												<a href="basket"><i class="icon_bag_alt"></i> 장바구니</a> <a
													href="prodBuy"><p style="color: red">주문결제</p></a> <span>주문완료</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Breadcrumb Section Begin -->
							<div class="order-total">
								<ul class="order-table">
									<li>Product <span style="margin-right: -5px;">Total</span><span class="count prodInfo">수량</span>
																							<span class="count prodInfo" style="margin-right: 22px;">단가</span></li>
									<li class="fw-normal">배송비 무료 <span class="prodInfo">Free</span></li>
									 <c:forEach var="pdDto" items="${orderedProdList}">
									<li class="fw-normal">${pdDto.pd_name} <span class="prodInfo">${pdDto.pd_price*pdDto.pd_numofstock}
										</span><span class="count prodInfo">${pdDto.pd_numofstock}</span><span class="count prodInfo">${pdDto.pd_price}</span></li>
										<input type="hidden" name="orderProdList" value="${pdDto.pd_code}"/>
										<input type="hidden" name="orderProdCount" value="${pdDto.pd_numofstock}"/>
										<input type="hidden" name="orderProdPrice" value="${pdDto.pd_price}"/>
									</c:forEach>
										<input type="hidden" id="orderAddr" name="orderAddr" value="${mb.cm_addr}"/>			
									
									<li class="total-price">Total<span class="prodInfo">${totalPrice}</span></li>
								</ul>
								<div class="payment-check">
									<div class="pc-item">
										<label for="pc-check"> 카드결제 <input type="checkbox"
											id="pc-check"> <span class="checkmark"></span>
										</label>
									</div>
									<div class="pc-item">
										<label for="pc-paypal"> 핸드폰결제 <input type="checkbox"
											id="pc-paypal"> <span class="checkmark"></span>
										</label>
									</div>
								</div>
								<div class="order-btn">
									<button id="orderInsertBtn" type="submit" class="site-btn place-btn">주문하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

	<!-- 파트너 로고 삭제 
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
     -->

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
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery.zoom.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery.dd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/main/js/main.js"></script>
	<script>
function btn(){
    alert('주문이 완료되었습니다!');
}

    
		$("#receiver").change(function() {

			var receiverName = $("#senderName").val();
			var receiverPhone = $("#senderPhone").val();
			if ($("#receiver").is(":checked")) {
				$("#receiverName").val(receiverName);
				$("#receiverPhone").val(receiverPhone);

			} else {
				$("#receiverName").val('');
				$("#receiverPhone").val('');

			}
		});

		$("#orderInsertBtn").click(function() {

			if (confirm("결제를 진행하시겠습니까?")) {
				$("#orderInsert").submit();
			}
		})

		
		$("#tab1").click(function() {
			var addr1 = $("#addr1").val();
			console.log("배송지 1 : "+addr1);
			$("#orderAddr").val(addr1);
		})
		
		$("#tab2").click(function() {
			var addr2 = $("#addr2").val();
			console.log("배송지 2 : "+addr2);
			$("#orderAddr").val(addr2);
		})
		
		$("#tab3").click(function() {
			var addr3 = $("#addr3").val();
			console.log("배송지 3 : "+addr3);
			$("#orderAddr").val(addr3);
		})
	</script>
</body>
<!-- 
<div class="tab-pane fade-in active" id="tab-1"
											role="tabpanel">
											<div class="product-content">
												<div class="row">
													<div class="col-lg-12">
														<label for="street">주소<span>*</span></label> <input
															type="text" id="street" class="street-first"> <input
															type="text">
													</div>
												</div>
											</div>
										</div>
 -->
</html>