<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
		<div class="blog-sidebar">
			<div class="profile_form"
				style="border: 2px solid #00000033; text-align: center; border-radius: 30px;">
				<!-- 
							<img class="profile_img"
								src="./resources/main/img/blog/profile_sample.jpg"
								style="padding: 30px 0px;">
							 -->
				<!-- spring taglib
							 <img class="profile_img"
								src="<spring:url value = '/profile/tester@gmail'/>"
								style="padding: 30px 0px;">
								 -->
				<!-- 
								 <a><img class="profile_img" src="/profileIMG?name=${mb.cm_pfphoto}" style="padding: 30px 0px;"></a>
								  -->
				<!-- 
								  <img class="profile_img" src="resources\upload\profile\"a style="padding: 30px 0px;">
								   -->
				<img class="profile_img" id="profile_img"
					src="./resources/main/img/blog/penguin.jpg"
					style="padding: 30px 0px;">
				<h4>${mb.cm_nick}</h4>
				<p>${mb.cm_id}</p>
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
			<div class="blog-tags">
				<h4>Product Tags</h4>
				<div class="tag-item">
					<a href="#">Towel</a> <a href="#">Shoes</a> <a href="#">Coat</a> <a
						href="#">Dresses</a> <a href="#">Trousers</a> <a href="#">Men's
						hats</a> <a href="#">Backpack</a>
				</div>
			</div>
		</div>
	</div>
</body>
	<script type="text/javascript">
	/* ---------------------------------------------------------------------------------------
	 * 기능: 프로필 이미지 출력
	 * 작성자: JSH
	 * 작성일: 2020.02.06
	 -----------------------------------------------------------------------------------------*/
		var imgRoot = 'resources/upload/profile/';
		var sessionImg = '${mb.cm_pfphoto}';
		var sessionImgRP = sessionImg.replace('com','jpg');
		console.log(sessionImgRP);
		
		var sessionImgView = imgRoot+sessionImgRP;
		console.log(sessionImgView);
		
		document.getElementById('profile_img').setAttribute('src',sessionImgView);
	</script>
</html>