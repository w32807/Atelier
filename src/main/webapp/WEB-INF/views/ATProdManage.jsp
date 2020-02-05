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
	<script type="text/javascript">
            window.onload = function() {//이 페이지가 실행 되면, 이 함수를 실행해라
                var chk = "${check}";
                if(chk != ""){
                    alert(chk);
                    location.reload(true);//화면을 다시 한번 불러오면서 check를 리셋함 
                }
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
						<li style="font-size: 18px"><a href="#">체험 관리</a></li>
						<li style="font-size: 18px"><a href="ATMessageRQ" onclick="window.open(this.href, '_blank', 'width=655px,height=650px,toolbars=no,scrollbars=no');return false;">메인관리자에게 문의</a></li>
				</ul>
			</nav>
		</aside>
		<!-------------------------------------------------------여기까지 좌측바 메뉴입니다.---------------------------------------------------------------------->
		
		<form action="" method="get" name="prodManageFrm">
			<!--여기부터 각각 하나의 상품이 됩니다. 실제로 구현시에는 HTML에서 JSTL의 forEach구문과 자바 코딩부에서 페이징 처리를 하면 될 듯 합니다. -->
			<div id="colorlib-main">
				<div class="colorlib-blog" style="margin-left: 100px;">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3">
								<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
									style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">제품 목록 관리<hr>
								</h2>
							</div>
							<select id="selectBox" style="margin-left: 1160px; border-radius: 10px; width: 100px; height: 35px;  padding-left: 8px; font-size: 14px; border: 1px solid #A09182; color: white; background-color: #A09182;">
								<option >판매 등록</option>
								<option >판매 미등록</option>
							</select>
						</div>
						
						<div class="row" style="margin-top: 60px;">
							<!--이 한 div 덩어리를 for문으로 돌리면 됩니당.-->
							<!-- item에는 받아온 상품들의 목룍 배열을 넣어주세요. -->
							<div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
								<div class="blog-entry">
									<label for="상품코드1">
										<input id="상품코드1" type="checkbox" name="prod" value="상품코드1"
												style="background-color: transparent; position: relative; top: 6px; left: 12px;">
										<!-- value에는 해당 상품의 코드를 넣어주세요. -->
										<img src="resources/AT_front/images/img-1.jpg" class="img-responsive"
												style="margin-top: -26px; width: 400px;">
										<div class="desc" style="font-size: 15px; font-weight: 500;">
											<span style="font-size: 16px;">
												<small>등록한 날짜</small> | 
												<small> 카테고리 </small> |
												<small> <i class="icon-bubble3"></i></small>
											</span>
											<h3 style="margin-bottom: 40px; font-size: 22px; font-weight: bolder;">
												<a href="blog.html">상품명 1</a>
											</h3>
											<form>
												&nbsp;제품명 : <input type="hidden" name="prodName"
																	value="제품명이 들어갑니다">아빠에게 선물하면 좋은 가죽 벨트<br>
												&nbsp;재고량 : <input type="hidden" name="stock"
																	value="재고량이 들어갑니다">100개<br>
												&nbsp;단가 : <input type="hidden" name="price"
																	value="단가가 들어갑니다">100원<br>
												<div style="text-align: right; margin-bottom: 0px;">
													<input type="submit" value="상세보기"
														style="border: none; color: #A09182; background-color: white; font-weight: 700; margin: 10px;">
												</div>
											</form>
										</div>
									</label>
								</div>
							</div>
							<!--여기까지의 한 div 덩어리를 for문으로 돌리면 됩니당.-->
	
							<div class="col-md-4 col-sm-6 animate-box"
								data-animate-effect="fadeInLeft" style="margin-left: -85px;">
								<div class="blog-entry">
									<label for="상품코드2">
										<input id="상품코드2" type="checkbox" name="prod" value="상품코드2"
												style="background-color: transparent; position: relative; top: 6px; left: 12px;">
										<img src="resources/AT_front/images/img-1.jpg"
												class="img-responsive" style="margin-top: -26px; width: 400px;">
										<div class="desc" style="font-size: 15px; font-weight: 500;">
											<span style="font-size: 16px;">
												<small>등록한 날짜</small> | 
												<small> 카테고리 </small> |
												<small> <i class="icon-bubble3"></i></small>
											</span>
											<h3 style="margin-bottom: 15px; font-size: 22px; font-weight: bolder;">
												<a href="blog.html">상품명 2</a>
											</h3>
											&nbsp;&nbsp;
											<form>
												&nbsp;제품명 : <input type="hidden" name="prodName"
																	value="제품명이 들어갑니다">아빠에게 선물하면 좋은 가죽 벨트<br>
												&nbsp;재고량 : <input type="hidden" name="stock"
																	value="재고량이 들어갑니다">100개<br>
												&nbsp;단가 : <input type="hidden" name="price"
																	value="단가가 들어갑니다">100원<br>
												<div style="text-align: right; margin-bottom: 0px;">
													<input type="submit" value="상세보기"
														style="border: none; color: #A09182; background-color: white; font-weight: 700; margin: 10px;">
												</div>
											</form>
										</div>
									</label>
								</div>
							</div>
								
							<div class="col-md-4 col-sm-6 animate-box"
								data-animate-effect="fadeInLeft" style="margin-left: -85px;">
								<div class="blog-entry">
									<label for="상품코드3">
										<input id="상품코드3" type="checkbox" name="prod" value="상품코드3"
											style="background-color: transparent; position: relative; top: 6px; left: 12px;">
										<img src="resources/AT_front/images/img-1.jpg"
											class="img-responsive" style="margin-top: -26px; width: 400px;">
										<div class="desc" style="font-size: 15px; font-weight: 500;">
											<span style="font-size: 16px;">
												<small>등록한 날짜</small> | 
												<small> 카테고리 </small> |
												<small> <i class="icon-bubble3"></i></small>
											</span>
											<h3 style="margin-bottom: 15px; font-size: 22px; font-weight: bolder;">
												<a href="blog.html">상품명 3</a>
											</h3>
											&nbsp;&nbsp;
											<form>
												&nbsp;제품명 : <input type="hidden" name="prodName"
																	value="제품명이 들어갑니다">아빠에게 선물하면 좋은 가죽 벨트<br>
												&nbsp;재고량 : <input type="hidden" name="stock"
																	value="재고량이 들어갑니다">100개<br>
												&nbsp;단가 : <input type="hidden" name="price"
																	value="단가가 들어갑니다">100원<br>
												<div style="text-align: right; margin-bottom: 0px;">
													<input type="submit" value="상세보기"
														style="border: none; color: #A09182; background-color: white; font-weight: 700; margin: 10px;">
												</div>
											</form>
										</div>
									</label>
								</div>
							</div>
	
	
							<div class="row">
								<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
									<ul class="pagination">
										<li class="disabled"><a href="#">&laquo;</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">&raquo;</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>	
	<!----------------------------------------------------------------------여기까지 각각의 상품입니다.-------------------------------------------------------------------->
	
	<!----------------------------------------------------------------------여기부터 각각의 버튼들입니다------------------------------------------------------------------->
	<!-- 여러 개의 체크박스를 선택하여 삭제할 때, 각각의 상품들은 동일한 name을 가지고, value는 상품들의 기본키인 상품 코드를 부여합니다.-->
	<!-- 수정 및 등록 해제는 한 개의 체크박스만 선택 할 수 있으며, 여러 개를 선택하면 alert 경고창을 띄웁니다.-->
	<!-- 판매 등록 시에는 여러 개의 체크박스를 이용하여 판매 등록하고자 하는 제품의 상품 코드(각각의 상품의 value값)를 DB쪽에 넘겨 일괄적으로 판매 등록 가능합니다.-->
	<!-- 제품 메뉴 제작은 버튼들의 스타일을 통일 시키기 위하여 일단 form태그에 넣었습니다. 제품 메뉴 제작은 페이지 이동의 기능만 가집니다. -->
	<div id="colorlib-main-menu" style="height: 100px; padding-right: 150px; font-size: 16px; font-weight: bolder; color: #A09182;">
		<div style="float: right;">
			<button type="button" id="prodDeleteBtn"
				style="background-color: transparent; border: none; margin-right: 10px;">삭제
			</button>
		</div>
											
		<div style="float: right;">
			<button type="button" id="prodmodifyBtn"
				style="background-color: transparent; border: none; margin-right: 10px;">수정
			</button>
		</div>
						
		<div style="float: right;">
			<button type="button" id="prodRegistCancleBtn"
				style="background-color: transparent; border: none; margin-right: 10px;">등록 해제
			</button>
		</div>
			
		<div style="float: right;">
			<input type="hidden" name="">
			<button type="button" id="prodRegistBtn"
				style="background-color: transparent; border: none; margin-right: 10px;">판매 등록
			</button>
		</div>
			
		<form action="ATProdRegist" method="get" style="float: right;">
			<button type="submit"
				style="background-color: transparent; border: none; margin-right: 10px;">제품 메뉴 제작
			</button>
		</form>
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

			<script type="text/javascript">
				//체크박스로 다중 선택을 하여 판매 등록을 누르면 해당 상품의 상품코드와 체크박스의 데이터가 넘어감
			$("#prodRegistBtn").click(function() {
				var chkLength = $("input:checkbox[name=prod]:checked").length;//체크된 체크박스의 갯수를 가져옴
				console.log(chkLength);
				if(chkLength != 0){//체크한 체크박스가 있을 경우
					if(confirm(chkLength+"개의 상품을 판매등록 하시겠습니까?")){
						//var $items = $("label[name=prod]").find("input:checkbox:checked");//체크된 checkbox를 가지고 있는 label를 가져옴
							$("form[name=prodManageFrm]").attr("action","prodSellRegist");
							$("form[name=prodManageFrm]").submit();
					}
				}else {//체크한 체크박스가 없을 경우
					alert("판매등록 할 상품을 선택 해 주세요.");
				}
			});
				
			$("#prodRegistCancleBtn").click(function() {
				var chkLength = $("input:checkbox[name=prod]:checked").length;//체크된 체크박스의 갯수를 가져옴
				console.log(chkLength);
				if(chkLength != 0){//체크한 체크박스가 있을 경우
					if(confirm(chkLength+"개의 상품을 판매등록 해제 하시겠습니까?")){
						//var $items = $("label[name=prod]").find("input:checkbox:checked");//체크된 checkbox를 가지고 있는 label를 가져옴
							$("form[name=prodManageFrm]").attr("action","prodRegistCancle");
							$("form[name=prodManageFrm]").submit();
					}
				}else {//체크한 체크박스가 없을 경우
					alert("판매등록 해제 할 상품을 선택 해 주세요.");
				}
			});
			$("#prodmodifyBtn").click(function() {
				var chkLength = $("input:checkbox[name=prod]:checked").length;//체크된 체크박스의 갯수를 가져옴
				if(chkLength == 0){
					alert("수정 할 상품을 선택 해 주세요.");
				}else {
					if (chkLength > 1) {
						alert("수정 할 상품은 1개만 선택 해 주세요.");
					} else {
						//체크박스를 1개 선택하여 전송
						$("form[name=prodManageFrm]").attr("action","Prodmodify");
						$("form[name=prodManageFrm]").submit();
					}				

				}
			});
			$("#prodDeleteBtn").click(function() {
				var chkLength = $("input:checkbox[name=prod]:checked").length;//체크된 체크박스의 갯수를 가져옴
				if(chkLength == 0){
					alert("삭제 할 상품을 선택 해 주세요.");
				}else {
					if(confirm("정말 "+chkLength+"개의 상품을 삭제하시겠습니까?")){
						$("form[name=prodManageFrm]").attr("action","prodDelete");
						$("form[name=prodManageFrm]").submit();
					}				
				  }
				
			});
			
			$("#selectBox").change(function() {//얘는 ajax로 처리하는게 속 편할 듯.
				var value = $(this).val();
				if (value == "판매 등록") {
					//판매 등록을 선택하면 배송전 판매 등록된 상품만 불러옴
				} else if(value == "판매 미등록"){
					//판매 미등록을 선택하면 배송전 판매 등록된 상품만 불러옴
				}
				
			});		
			</script>

</body>
</html>

