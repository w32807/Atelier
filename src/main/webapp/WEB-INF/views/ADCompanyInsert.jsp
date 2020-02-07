<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Atelier | Admin</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
   content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
<!--
    =========================================================
    * ArchitectUI HTML Theme Dashboard - v1.0.0
    =========================================================
    * Product Page: https://dashboardpack.com
    * Copyright 2019 DashboardPack (https://dashboardpack.com)
    * Licensed under MIT (https://github.com/DashboardPack/architectui-html-theme-free/blob/master/LICENSE)
    =========================================================
    * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    -->


<!-- <link rel="shortcut icon" href="./resources/ADATList/img/favicon.png"> -->


<!-- Bootstrap CSS -->
<link href="./resources/ADATList/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<!-- 
<link href="./resources/ADATList/css/bootstrap-theme.css"
   rel="stylesheet"> -->
<!--external css-->
<!-- font icon -->
<link href="./resources/ADATList/css/elegant-icons-style.css"
   rel="stylesheet" />
<!-- <link href="./resources/ADATList/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
<link href="./resources/ADATList/css/style.css" rel="stylesheet">
<link href="./resources/ADATList/css/style-responsive.css"
   rel="stylesheet" />
<link href="./resources/ADATList/css/main.css" rel="stylesheet">

<style type="text/css">
	.material_input{
		margin: 30px;
		text-align: center;
	}
	
	.material_input label {
		font-weight: bold; 
		color: darkslategray;
	}
	
</style>

</head>
<body>
   <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
      <div class="app-header header-shadow">
         <div class="app-header__logo">
            
            <!--로고 이름바꾸기. -->
            <div class="header__pane ml-auto">
             <!--   <div>
                  <button type="button"
                     class="hamburger close-sidebar-btn hamburger--elastic"
                     data-class="closed-sidebar">
                     <span class="hamburger-box"> <span class="hamburger-inner"></span>
                     </span>
                  </button>
               </div> -->
            </div>
         </div>
         <div class="app-header__mobile-menu">
            <!-- <div>
               <button type="button"
                  class="hamburger hamburger--elastic mobile-toggle-nav">
                  <span class="hamburger-box"> <span class="hamburger-inner"></span>
                  </span>
               </button>
            </div> -->
         </div>
         <div class="app-header__menu">
           <!--  <span>
               <button type="button"
                  class="btn-icon btn-icon-only btn btn-info btn-sm mobile-toggle-header-nav">
                  <span class="btn-icon-wrapper"> <i
                     class="fa fa-ellipsis-v fa-w-6"></i>
                  </span>
               </button>
            </span> -->
         </div>
         <div class="app-header__content">
            <div class="app-header-left">
               <div class="search-wrapper">
                  
                  <button class="close"></button>
               </div>
            </div>
         </div>
      </div>
      <div class="app-main">
         <div class="app-sidebar sidebar-shadow">
            <div class="app-header__logo">
               <div class="logo-src"></div>
					<div class="header__pane ml-auto">
						<div>
							<button type="button"
								class="hamburger close-sidebar-btn hamburger--elastic"
								data-class="closed-sidebar">
								<span class="hamburger-box"> <span
									class="hamburger-inner"></span>
								</span>
							</button>
						</div>
					</div>
				</div>
            <div class="app-header__menu">
               <span>
                  <button type="button"
                     class="btn-icon btn-icon-only btn btn-info btn-sm mobile-toggle-header-nav">
                     <span class="btn-icon-wrapper"> <i
                        class="fa fa-ellipsis-v fa-w-6"></i>
                     </span>
                  </button>
               </span>
            </div>
            <div class="scrollbar-sidebar">
               <div class="app-sidebar__inner">
               <section style="border: shadow">
							<div><a href="main"><button class="btn btn-info btn-lg" style="width:290px; margin-left:-20px; text-align:center;"><h4 style="margin-right:10px;"><i class="fa fa-home"></i> Atelier</h4></button></a></div>
						</section>
                  <ul class="vertical-nav-menu">
                     <li class="app-sidebar__heading">고객관리</li>
                     <ul>
                        <li><a href="ADNoticeList"> 공지사항 </a> <a href="ADFAQ">
                              FAQ </a></li>
                     </ul>
                     <li>
                     <li class="app-sidebar__heading">회원관리</li>
                     <ul>
                        <li><a href="ADMessage"> <!--여기에 메--> 메세지답변
                        </a></li>
                     </ul>
                     </li>
                     <li>
                     <li class="app-sidebar__heading">공방관리</li>
                     <ul>
                        <li><a href="ADATMemberUp"> 공방회원 승인 / 거부 </a></li>
                        <li><a href="ADATList"> <i class="metismenu-icon">
                           </i>공방리스트
                        </a></li>
                     </ul>
                     </li>

                     <li class="app-sidebar__heading">업체관리</li>
                     <ul>
                        <li><a href="ADCompany"> 원자재 업체 리스트 </a></li>
                     </ul>
                     <li class="app-sidebar__heading">상품관리</li>
                     <ul>

                        <li><a href="ADProdManage"> 상품삭제 </a></li>
                     </ul>
                  </ul>
               </div>
            </div>
         </div>
         
         <div class="app-main__outer">
            <div class="app-main__inner">
         
         <div class="row">
          <div class="col-md-12">
            <section class="panel">
              <header class="panel-heading">
                <h2 style="text-align:center;">원자재 업체 리스트</h2>
              </header>
              <form id="MaterialInsert" action="MaterialInsert" method="post" onsubmit="return check()">
					<div class="material_input">
						<label for="CM_ID" style="margin-top: 100px;">원자재 이름 *</label> 
						<input type="text" name="RM_TYPE" id="RM_TYPE" style="margin-left: 50px;" required>
					</div>
                            
					<div class="material_input">
						<label for="CM_PWD">납품 업체 *</label>
						<input type="text" name ="PRM_COMPANY" id="PRM_COMPANY" style="margin-left: 63px;" required>
					</div>
					<div class="material_input">
						<label for="CON_CM_PWD">원자재 색상 *</label>
						<input type="text" name ="RM_COLOR" id="RM_COLOR" style="margin-left: 48px;" required>
					</div>
					<div class="material_input">
						<label for="CM_NICK" style="margin-bottom: 70px;">원자재 단가 *</label>
						<input type="text" name="RM_PRICE" id="RM_PRICE" style="margin-left: 47px;" required>
					</div>
					<div class="button" style="text-align: center;">
						<button type="submit" class="btn btn-info btn-lg" style=" width:120px; height:60; text-align: center; font-size: 15px;">등록하기</button>
					</div>
				</form>
            </section>
        </div>
   </div>
</div>
   </div>
         </div>
         <script src="./resources/ADATList/js/jquery.js"></script>
         <script src="./resources/ADATList/js/bootstrap.min.js"></script>
         <!-- nicescroll -->
         <script src="./resources/ADATList/js/jquery.scrollTo.min.js"></script>
         <script src="./resources/ADATList/js/jquery.nicescroll.js"
            type="text/javascript"></script>
         <!--custome script for all page-->
         <script src="./resources/ADATList/js/scripts.js"></script>
         	<script type="text/javascript"
					src="resources/assets/scripts/main.js"></script>
</body>
</html>