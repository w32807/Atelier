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
    <title>Atelier | Sign In</title>

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
      		window.onload = function() {//이 페이지가 실행 되면, 이 함수를 실행해라
				var chk = "${check}";
				if(chk == "fail"){
					alert("회원 가입 실패");
					location.reload(true);//화면을 다시 한번 불러오면서 check를 리셋함 
				}
			}
	</script>
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
                        <a href="/"><i class="fa fa-home"></i> Home</a>
                        <span>Register</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                    <div class="newslatter-item">
                         <a href="/">
                                <img src="./resources/main/img/logo_bottom.png" alt="" style="margin-top: 25px;">
                            </a>
                    </div>
                        
                        <form id="memberJoinFrm" action="memberInsert" method="post" onsubmit="return check()">
                            <div class="group-input">
                                <label for="CM_ID">Email을 입력하세요. *</label> 
                                <input type="text" name="cm_id" id="CM_ID" placeholder="Ex) example@example.com" required>
                                <!-- 
                                <input type="button" value="중복검사" class="site-btn register-btn" id="CM_ID" >
                                 -->
                                 <div class="check_font" id="id_check"></div>
                            </div>
                            
                            <div class="group-input">
                                <label for="CM_PWD">Password를 입력하세요. *</label>
                                <input type="text" name ="cm_pwd" id="CM_PWD" placeholder="영문과 숫자를 조합한 8자리이상의 비밀번호 입력" required onblur=checkvalue();>
                            </div>
                            <div class="group-input">
                                <label for="CON_CM_PWD">Password 확인 *</label>
                                <input type="text" name ="CON_CM_PWD" id="CON_CM_PWD" required onblur=checkvalue();>
                            </div>
                            <!-- 비밀번호 일치/불일치 출력 -->
                            <input type="text" name="status" style="border:0;color:highlight;font size:12px 굴림;width:160" readonly onfocus="this.blur();" value=" 비밀번호를 입력해 주세요 ">  
                            <div class="group-input">
                                <label for="CM_NAME">성함을 입력하세요. *</label>
                                <input type="text" name="cm_name" id="CM_NAME" required>
                            </div>
                            <div class="group-input">
                                <label for="CM_NICK">닉네임을 입력하세요. *</label>
                                <input type="text" name="cm_nick" id="CM_NICK" required>
                            </div>
                            <div class="group-input">
                                <label for="CM_PHONE">전화번호를 입력하세요. *</label>
                                <input type="text" name="cm_phone" id="CM_PHONE" placeholder="Ex) 070-6749-5882" required>
                            </div>
                            <div class="group-input">
                                <label for="CM_ADDR">주소를 입력하세요. *</label>
                                <input type="text" name="cm_addr" id="CM_ADDR" required>
                            </div>
                            <div class="payment-check">
                                    <div class="pc-item">
                                        <label for="pc-check">
                                            개인정보 수집 및 이용에 대한 안내(필수)
                                            <input type="checkbox" id="pc-check" required>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>                          
                                </div>
                            <button type="submit" class="site-btn register-btn">Atelier 회원가입</button>
                        </form>
                        <div class="switch-login">
                            <a href="login" class="or-login">로그인</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    
    <!-- 파트너 로고 삭제 
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
   End -->
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

<!-- 비밀번호 확인 -->
<script language='javascript'>

// checkvalue 기능
function checkvalue() {

// a 텍스트 필드와 b 텍스트 필드 중 둘다 값이 있을 때
if(memberJoinFrm.cm_pwd.value && memberJoinFrm.CON_CM_PWD.value) {

  // 두 필드의 값이 서로 다를 때
  if(memberJoinFrm.cm_pwd.value!=memberJoinFrm.CON_CM_PWD.value){

   // status 필드에 일치하지 않는다는 문장 출력
   memberJoinFrm.status.value = "[ 일치하지 않습니다 ]";

   // 그에 맞게 길이 수정
   memberJoinFrm.status.style.width = 120;

  // 두 필드의 값이 동일 할 때
  } else {

   // status 필드에 일치한다는 문장 출력
   memberJoinFrm.status.value = "[ 일치합니다 ]";

   // 역시 그에 맞게 길이 수정
   memberJoinFrm.status.style.width = 83;
  }

// a 텍스트 필드와 b 텍스트 필드 두중하나라도 값이 없을 때
} else {

  // 아무것도 입력이 안 되어 있으므로 비밀번호를 입력해 달라는 메세지를 status 필드에 출력 함
  memberJoinFrm.status.value = "[ 비밀번호를 입력해 주세요 ]";

  // 그에 맞게 길이 수정
  memberJoinFrm.status.style.width = 160;
}

}

</script>


	<script>
/* ---------------------------------------------------------------------------------------
 * 기능: 회원가입 / 아이디 유효성 검사
 * 작성자: JSH
 * 작성일: 2020.02.04
 -----------------------------------------------------------------------------------------*/
	$("#CM_ID").blur(function() {
		console.log("JSP 유효성 검사 실행")
		// id = "id_reg" / name = "userId"
		var CM_ID = $('#CM_ID').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/memJoinFrm/idCheck?CM_ID='+ CM_ID,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다!");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						
						//if(idJ.test(CM_ID)){
							// 0 : 아이디 길이 / 문자열 검사
							//$("#id_check").text("");
							//$("#reg_submit").attr("disabled", false);
							//}
						 if(CM_ID == ""){
							
							$('#id_check').text('아이디를 입력해주세요!');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							
							if (CM_ID.indexOf("@") != -1) {
							$('#id_check').text("사용 가능한 아이디 입니다!");
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
							
							} else {
									$('#id_check').text("아이디를 E-mail 형식으로 입력해주세요!");
									$('#id_check').css('color', 'red');
									$("#reg_submit").attr("disabled", true);
							}
						}
						 
						
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
</script>

</body>

</html>