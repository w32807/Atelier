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
    <title>Atelier | Products</title>

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
    
    <style type="text/css">
    	.starR {
			font-size: 20px;
		    letter-spacing: -5px;
		    cursor: pointer;
		    color: #c7c7c7;
		}
		.starR.on {
			background-position:0 0;
			color: #e7ab3c;
		}
    </style>
    
    <script type="text/javascript">
	    window.onload = function() {
	        var chk = "${insertMessage}";
	        if(chk != ""){
	            alert("장바구니에 담겼습니다!");
	            location.reload(true); 
	        }
	    }
    </script>
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
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <a href="javascript:history.go(-1)">Shop</a>
                        <span>Products</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                <!--  필터  -->
                    <div class="filter-widget">
                        <h4 class="fw-title">Filter</h4>
                        <div class="fw_filter_prod">
                            <div class="filter_prod">
                                <label for="filter_men">
                        				                 남성용
                                    <input type="checkbox" id="category_filter">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="filter_prod">
                                <label for="filter_women">
                             				       여성용
                                    <input type="checkbox" id="category_filter">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="filter_prod">
                                <label for="filter_unisex">
                               				     남녀 공용
                                    <input type="checkbox" id="category_filter">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <!--  필터  -->
                    <div class="filter-widget">
                        <h4 class="fw-title">Price</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="5000" data-max="50000">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn">Filter</a>
                    </div>
                    <!-- 색상필터 -->
                    <div class="filter-widget">
                        <h4 class="fw-title">Color</h4>
                        <div class="fw-color-choose">
                            <div class="cs-item">
                                <input type="radio" id="cs-black">
                                <label class="cs-black" for="cs-black">Black</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-violet">
                                <label class="cs-violet" for="cs-violet">Violet</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-blue">
                                <label class="cs-blue" for="cs-blue">Blue</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-yellow">
                                <label class="cs-yellow" for="cs-yellow">Yellow</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-red">
                                <label class="cs-red" for="cs-red">Red</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-green">
                                <label class="cs-green" for="cs-green">Green</label>
                            </div>
                        </div>
                    </div>
                    <!-- 색상필터 -->
                    <div class="filter-widget">
                        <h4 class="fw-title" style="margin-top: 200px;">Tags</h4>
                        <div class="fw-tags">
                            <a href="#">Towel</a>
                            <a href="#">Shoes</a>
                            <a href="#">Coat</a>
                            <a href="#">Dresses</a>
                            <a href="#">Trousers</a>
                            <a href="#">Men's hats</a>
                            <a href="#">Backpack</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                <img class="product-big-img" src="./resources/main/img/products/${prodDto.imgOriName}" alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <!-- <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="./resources/main/img/product-single/product-1.jpg"><img
                                            src="./resources/main/img/product-single/product-1.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="./resources/main/img/product-single/product-2.jpg"><img
                                            src="./resources/main/img/product-single/product-2.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="./resources/main/img/product-single/product-3.jpg"><img
                                            src="./resources/main/img/product-single/product-3.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="./resources/main/img/product-single/product-3.jpg"><img
                                            src="./resources/main/img/product-single/product-3.jpg" alt=""></div>
                                </div>
                            </div> -->
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="breadcrumb-text product-more">
                                    <span>Atelier</span>
                                    <h3>${prodDto.pd_name}</h3>
                                    <div>
                                    <a href="ATdetail?at_num=${at_num}" ><i class="fa fa-home"></i>
                                    <span> ${prodDto.pd_at_name} Home</span></a>
                                	 <button id="subBtn" style="float: right;">구독</button>
                                	</div>
                                </div>
                                <form id="subFrm" method="get">
                                	<input type="hidden" name="sc_cm_id" value="${mb.cm_id}">
                                	<input type="hidden" name="sc_at_id" value="${prodDto.pd_at_id}">
                                </form>
                             
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                   <!--  <p>간략한 제품 소개는 여기다가</p> -->
                                    <h4>${prodDto.pd_price} <span>${prodDto.pd_price*1.5} </span></h4>
                                </div>
                                
                                <hr>
                                <!-- <div class="pd-color">
                                    <h6>색상</h6>
                                    <div class="pd-color-choose">
                                        <div class="cc-item">
                                            <input type="radio" id="cc-black">
                                            <label for="cc-black"></label>
                                        </div>
                                        <div class="cc-item">
                                            <input type="radio" id="cc-yellow">
                       
                                            <label for="cc-yellow" class="cc-yellow"></label>
                                        </div>
                                        <div class="cc-item">
                                            <input type="radio" id="cc-violet">
                                            <label for="cc-violet" class="cc-violet"></label>
                                        </div>
                                    </div>
                                </div> -->
                                <!--  크기 
                                <div class="pd-size-choose">
                                    <div class="sc-item">
                                        <input type="radio" id="sm-size">
                                        <label for="sm-size">s</label>
                                    </div>
                                    <div class="sc-item">
                                        <input type="radio" id="md-size">
                                        <label for="md-size">m</label>
                                    </div>
                                    <div class="sc-item">
                                        <input type="radio" id="lg-size">
                                        <label for="lg-size">l</label>
                                    </div>
                                    <div class="sc-item">
                                        <input type="radio" id="xl-size">
                                        <label for="xl-size">xs</label>
                                    </div>
                                </div>
                                크기 -->
                                <div class="quantity">
	                                <form id="basketFrm" method="get">
	                                    <div id="bt_countDiv" class="pro-qty">
	                                        <input id="bt_count" type="text" name="bt_count" value="1">
	                                    </div>
	                                   <input type="hidden" name="bt_pd_code" value="${prodDto.pd_code}">  
	                                </form>
                                    <!-- <a href="basket" class="primary-btn pd-cart">장바구니에 담기</a> -->
                                    <input id="basketBtn" type="button"class="primary-btn pd-cart" value="장바구니에 담기">
                                </div>
                                
                                <ul class="pd-tags">
                             	    <li><span>카 테 고 리</span> : ${prodDto.pd_cate}</li>
                                    <li><span>제 품 코 드</span> : ${prodDto.pd_code}</li>
                                    <li style="float: right; font-size: 25px;"><span>결 제 금 액  : </span><span id="totalPrice" value="">${prodDto.pd_price}</span></li>
                                </ul>
                           <!--      <div class="pd-share">
                                    <div class="p-code">제품코드 : 00012</div>
                                    <div class="pd-social">
                                        <a href="https://www.facebook.com/"><i class="ti-facebook"></i></a>
                                        <a href="https://twitter.com/"><i class="ti-twitter-alt"></i></a>
                                        <a href="https://www.instagram.com/"><i class="ti-linkedin"></i></a>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <!--  탭시작 -->
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">제품설명</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">상세설명</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">고객후기</a>
                                </li>
                            </ul>
                        </div>
                        <!-- 탭시작 -->
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                   <div class="specification-table" style="width: 635px;">
                                        <table>
                                            <tr>
                                                <td class="p-catagory">카테고리</td>
                                                <td>
                                                   		${prodDto.pd_cate}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">상품가격</td>
                                                <td>
                                                    <div class="p-price">${prodDto.pd_price}</div>
                                                </td>
                                            </tr>
                                          
                                            <tr>
                                                <td class="p-catagory">공급량</td>
                                                <td>
                                                    <div class="p-stock">재고 : ${prodDto.pd_numofstock}</div>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="p-catagory">색상</td>
                                                <td><span>${prodDto.pd_option}</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="specification-table"style="width: 635px;">
                                        <table>
                                            <tr>
                                                <td>${prodDto.pd_detail}</td>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
	                            	<div class="customer-review-option">
	                                	<h4>고객리뷰</h4>
	                                 	<div class="comment-option">
	                                    	<table id="prTable" name="prTable">
		                                        <c:forEach var="review" items="${prList}">
		                                            <div class="co-item">
		                                                <div class="avatar-pic">
		                                                    <img src="https://t1.daumcdn.net/cfile/tistory/995499415BA82B591F" alt=""
		                                                    	style="padding-bottom: 0px;">
		                                                </div>
		                                                <div class="avatar-text">
		                                                    <div class="at-rating">
		                                                    	<c:if test="${review.pr_star eq 1}">
		                                                        	<i class="fa fa-star"></i>
		                                                         	<i class="fa fa-star-o"></i>
		                                                          	<i class="fa fa-star-o"></i>
		                                                           	<i class="fa fa-star-o"></i>
		                                                            <i class="fa fa-star-o"></i>
		                                                       	</c:if>
		                                                       	<c:if test="${review.pr_star eq 2}">
		                                                        	<i class="fa fa-star"></i>
		                                                         	<i class="fa fa-star"></i>
		                                                          	<i class="fa fa-star-o"></i>
		                                                           	<i class="fa fa-star-o"></i>
		                                                            <i class="fa fa-star-o"></i>
		                                                       	</c:if>
		                                                       	<c:if test="${review.pr_star eq 3}">
		                                                        	<i class="fa fa-star"></i>
		                                                         	<i class="fa fa-star"></i>
		                                                          	<i class="fa fa-star"></i>
		                                                           	<i class="fa fa-star-o"></i>
		                                                            <i class="fa fa-star-o"></i>
		                                                       	</c:if>
		                                                       	<c:if test="${review.pr_star eq 4}">
		                                                        	<i class="fa fa-star"></i>
		                                                         	<i class="fa fa-star"></i>
		                                                          	<i class="fa fa-star"></i>
		                                                           	<i class="fa fa-star"></i>
		                                                            <i class="fa fa-star-o"></i>
		                                                       	</c:if>
		                                                       	<c:if test="${review.pr_star eq 5}">
		                                                        	<i class="fa fa-star"></i>
		                                                         	<i class="fa fa-star"></i>
		                                                          	<i class="fa fa-star"></i>
		                                                           	<i class="fa fa-star"></i>
		                                                           	<i class="fa fa-star"></i>
		                                                       	</c:if>
		                                                    </div>
		                                                    <h5>${review.pr_cm_id}<span>${review.pr_dateSimple}</span></h5>
		                                                    <div class="at-reply">${review.pr_contents}</div>
		                                                </div>
		                                            </div>
		                                        </c:forEach>
		                                    </table>    
	                                    </div>
                                        <form id="prodReviewFrm" name="prodReviewFrm" style="height: 300px;">
		                                	<div class="leave-comment">
		                                    	<h4 style="margin-top: 55px; margin-bottom: 13px;">리뷰 작성</h4>
		                                    	<div class="starRev" style="margin-bottom: 10px;">
		                                        	<span class="starR">★</span>
													<span class="starR" >★</span>
													<span class="starR" >★</span>
													<span class="starR" >★</span>
													<span class="starR" >★</span>
													<input id="pr_star" type="hidden" name="pr_star" value=''>
		                                        </div>
		                                        <div class="row">
		                                        	<input type="hidden" value="${mb.cm_pfphoto}">
		                                            <div class="col-lg-6">
		                                                <input type="text" value="${mb.cm_nick}" readonly style="width: 32%; height: 35px; padding: 5px; color: grey;">
		                                            </div>
		                                            <div class="col-lg-6" style="position: absolute; margin-left: 168px;">
		                                            	<input type="text" value="${mb.cm_id}" readonly style="width: 42%; height: 35px; padding: 5px; color: grey;">
		                                            </div>
			                                        <div class="col-lg-12" style="position: absolute; margin-top: 45px;">
				                                    	<textarea placeholder="리뷰를 작성해주세요." id="pr_contents" name="pr_contents"
				                                            	required style="width: 58%; height: 150px;"></textarea>
				                                        <button type="button" id="#reviewBtn" class="site-btn" onclick="prodReviewAjax();"
				                                            	style="position: absolute; margin-left: -152px; margin-top: 160px;">
				                                        리뷰 등록
				                                        </button>
			                                        </div>
		                                        </div>
		                                    </div>
	                                	</form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 탭시마이 -->
                </div>
            </div>
        </div>
    </section>
    <!-- 하단바 Include -->
	<jsp:include page="Main_Footer.jsp" flush="false"/>

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/main.js"></script>
    
	<script src="resources/js/jquery.serializeObject.js"></script>
