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
	<!-- 상단바 Include -->
	<jsp:include page="Main_Upper.jsp" flush="false"/>


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
								<li><a href="myDropout">회원 탈퇴</a></li>
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

					</div>
				</div>
				<div class="col-lg-9 order-1 order-lg-2">
					<!-- Register Section Begin -->
					<div class="register-login-section spad">
						<div class="container">
							<div class="row">
								<div class="col-lg-6 offset-lg-3">
									<div class="login-form">
										<h2>회원 탈퇴</h2>
										<h4 style="text-align:center;">탈퇴 전에 꼭 읽어주세요!</h4>
										<br>
										<p style="text-align:center;">
											지금 탈퇴를 하시면 회원님께서 활동하신 모든 기록이 삭제됩니다.<br>
											 <br>신중히 고민 후 결정해 주세요. <br> <br>
										</p>
										<form action="DropoutProc" method="post">
											<div class="group-input">
												<label for="username">ID </label> <input
													type="text" id="username" name="cm_id"
													value=${mb.cm_id} readonly>
												
											</div>
											<div class="group-input">
												<label for="pass">Password를 입력해주세요. *</label> <input
													type="password" id="pass" name="cm_pwd" required>
											</div>
										
											<button type="submit" class="site-btn login-btn">
												탈퇴하기
											</button>
										</form>
									</div>
								</div>
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

	<script type="text/javascript">
    /* ---------------------------------------------------------------------------------------
	 * 기능: 로그인 여부에 따른 버튼 출력여부 결정
	 * 작성자: JSG
	 * 수정자: JSH
	 * 작성일: 2020.02.04
	 -----------------------------------------------------------------------------------------*/
    window.onload = function(){
    	$('.hideandshow').hide();
    	var mid = '${mb.cm_id}';
    	var mname = '${mb.cm_name}';
    	console.log('세션값'+'${mb}');
    	console.log(mid);
    	console.log(mname);
    	if(mid != ''){
    		$('.hideandshow').show();
    	}
    	
    	$('.showandhide').show();
    	var mid1 = '${mb.cm_id}';
    	var mname1 = '${mb.cm_name}';
    	console.log('세션값'+'${mb}');
    	console.log(mid1);
    	console.log(mname1);
    	if(mid1 != ''){
    		$('.showandhide').hide();
    	}
    	
    }
    </script>
</body>

</html>