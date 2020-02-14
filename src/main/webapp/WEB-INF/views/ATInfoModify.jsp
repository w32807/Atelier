<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<style type="text/css">
		table, td {
			padding: 5px 4px;
			vertical-align: top;
		}
		
		.input_text {
			width: 400px;
		    font-size: 15px;
		    height: 35px;
		    padding: 0 8px;
		    border: 1px solid #c4c4c4;
		    -webkit-appearance: none;
		    -webkit-border-radius: 0;
		}
		
		.logo .profile_img {
		    float: left;
		    position: relative;
		    width: 161px;
		    height: 161px;
		    border: solid 1px #e6e6e6;
		    overflow: hidden;
		}
		
		.info_btn {
			margin: 30px 0 0 180px;
			background: #A09182;
		    color: #fff;
		    border: 2px solid #A09182;
		    font-size: 13px;
		    font-weight: bolder;
		}
	</style>
	</head>
	<body>
	<!-- 상단바 Include -->
	<jsp:include page="Main_Upper_RC.jsp" flush="false"/>

	<!-- 좌측바 Include -->
		<div id="colorlib-page">
		<jsp:include page="ATM_LBar.jsp" flush="false"/>

		<div id="colorlib-main">
			<div class="colorlib-contact" style="padding-bottom: 7.5em;">
				<div class="container-fluid" style="margin-left: 100px;">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3">
							<h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
								style="font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">공방 페이지 수정<hr></h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7" style="margin: 0 350px;">
							<div class="row">
								<form name="modifyFrm" action="/ATInfoModify" onsubmit="return modifyChk()">
								<table class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft" style="margin-bottom: 30px;">
										<tr style="font-size: 15px;">
											<td style="font-weight: bold;">카테고리</td>
			                                <td><input type="checkbox" name="category" value="clothing" style="margin">의류&nbsp;&nbsp;&nbsp;
			                                <input type="checkbox" name="category" value="bag">가방&nbsp;&nbsp;&nbsp;
			                               	<input type="checkbox" name="category" value="shoes">신발&nbsp;&nbsp;&nbsp;
			                                <input type="checkbox" name="category" value="wallet">지갑&nbsp;&nbsp;&nbsp;
			                                <input type="checkbox" name="category" value="belt">벨트&nbsp;&nbsp;&nbsp;
			                                <input type="checkbox" name="category" value="gloves">장갑&nbsp;&nbsp;&nbsp;
			                               	<input type="checkbox" name="category" value="furniture">가구&nbsp;&nbsp;&nbsp;
			                                <input type="checkbox" name="category" value="other">기타</td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td  style="font-weight: bold;">공방 이름</td>
											<td><input type="text" class="input_text form-control" value="신청서에 有(수정가능)"></td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td style="font-weight: bold;">공방 소개글</td>
											<td>
												<textarea class="input_text form-control " cols="30" rows="7" name="">메인 페이지 공방 소개글 출력</textarea>
											</td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td style="font-weight: bold;">공방 사이트</td>
											<td><input type="text" class="input_text form-control"></td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td style="font-weight: bold;">공방 로고</td>
											<td class="logo">
												<div class="profile_img">
													<img id="" src="https://i.imgur.com/p05UZV8.jpg" style="width: 161px;">
												</div>
												<input class="input_text form-control" type="file" 
													onchange="fileChk(this)" style="margin: 130px 0 0; border: 0" multiple>
											</td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td style="font-weight: bold;">공방 주소</td>
											<td><input type="text" class="input_text form-control"></td>
										</tr>
										<tr style="font-size: 15px;">
										 	<td style="font-weight: bold;">공방 연락처</td>
											<td><input type="text" class="input_text form-control"></td>
										</tr>						
									</table>
									<input type="submit" class="btn info_btn btn-send-message" value="submit"
											onsubmit="modifyChk();" style="margin-bottom: 100px;">
									<a href="./" class="btn info_btn btn-send-message" style="margin-left: 10px; margin-bottom: 100px;">CANCLE</a>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<!-- Google Map -->
	
	
	<!-- MAIN JS -->
	<script src="resources/AT_front/js/main.js"></script>
	
	<script type="text/javascript">
		function modifyChk() {
			var frm = document.getElementsByClassName("input_text form-control");	//위의 form태그 내용을 전부 다 가져와서 변수 frm에 집어넣음	
			console.log(frm);
			console.log("zzz");
			var length = frm.length;	//frm의 길이 = submit 버튼을 뺀 나머지 input 태그의 개수
			//var a = false;
			//input 태그 중에 입력이 안된 요소를 확인
			for(var i = 0; i < length; i++) {
				//a = false;
				console.log(i+"번째");
				//input 태그에 입력이 안된 요소가 있을 경우
				if(frm[i].value == "" || frm[i].value == null) {
					alert("필수 입력 사항을 모두 입력하세요.");
					frm[i].focus();
					return false;	//action이 실행되지않음(break;)
				}
				
			}
			return true;
		}
		
		
	</script>
	</body>
</html>

