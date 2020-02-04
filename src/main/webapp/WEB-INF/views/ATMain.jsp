<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Atelier | Atelier</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/main/css/style.css" type="text/css">
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
                    <div class="breadcrumb-text">
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <span>Atelier</span>
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
                        <div class="blog-catagory" style="margin-bottom: 80px;">
                        	<h4 style="margin-bottom: 30px;">카테고리</h4>
                        		<form action="선택한 카테고리 전송 시 실행할 메소드" method="get">
	                            	<ul>
		                                <li><input type="checkbox" name="category" value="clothing" checked>의류</li>
		                                <li><input type="checkbox" name="category" value="bag">가방</li>
		                               	<li><input type="checkbox" name="category" value="shoes">신발</li>
		                                <li><input type="checkbox" name="category" value="wallet">지갑</li>
		                            </ul>
		                            <ul style="margin: -135px 0 0 120px;">
		                                <li><input type="checkbox" name="category" value="belt">벨트</li>
		                                <li><input type="checkbox" name="category" value="gloves">장갑</li>
		                               	<li><input type="checkbox" name="category" value="furniture">가구</li>
		                                <li><input type="checkbox" name="category" value="other">기타</li>
		                            </ul>
		                            <input type="submit" value="select"
		                            		style="cursor: pointer; border-style: solid; border-color: #e7ab3c; background-color: #e7ab3c; color: white; margin: 25px 0 0 175px;">
                            	</form>
                        </div>
                        <div class="recent-post">
                            <h4>추천 공방</h4>
                            <div class="recent-blog">
                            	<form action="공방 사진 눌렀을 때 실행할 메소드" name="" method="get">
	                                <div class="rb-item" style="margin-bottom: -10px;">
	                                    <div class="rb-pic">
	                                       <a href="ATDetail"><img src="resources/main/img/blog/recent-1.jpg" alt="" style="width: 120px; height: 120px;"></a>
	                                    </div>
	                                    <div class="rb-text" style="margin-top: 10px;">
	                                    	<p><span style="font-size: 13px;">공방 카테고리</span></p>
	                                    	<a href="ATDetail"><p style="font-size: 16px;">공방명</p></a>
	                                        <h6 style="font-size: 13px; margin-top: 13px; height: 80px;">공방설명 첫째 줄<br>공방설명 둘째 줄</h6>
	                                    </div>
	                                </div>
                                </form>
                                <div class="rb-item" style="margin-bottom: -10px;">
                                    <div class="rb-pic">
                                        <a href="ATDetail"><img src="resources/main/img/blog/recent-1.jpg" alt="" style="width: 120px; height: 120px;"></a>
                                    </div>
                                    <div class="rb-text" style="margin-top: 10px;">
                                    	<p><span style="font-size: 13px;">공방 카테고리</span></p>
                                    	<a href="ATDetail"><p style="font-size: 16px;">공방명</p></a>
                                        <h6 style="font-size: 13px; margin-top: 13px; height: 80px;">공방설명 첫째 줄<br>공방설명 둘째 줄</h6>
                                    </div>
                                </div>
                                <div class="rb-item" style="margin-bottom: -10px;">
                                    <div class="rb-pic">
                                        <a href="ATDetail"><img src="resources/main/img/blog/recent-1.jpg" alt="" style="width: 120px; height: 120px;"></a>
                                    </div>
                                    <div class="rb-text" style="margin-top: 10px;">
                                    	<p><span style="font-size: 13px;">공방 카테고리</span></p>
                                    	<a href="ATDetail"><p style="font-size: 16px;">공방명</p></a>
                                        <h6 style="font-size: 13px; margin-top: 13px; height: 80px;">공방설명 첫째 줄<br>공방설명 둘째 줄</h6>
                                    </div>
                                </div>
                                <div class="rb-item" style="margin-bottom: -10px;">
                                    <div class="rb-pic">
                                        <a href="ATDetail"><img src="resources/main/img/blog/recent-1.jpg" alt="" style="width: 120px; height: 120px;"></a>
                                    </div>
                                    <div class="rb-text" style="margin-top: 10px;">
                                    	<p><span style="font-size: 13px;">공방 카테고리</span></p>
                                    	<a href="ATDetail"><p style="font-size: 16px;">공방명</p></a>
                                        <h6 style="font-size: 13px; margin-top: 13px; height: 80px;">공방설명 첫째 줄<br>공방설명 둘째 줄</h6>
                                    </div>
                                </div>
                                <div class="rb-item" style="margin-bottom: -10px;">
                                    <div class="rb-pic">
                                        <a href="ATDetail"><img src="resources/main/img/blog/recent-1.jpg" alt="" style="width: 120px; height: 120px;"></a>
                                    </div>
                                    <div class="rb-text" style="margin-top: 10px;">
                                    	<p><span style="font-size: 13px;">공방 카테고리</span></p>
                                    	<a href="ATDetail"><p style="font-size: 16px;">공방명</p></a>
                                        <h6 style="font-size: 13px; margin-top: 13px; height: 80px;">공방설명 첫째 줄<br>공방설명 둘째 줄</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="row">
                    <!-- 여기서부터 for문으로 돌림 -->
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog-item">
                                <div class="bi-pic">
                                    <a href="ATDetail"><img src="resources/main/img/blog/blog-2.jpg" alt=""></a>
                                </div>
                                <div class="bi-text">
                                	<p><span>공방 카테고리</span></p>
                                    <a href="ATDetail">
                                        <h4>공방명</h4>
                                    </a>
                                    <p>: 공방 설명</p>
                                </div>
                            </div>
                        </div>
                        <!-- 여기서까지 for문으로 돌림 -->
                        <div class="col-lg-12">
                            <div class="loading-more">
                                <i class="icon_loading"></i>
                                <a href="#" id="load">Loading More</a>
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
</body>

</html>