</body>
<script type="text/javascript">
   	$('#basketBtn').click(function(){
        if(confirm("이 상품을 장바구니에 담으시겠습니까?")){
        	insertbasket();
        } 		
   	});

	$("#bt_countDiv").on("click", function() {
   		var totalPrice = $("#bt_count").val() * ${prodDto.pd_price};
   		console.log(totalPrice);
   		$("#totalPrice").html(totalPrice);
	});

	
	  
	function insertbasket() {
		var basketFrm = $("#basketFrm").serializeObject();
		console.log(basketFrm);

		$.ajax({
			url : "insertbasket",
			type : "get",
			data : basketFrm,
			dataType : "json",
			success : function(data) {
				console.log(data);
				if (data != '') {
					alert("장바구니에 담겼습니다!");
				}
			},
			error : function(error, status) {
				console.log(error);
				console.log(status);
				alert("장바구니에 담기지 않았습니다.");
			}

		});
	}
	
	$('.starRev span').click(function(){
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		
		return false;
	});
	

	function prodReviewAjax() {	
		var prodReviewFrm = $("#prodReviewFrm").serializeObject();
		prodReviewFrm.pr_pd_code = "${prodDto.pd_code}";
		prodReviewFrm.pr_star = $("#pr_star").val();

		console.log(prodReviewFrm);
		var pr_contents = $("#pr_contents").val();
		
		if(pr_contents == "" || pr_contents == null) {
			alert("리뷰를 작성 해 주세요.");
		}
		else {
			$.ajax({
				url: "prodReview",
				type: "get",
				data: prodReviewFrm,
				dataType: "json",
				success: function(data) {
			    	console.log(data.prList);
			        var prList = '<table name="prTable">';
			        for(var i = 0; i < data.prList.length; i++) {
			        	prList += '<div class="co-item">'
		                + '<div class="avatar-pic">'
		                + '<img src="https://t1.daumcdn.net/cfile/tistory/995499415BA82B591F" alt="" style="padding-bottom: 0px;">'
		                + '</div>'
		                + '<div class="avatar-text">'
		                + '<div class="at-rating">'
			        	switch(data.prList[i].pr_star){
			         	case 1:
				          	prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
				            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
				            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
				            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
				            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
				            + '</div>'
				            + '<form id="${review.pr_num}">'
                            + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                            + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                            + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                            + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                        	+ '</form>'
				            + '</div>'
				            + '</div>'
							break; 
			         	case 2:
			            	prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '</div>'
			                + '<form id="${review.pr_num}">'
                            + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                            + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                            + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                            + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                        	+ '</form>'
			                + '</div>'
			                + '</div>'
					        break;
						case 3:
							prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '</div>'
			                + '<form id="${review.pr_num}">'
                            + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                            + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                            + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                            + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                        	+ '</form>'
			                + '</div>'
			                + '</div>'
							break;
						case 4:
							prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '</div>'
			                + '<form id="${review.pr_num}">'
                            + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                            + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                            + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                            + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                        	+ '</form>'
			                + '</div>'
			                + '</div>'
							break;
						case 5:
							prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			                + '</div>'
			                + '<form id="${review.pr_num}">'
                            + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                            + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                            + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                            + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                        	+ '</form>'
			                + '</div>'
			                + '</div>'
							break;
						}
			        }
			        prList += '</table>';

					$("#prTable").html(prList);
					alert("댓글 등록 완료!");
					$("#pr_contents").val("");
				},
				error: function(error) {
					alert("리뷰 등록 실패");
				}
			});
		}	
	}
	
 	$(".starR").click(function() {	
 		var selecedStar = $('.on').length;
 		console.log(selecedStar);
 		$("#pr_star").val(selecedStar);
 	})
 	
 	function reviewDelete(prNum) {
 		console.log(prNum);
 		var reviewDeleteFrm = $("#prNum").serializeObject();
 		reviewDeleteFrm.pd_code = "${prodDto.pd_code}";
 		reviewDeleteFrm.pr_num = prNum;
 		console.log(reviewDeleteFrm);
 		$.ajax({
			url: "reviewDelete",
			type: "get",
			data: reviewDeleteFrm,
			dataType: "json",
			success: function(data) {
				if(data.prList == null) {
					alert("리뷰 삭제 실패");
				} else {
				var prList = '<table name="prTable">';
		        for(var i = 0; i < data.prList.length; i++) {
		        	prList += '<div class="co-item">'
	                + '<div class="avatar-pic">'
	                + '<img src="https://t1.daumcdn.net/cfile/tistory/995499415BA82B591F" alt="" style="padding-bottom: 0px;">'
	                + '</div>'
	                + '<div class="avatar-text">'
	                + '<div class="at-rating">'
		        	switch(data.prList[i].pr_star){
		         	case 1:
			          	prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			            + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
			            + '</div>'
			            + '<form id="${review.pr_num}">'
                        + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                        + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                        + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                        + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                    	+ '</form>'
			            + '</div>'
			            + '</div>'
						break; 
		         	case 2:
		            	prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '</div>'
		                + '<form id="${review.pr_num}">'
                        + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                        + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                        + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                        + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                    	+ '</form>'
		                + '</div>'
		                + '</div>'
				        break;
					case 3:
						prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '</div>'
		                + '<form id="${review.pr_num}">'
                        + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                        + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                        + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                        + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                    	+ '</form>'
		                + '</div>'
		                + '</div>'
						break;
					case 4:
						prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star-o" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '</div>'
		                + '<form id="${review.pr_num}">'
                        + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                        + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                        + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                        + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                    	+ '</form>'
		                + '</div>'
		                + '</div>'
						break;
					case 5:
						prList += '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '<i class="fa fa-star" style="font-size: 15px; letter-spacing: 3.5px;">' + '</i>'
		                + '</div>'
		                + '<form id="${review.pr_num}">'
                        + '<input type="hidden" value="' + data.prList[i].pr_num + '">'
                        + '<h5>' + data.prList[i].pr_cm_id + '<span>' + data.prList[i].pr_date + '</span>' + '</h5>'
                        + '<img src="resources/AT_front/images/x.png" onclick="reviewDelete(' + data.prList[i].pr_num + ');" style="position: absolute; width: 13px; margin: -26px 0 0 360px; cursor: pointer;">'
                        + '<div class="at-reply">' + data.prList[i].pr_contents + '</div>'
                    	+ '</form>'
		                + '</div>'
		                + '</div>'
						break;
					}
		        }
		        prList += '</table>';

				$("#prTable").html(prList);
				alert("리뷰 삭제 완료!");
				}
			},
			error: function(error) {
				alert("리뷰 삭제 실패");
			}
 		});
 	}
 	
    
    	$("#subBtn").click(function(){
    		if(confirm("구독 하시겠습니까?")){
    			var subFrm = $("#subFrm").serializeObject();
    			$.ajax({
    				url: "SubFromProd",
    				type: "get",
    				data: subFrm,
    				dataType: "json",
    				success: function(data) {
    				},
    				error: function(error) {
    					alert("구독 하였습니다!");
    				}
    			})
    		}
    	})
</script>
</html>