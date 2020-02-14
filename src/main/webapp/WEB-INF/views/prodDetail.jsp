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
                                	 <button style="float: right;">구독</button>
                                	</div>
                                </div>
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
                                        <h4>고객후기</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="./resources/main/img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>SSibal Rome <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Fucking !</div>
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="./resources/main/img/product-single/avatar-2.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Jogga sam <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">OMG!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 내 점수 
                                        <div class="personal-rating">
                                            <h6>Your Ratind</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                        -->
                                        <div class="leave-comment">
                                            <h4>후기 남기기</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="성명" required>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Email" required>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="내용" required></textarea>
                                                        <button type="submit" class="site-btn">후기 등록</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
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
</script>
</html>