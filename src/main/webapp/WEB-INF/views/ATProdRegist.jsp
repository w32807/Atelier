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
	<!-- CkEditor -->
	<script type="text/javascript" src="resources/AT_front/ckeditor/ckeditor.js"></script>
	
	<style type="text/css">
		.title{
			width: 100px;
			height: 40px;
		
		}
	</style>
	
	</head>
	<body>
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
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
			<div class="colorlib-about">
				<div class="container-fluid" style="margin-left: 100px;">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3">
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
									style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">제품 메뉴 제작<hr>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div id="preview" class="about-img animate-box" data-animate-effect="fadeInLeft"
								style="margin-left: 90px; background-image: url(resources/AT_front/images/img_bg_2.jpg);">
							</div>
						</div>
						<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft" style="margin-top: 20px;">
							<div class="about-desc">
								<!-- 각각의 항목에 같은 class명을 부여하여, 등록 시 유효성 검사를 함  -->
							<form action="ATProdInsert" id="ATProdRegist" method="post" enctype="multipart/form-data">
								<table style="font-size: 15px; margin-top: 100px; margin-bottom: 140px;">
									<tr>
										<td class="title"><b>제 품 명</b></td>
										<td><input type="text" name="pd_name" class="content" placeholder="제품명" title="제품명"></td>
									</tr>
									<tr>
                                        <td class="title"><b>공 방 명</b></td>
                                        <td><input type="text" name="pd_at_name" class="content" placeholder="공방명" title="제품명"></td>
                                    </tr>
									<tr>
										<td class="title"><b>수 &nbsp;&nbsp;량</b></td>
										<td><input name="pd_numofstock" value="0" class="content"
												type="number" min="0"
												style="border: none; width: 70px;" placeholder="수량 "title="수량"></td>
									</tr>
									<tr>
										<td class="title"><b>단 가</b></td>
										<td><input type="number" class="content" name="pd_price"  min="0"
                                                style="border: none; width: 70px;" placeholder="단 가"title="단가"></td>
									</tr>
									<tr>
										<td class="title"><b>이미지 첨부</b></td>
										<td><input type="file" id="image" class="content" name="pi_oriname"title="이미지" accept=".gif, .jpg, .png" ></td>
										    
									</tr>
									<tr>
										<td class="title"><b>색 상</b></td>
										<td><input type="text" class="content" name="pd_option" placeholder="색 상"title="색상"></td>
									</tr>
									
									<tr>
										<td class="title"><b>타겟</b></td>
										<td>
										<select class="content" name="pd_sex" placeholder="타겟" title="타겟" >
													<option>남성용</option>
													<option>여성용</option>
													<option>남녀공용</option>
										</select></td>
									</tr>
									<tr>
										<td class="title"><b>가죽 종류</b></td>
										<td><select class="content" name="pd_type" placeholder="가죽 종류" title="가죽 종류">
													<option>레자</option>
													<option>소가죽</option>
													<option>말가죽</option>
										</select>
									</tr>
									<tr>
										<td class="title"><b>카테고리</b></td>
										<td><select class="content" name="pd_cate"title="카테고리">
												<!-- foreach문으로 카테고리를 출력해 주세요. -->
													<option value="카테고리1">카테고리1</option>
													<option value="카테고리2">카테고리2</option>
													<option value="카테고리3">카테고리3</option>
											</select></td>
									</tr>
									
								</table>
								
								<table style="margin-left: -747px; width: 1150px;">
									<tr>
										<td style="display: inline; font-size: 16px; margin-left: 100px;"><b>상세내역</b></td>
									</tr>
									<tr>
										<td style="margin-left: 75px; margin-top: 10px; float: left; width: 1110px;">
											<textarea class="form-control content" id="p_content" name="pd_datail" title="상세내역">
											</textarea>
										</td>
									</tr>
								</table>
								</form>
							</div>
							</div>
							<div style="float: right; margin-right: 50px">
								<input id="registBtn" type="button" name="order" value="등록"
									style="width: 60px; height: 30px; border: none; font-size: 16px; color: white; background-color: #A09182; margin: 80px 0 120px 640px;">
							</div>
						</div>
					</div>
				</div>
			</div>
			
		
		</div>
	
	<!----------------------------------------------------------여기서부터 하단바입니다.-------------------------------------------------------------------------->
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
		//클릭 시 모두 입력 하지 않았을 시 경고.
		function vaildChk() {
			var inputContent = $(".content");//content클래스로, 입력할 태그들을 배열로써 가져옴
			var inputLength = inputContent.length;//등록해야할 정보는 총 7개이다.
			var a = false;
			//var editor1 = CKEDITOR.replace( 'contents' );
			 CKEDITOR.instances.p_content.updateElement(); 
			 var data = CKEDITOR.instances.p_content.getData();
			inputContent.each(function() {//jquery에서의 for문은 이렇게 사용!
				a = false;//루프문 같이 돌리기 위해 지역변수로 선언
				//each메소드안에서 return false는 for문의 break 역할을, return true는 for문의 continue역할을 한다. 
				if($(this).val()==""||$(this).val()==null||$(this).val()==0){
					console.log($(this).attr('title'));
					alert($(this).attr('title')+"을 입력하세요!" );
					$(this).focus();
					console.log($(this).val());
					return a;
				}else {
					a = true;
				}
			})
			return a;
		}
		
		$("#registBtn").click(function() {
			//등록 버튼을 눌렀을 때 입력하지 않은 내용이 있다면 등록 되지 않게 처리
			var a = vaildChk();
			console.log(a);
			if(a){
				if(confirm("정말 제품 등록 하시겠습니까?")){
					console.log("제출합니다.");
					$("#ATProdRegist").submit();//ATProdManage(제품관리 페이지)로 이동!
				}
			 }else {
				
			}
		});
		
		//제품상세 입력의 ckEditor
		 CKEDITOR.replace('p_content', {height: 500});

			//이미지 업로드 시 미리보기
			$(function() {
	            $("#image").on('change', function(){
	                readURL(this);
	            });
	        });
			
			function readURL(input) {
				console.log(input.files);
	            if (input.files && input.files[0]) {
	            	
	            var reader = new FileReader();

	            reader.onload = function (e) {
	            	//console.log(e.target.result);
	            	console.log( $('#preview').css("background-image"));
	                    $('#preview').css({'background-image':'url('+e.target.result+')'});
	                }

	              reader.readAsDataURL(input.files[0]);
	            }
	        };
		
	  
	</script>
	
	</body>
</html>

