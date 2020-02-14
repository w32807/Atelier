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
   <jsp:include page="Main_Upper.jsp" flush="false"/>

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
</body>

</html>