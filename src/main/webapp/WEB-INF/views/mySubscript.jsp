<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
</head>

<body>
  <!-- 상단바 Include -->
	<jsp:include page="Main_Upper.jsp" flush="false"/>

	<!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="/"><i class="fa fa-home"></i> Home</a>
                        <span>Subscribe List</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->
    <!-- Latest Blog Section Begin -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="row">
	            <!-- 마이페이지 좌측바 Include -->
                <jsp:include page="myPageLBar.jsp" flush="false"/>
                
	                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="row">
                            <div class="mySubscribe_main">
                            <!--  구독 리스트 메인  -->
                            <div class="myInfo_upper">
                             	<h4 style="font-weight: bolder; margin: 30px 20px;">My Subscribe List</h4>
                            </div>
				                <div class="col-lg-9 order-1 order-lg-2">
				                    <div class="single-latest-blog" style="width: 380px;">
				                        <a href="#"><img src="./resources/main/img/latest-1.jpg" alt=""></a>
				                        <div class="latest-text" style="text-align: center;">
				                            <div class="blog-detail-title">
				                            	<a href="#">
				                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
				                                </a>
					                        	</div>	   
				                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        </div>
				                    </div>
					                <div class="col-lg-4 col-md-6" style="position: absolute; margin: -425px 0 0 390px;">
					                    <div class="single-latest-blog" style="width: 380px;">
					                        <a href="#"><img src="./resources/main/img/latest-2.jpg" alt=""></a>
					                        <div class="latest-text" style="text-align: center;">
					                            <div class="blog-detail-title">
					                            	<a href="#">
					                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
					                                </a>
						                        </div>	   
					                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        	</div>
					                    </div>
					                </div>
					                <div class="col-lg-4 col-md-6" style="position: absolute; margin: -425px 0 0 795px;">
					                    <div class="single-latest-blog" style="width: 380px;">
					                        <a href="#"><img src="./resources/main/img/latest-3.jpg" alt=""></a>
					                        <div class="latest-text" style="text-align: center;">
					                            <div class="blog-detail-title">
					                            	<a href="#">
					                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
					                                </a>
						                        </div>	   
					                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        	</div>
					                   </div>
				        			</div>
				        			<div class="single-latest-blog" style="width: 380px;">
				                        <a href="#"><img src="./resources/main/img/latest-1.jpg" alt=""></a>
				                        <div class="latest-text" style="text-align: center;">
				                            <div class="blog-detail-title">
				                            	<a href="#">
				                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
				                                </a>
					                        	</div>	   
				                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        </div>
				                    </div>
					                <div class="col-lg-4 col-md-6" style="position: absolute; margin: -425px 0 0 390px;">
					                    <div class="single-latest-blog" style="width: 380px;">
					                        <a href="#"><img src="./resources/main/img/latest-2.jpg" alt=""></a>
					                        <div class="latest-text" style="text-align: center;">
					                            <div class="blog-detail-title">
					                            	<a href="#">
					                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
					                                </a>
						                        </div>	   
					                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        	</div>
					                    </div>
					                </div>
				        			<div class="col-lg-4 col-md-6" style="position: absolute; margin: -425px 0 0 795px;">
					                    <div class="single-latest-blog" style="width: 380px;">
					                        <a href="#"><img src="./resources/main/img/latest-3.jpg" alt=""></a>
					                        <div class="latest-text" style="text-align: center;">
					                            <div class="blog-detail-title">
					                            	<a href="#">
					                                	<h4 style="margin-top: -47px; font-size: 24px; color: #F0AD46;">공방명</h4>
					                                </a>
						                        </div>	   
					                            <p style="font-size: 16px; font-weight: 600; margin: -10px 0 70px 0;">구독자 100만명</p>
				                        	</div>
					                   </div>
				        			</div>
				    	</div>
					</div>
				</div>
			</div>
        </div>
    </section>
    <!-- Latest Blog Section End -->

    <!-- 하단바 Include -->
	<jsp:include page="Main_Footer.jsp" flush="false"/>

    <!-- Js Plugins -->
    <script src="<c:url value="/resources/main/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery.countdown.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery.nice-select.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery.zoom.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery.dd.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/jquery.slicknav.js"/>"></script>
    <script src="<c:url value="/resources/main/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/main/js/main.js"/>"></script>


	<!-- 메뉴태그 클래스 변경	 -->
	<script type="text/javascript">
    $('.filter-control ul li').on('click', function(){
		$('.filter-control ul li').removeClass('active');
		$(this).addClass('active');
	});
    </script>
    
    </body>
</html>