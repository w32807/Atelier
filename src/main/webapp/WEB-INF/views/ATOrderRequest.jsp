<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Atelier | Atelier</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	
	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content="" />
	<meta property="og:image" content="" />
	<meta property="og:url" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:description" content="" />
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	
	<link
		href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
		rel="stylesheet">

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
	<script type="text/javascript">
		window.onload = function() {//이 페이지가 실행 되면, 모든 체크박스의 체크를 해제.(뒤로가기 버튼으로 이 페이지에 접근 시 체크박스 해제를 위함)
			$("input:checkbox[name=prod]").each(function() {
				this.checked = false;
			});
		}
	</script>
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
			<nav id="colorlib-main-menu" role="navigation">
				<ul style="margin-top: 100px">
				<li class="colorlib-active" style="font-size: 20px">공방 관리</li>
						<li style="font-size: 18px"><a href="ATManager">공방 관리 홈</a></li>
						<li style="font-size: 18px"><a href="ATInfoModify">공방 페이지 수정</a></li>
						<li style="font-size: 18px"><a href="ATOrderRequest">거래처 조회</a></li>
						<li style="font-size: 18px"><a href="ATOrderState">주문 조회</a></li>
						<li style="font-size: 18px"><a href="ATOrderSearch">발주 조회</a></li>
						<li style="font-size: 18px"><a href="ATProdManage">제품 관리</a></li>
						<li style="font-size: 18px"><a href="contact.html">체험 관리</a></li>
						<li style="font-size: 18px"><a href="ATMessageRQ" onclick="window.open(this.href, '_blank', 'width=655px,height=650px,toolbars=no,scrollbars=no');return false;">메인관리자에게 문의</a></li>
				</ul>
			</nav>
		</aside>
	<!-------------------------------------------------------여기까지 좌측바 메뉴입니다.---------------------------------------------------------------------->
		<div id="colorlib-main">
			<div class="colorlib-services" style="margin-left: 100px;">
				<div class="container-fluid" style="min-height: 500px;">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3">
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
									style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">거래처 및 발주신청<hr>
							</h2>
						</div>
					</div>

	<!---------------------------------------------여기서 검색처리를 합니다. (검색어의 name은 search로 잡았습니다.-------------------------------------------->
					<form id="searchFrm" class="colorlib-heading animate-box" style="margin-left: 700px;">
						<div class="advanced-search">
                        	<div class="input-group"style="margin: 0px auto; margin-bottom: 100px; margin-right: 400px;">
                           		<input id="keyword" type="text" name="search" placeholder="검색어를 입력 해 주세요."
                           			value="" style="width: 280px; padding-left: 8px; font-size: 14px; border: 1px solid #A09182;">
                           		<input id="searchBtn" type="button" value="검색"
                              		style="width: 60px; border: none; font-size: 16px; color: white; background-color: #A09182;">
                        	</div>
                     	</div>
                  	</form>
	<!-------------------------------------------------여기까지 검색처리를 합니다.---------------------------------------------------------------------------->
					
					<form action="ATrmOrder" method="post" name="rmOrderFrm" enctype="multipart/form-data">
						<div class="row">
							<div id="rmTable" name="rmTable">
								<div class="col-md-6" style="left: 100px">
									<!-- 여기서부터 발주 신청을 할 수 있는 하나하나의 목록들이 출력 됩니다. -->
									<!-- 여기 1열에는 넘어온 물품 리스트 배열의 홀수 번째 index의 물품만 foreach 문으로 출력합니다. -->
									<c:forEach begin="0" step="2" var="rmProd" items="${rmList}">
										<div class="colorlib-feature animate-box"
											data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
											<label for="${rmProd.rm_num}">
												<div class="colorlib-icon" style="width: 130px; height: 130px;">
													<i class="icon-tag"></i>
												</div>
												<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">
													<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">
														<b>${rmProd.rm_type}</b>
													</h3>
													<input id="${rmProd.rm_num}" type="checkbox" name="rmProdOrderChk" value="${rmProd.rm_num}" ><br>
													<b>단가</b><span name="prodPrice" id="${rmProd.rm_num}">&nbsp;&nbsp;&nbsp;${rmProd.rm_price}&#8361;</span><br>
													<b>수량</b>&nbsp;&nbsp;&nbsp;<input type="number" name="${rmProd.rm_num}" value="0"
																						class="numOfprod" min="0"
																						style="border: none; width: 70px;" placeholder="입력 ">
													<br> <b>색상</b><span>&nbsp;&nbsp;&nbsp;${rmProd.rm_color}</span><br>
												</div>
											</label>
										</div>			
									</c:forEach>
								</div>
	
		<!------------------------------------------여기가 물건의 2열 시작------------------------------------------------>
		<!--------- 여기 2열에는 넘어온 물품 리스트 배열의 짝수번째 index의 물품만 foreach 문으로 출력합니다. ------------>
								<div class="col-md-6" style="left: -70px;">
									<c:forEach begin="1" step="2" var="rmProd" items="${rmList}">
										<div class="colorlib-feature animate-box"
											data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
											<label for="${rmProd.rm_num}">
												<div class="colorlib-icon" style="width: 130px; height: 130px;">
													<i class="icon-tag"></i>
												</div>
												<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">
													<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">
														<b>${rmProd.rm_type}</b>
													</h3>
													<input id="${rmProd.rm_num}" type="checkbox" name="rmProdOrderChk" value="${rmProd.rm_num}" ><br>
													<b>단가</b><span name="prodPrice" id="${rmProd.rm_num}">&nbsp;&nbsp;&nbsp;${rmProd.rm_price}&#8361;</span><br>
													<b>수량</b>&nbsp;&nbsp;&nbsp;<input type="number" name="${rmProd.rm_num}" value="0"
																						class="numOfprod" min="0"
																						style="border: none; width: 70px;" placeholder="입력 ">
													<br> <b>색상</b><span>&nbsp;&nbsp;&nbsp;${rmProd.rm_color}</span><br>
												</div>
											</label>	
										</div>
									</c:forEach>
								</div>								
							</div>
						</div>
					</div>
				</div>

				<div class="colorlib-feature animate-box"
					style="text-align: right; width: 1100px; height: 200px;">
					<span style="font-size: 20px;" id="totalPrice"></span>
						 <input class="payment" type="button" name="order" value="결제"
							style="width: 60px; height: 30px; border: none; font-size: 16px;
							color: white; background-color: #A09182; margin-right: -50px;">
				</div>
			</form>
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
	<!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="resources/js/jquery.serializeObject.js"></script>
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
	
	
	<script type="text/javascript">
		window.onload = function() {
			var chk = "${check}";
			console.log(chk);
			if(chk != ""){
				alert(chk);
				location.reload(true); 
			}
		}
	
		function cal_price() {//총 가격을 바로바로 계산하기 위한 함수
			var $items = $(".colorlib-feature").find("input:checkbox:checked");//체크된 녀석들 찾기.
			var $total = $("#totalPrice");
			var cur_total = 0;// 처음 총 가격은 0 원
			console.log(cur_total);
			$items.each(function() {//각각의 item(체크된 녀석들 )
				var $this = $(this);
				var $target = $("span[id='" + $this.attr("id") + "']");//그 상품의 단가를 가져옴
				var c = $target.html().replace(/&nbsp;/g, "");	//g = 모든 패턴 체크(grobal)
				console.log("$target의 값(단가)" + c);
				var d = c.replace(/₩/g, "");//여기까지 단가의 숫자만 잘라옴.(즉 체크박스로 체크한 상품의 가격이 숫자로 저장됨.)
				var numOfprod = $("input[name='" + $this.attr("id") + "']");//수량을 가져오기 위해 해당 태그에 접근. defalut는 0개
				console.log("numOfprod 의 값 : " + numOfprod);
				var price = parseInt(d)*parseInt(numOfprod.val());//상품 1개에 대해 가격 계산
				console.log(price);

				cur_total += price;
			});
			console.log(cur_total);
			$total.html(cur_total + "₩");
		}
		
		//체크박스를 선택 할 때 자동으로 총 가격이 계산 됨.
		$(".colorlib-feature").on("click", "input:checkbox", function() {
			 cal_price();
		});
		
		//체크박스를 체크하고 수량을 변경하면 총 가격이 바로 변경됨.
		$(".numOfprod").change(function(){
			 cal_price();
		});
		
		function order() {// 결제 버튼을 눌렀을 때 분기 처리를 위한 함수
			var $items = $(".colorlib-feature").find("input:checkbox:checked");//체크된 checkbox를 가지고 있는 div를 가져옴
			var cnt = 0; //alert를 한번만 띄워주기 위한 카운트 변수
			var b = false; //분기처리를 위한 불리언 변수
			$items.each(function() {//각각의 체크된 div에 대하여
				var $this = $(this);
				//1. 각각의 수량이 0 혹은 null인지 검사.
				var numOfprod = $("input[name='" + $this.attr("id") + "']");
					if(numOfprod.val()==0 || numOfprod.val() == null){
					}
					else {
						cnt++;
					}
				})
			if(cnt == 0){
				return b;
			}else {
				b = true;
				return b;
			}
		}
		
		//체크박스를 눌러 결제 버튼을 눌렀지만, 수량이 0 혹은 null일 때 alert알람.
		$(".payment").click(function() {
			var chkLength = $("input:checkbox[name=rmProdOrderChk]:checked").length;//체크박스에 체크가 되어있는 갯수를 구함
			var a = order();
			// order함수가 실행되어, true이면 체크한 모든 품목에 대해 수량이 잘 입력되어있므로 결제 진행
			// false라면 체크는 되어있으나 수량입력이 0 혹은 null인 품목이 있으므로 결제 불가
			if(a){
				//결제를 진행 할 경우
				$("form[name=rmOrderFrm]").submit();
			}
			else {
				if (chkLength === 0 ) {
					$("input:checkbox[name=rmProdOrderChk]").each(function() {
						this.checked = false;
					});
					alert("1개 이상 선택 해 주세요.");	
				} else {
					//체크박스에 체크를 하고 결제를 진행하려 했으나 , 수량입력이 제대로 되어있지 않은 경우
					alert("수량이 입력되지 않은 품목이 있습니다.");
				}
			}
		});
			
		
		//검색어를 입력하고 검색 결과를 출력할 ajax 함수      
	      $("#searchBtn").click(function() {//검색 버튼을 누르면 함수 실행
	         console.log($("#keyword").val());
	         var searchFrm = $("#searchFrm").serializeObject();//검색어가 들어있는 form을 객체화
	         searchFrm.keyword = $("#keyword").val();//검색어를 입력하는 input태그의 value값을 객체에 추가
	         console.log(searchFrm);
	            
	         $.ajax({
	         	url: "RMProdSearch",//컨트롤러의 어디로 보낼 거니
	         	type: "get",//방식은?
	         	data: searchFrm,//어떤 데이터를 보낼거니?
	         	dataType: "json",//json 형식으로 보낼 것임.   
	         	success: function(data) {
	         		console.log("성공인가요ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ");
	         		console.log(data.rmSearchList);
	         		var rmList = '';
	         		for(var i = 0; i < data.rmSearchList.length; i++) {
	         			rmSearchList += '<div class="col-md-6" style="left: 100px">'
	         			+ '<c:forEach begin="0" step="2" var="rmProd" items="${rmList}">'
	         			+ '<div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">'
						+ '<label for="${rmProd.rm_num}">'
						+ '<div class="colorlib-icon" style="width: 130px; height: 130px;">'
						+ '<i class="icon-tag">' + '</i>'
						+ '</div>'
						+ '<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">'
						+ '<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">'
						+ '<b>' + data.rmSearchList[i].rm_type + '</b>'
						+ '</h3>'
						+ '<input type="checkbox">'
						+ '<br>'
						+ '<b>' + '단가' + '</b>'
						+ '<span name="prodPrice" id="상품코드1">'
						+ '&nbsp;&nbsp;&nbsp;'
						+  data.rmSearchList[i].rm_price
						+ '&#8361;' + '</span>' + '<br>'
						+ '<b>' + '수량' + '</b>' +'&nbsp;&nbsp;&nbsp;'
						+ '<input type="number" name="상품코드1" value="0" class="numOfprod" min="0" style="border: none; width: 70px;" placeholder="입력">'
						+ '<br>' + '<b>' + '색상' + '</b>'
						+ '<span>' + '&nbsp;&nbsp;&nbsp;' + data.rmSearchList[i].rm_color + '</span>' + '<br>'
						+ '</div>'
						+ '</label>'
						+ '</div>'
						+ '</c:forEach>'
						+ '</div>'
						
						+ '<div class="col-md-6" style="left: -70px;">'
						+ '<c:forEach begin="1" step="2" var="rmProd" items="${rmList}">'
						+ '<div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">'
						+ '<label for="${rmProd.rm_num}">'
						+ '<div class="colorlib-icon" style="width: 130px; height: 130px;">'
						+ '<i class="icon-tag">' + '</i>'
						+ '</div>'
						+ '<div class="colorlib-text" style="padding: 13px 0 0 150px; font-size: 15px; font-weight: 400;">'
						+ '<h3 style="display: inline-block; font-size: 18px; margin-bottom: 16px;">'
						+'<b>' + data.rmSearchList[i].rm_type + '</b>'
						+ '</h3>'
						+ '<input type="checkbox">'
						+ '<br>'
						+ '<b>' + '단가' + '</b>' 
						+ '<span name="prodPrice" id="상품코드1">'
						+ '&nbsp;&nbsp;&nbsp;' + data.rmSearchList[i].rm_price + '&#8361;'
						+ '</span>' + '<br>'
						+ '<b>' + '수량' + '</b>'
						+ '&nbsp;&nbsp;&nbsp;'
						+ '<input type="number" name="상품코드1" value="0" class="numOfprod" min="0" style="border: none; width: 70px;" placeholder="입력">'
						+ '<br>' + '<b>' + '색상' + '</b>'
						+ '<span>' + '&nbsp;&nbsp;&nbsp;' + data.rmSearchList[i].rm_color
						+ '</span>' + '<br>'
						+ '</div>'
						+ '</label>'	
						+ '</div>'
						+ '</c:forEach>'
						+ '</div>'
	         		}
	         		$('#rmTable').html(rmSearchList);
	         	},
	            error: function (error) {
	               //검색실패 했을 때 처리 - 만약 검색어가 null 이면 돌아와서 
	               alert("검색어를 입력 해 주세요!");
	            }
	         });
	      });
	</script>


</body>
</html>

