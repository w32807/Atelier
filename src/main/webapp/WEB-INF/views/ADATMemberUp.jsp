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

<style type="text/css">
.pagination>li>a {
   border-radius: 50% !important;
   margin: 0 5px;
}

#custom-search-form {
   margin: 0;
   margin-top: 5px;
   padding: 0;
}

#custom-search-form .search-query {
   padding-right: 3px;
   padding-right: 4px \9;
   padding-left: 3px;
   padding-left: 4px \9;
   /* IE7-8 doesn't have border-radius, so don't indent the padding */
   margin-bottom: 0;
   -webkit-border-radius: 3px;
   -moz-border-radius: 3px;
   border-radius: 3px;
}

#custom-search-form button {
   border: 0;
   background: none;
   /** belows styles are working good */
   padding: 2px 5px;
   margin-top: 2px;
   position: relative;
   left: -28px;
   /* IE7-8 doesn't have border-radius, so don't indent the padding */
   margin-bottom: 0;
   -webkit-border-radius: 3px;
   -moz-border-radius: 3px;
   border-radius: 3px;
}

.search-query:focus+button {
   z-index: 3;
}
</style>





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

</head>
<body>
   <div
      class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
      <div class="app-header header-shadow">
         <div class="app-header__logo">
            
            <!--로고 이름바꾸기. -->
            <div class="header__pane ml-auto">
             
            </div>
         </div>
         <div class="app-header__mobile-menu">
            
         </div>
         <div class="app-header__menu">
            <span>
               <button type="button"
                  class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                  <span class="btn-icon-wrapper"> <i
                     class="fa fa-ellipsis-v fa-w-6"></i>
                  </span>
               </button>
            </span>
         </div>
         <div class="app-header__content">
            <div class="app-header-left">

               <div class="container">
                  <div class="row"></div>

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

               </div>
            </div>
            <div class="app-header__mobile-menu">
               
            </div>
            <div class="app-header__menu">
               <span>
                  <button type="button"
                     class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
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
                     <header class="panel-heading no-border">
                           <b>공방회원 승인 / 거부 </b>
                          </header>
                        <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><input type="checkbox" id="allCheck"></th>
                                 <th><i class="icon_mail_alt"></i> 번호</th>
                                 <th><i class="icon_mail_alt"></i> Email</th>
                                 <th><i class="icon_calendar"></i> 공방명</th>
                                 <th><i class="icon_calendar"></i> 전화번호</th>
                                 <th><i class="icon_calendar"></i> 주소</th>
                                 <th><i class="icon_pin_alt"></i> 공방 SNS</th>
                                 <th><i class="icon_pin_alt"></i> 카테고리1</th>
                                 <th><i class="icon_pin_alt"></i> 카테고리2</th>
                                 <th><i class="icon_pin_alt"></i> 카테고리3</th>
                                 <th><i class="icon_pin_alt"></i> 승인</th>
                                 <th><i class="icon_pin_alt"></i> 불가</th>
                              </tr>
                              <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>

                                    
                                 </div>
                              </tr>
                              <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                               <tr>
                                 <th><input type="checkbox"></th>
                                 <td>69</td>
                                 <td>김종현@avsee06.tv</td>
                                 <td>종현이의 가죽채찍</td>
                                 <td>010-6666-9999</td>
                                 <td>인천광역시 종현이네 행복하고 해피해피한 sm 하우스</td>
                                 <td>트윗트윗트윗@트윗</td>
                                 <td>가죽채찍</td>
                                 <td>가죽수갑</td>
                                 <td>가죽 옷</td>
                                 <div class="btn-group">
                                    <td style="text-align: center;"><a
                                       class="btn btn-primary" href="#"><i
                                          class="icon_house_alt"></i></a></td>

                                    <td style="text-align: center;"><a
                                       class="btn btn-danger" href="#"><i
                                          class="icon_check_alt2"></i></a></td>
                                 </div>
                              </tr>
                             
                           </tbody>
                        </table>
                     </section>
                  </div>
               </div>


               



               <div class="row">
                  <div class="container">
                     <ul class="pagination" style="padding-left: 35%;">

                        <li class="disabled"><a href="#">«</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>

                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script src="./resources/main/js/jquery-3.3.1.min.js" /></script>
   <script src="./resources/ADATList/js/bootstrap.min.js"></script>
   <!-- nicescroll -->
   <script src="./resources/ADATList/js/jquery.scrollTo.min.js"></script>
   <script src="./resources/ADATList/js/jquery.nicescroll.js"
      type="text/javascript"></script>
   <!--custome script for all page-->
   <script src="./resources/ADATList/js/scripts.js"></script>
   	<script type="text/javascript"
					src="resources/assets/scripts/main.js"></script>


   <script type="text/javascript">
      $(function() { //전체선택 체크박스 클릭 
         $("#allCheck").click(function() { //만약 전체 선택 체크박스가 체크된상태일경우 
            if ($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다
               $("input[type=checkbox]").prop("checked", true);
            }
            // 전체선택 체크박스가 해제된 경우 
            else { //해당화면에 모든 checkbox들의 체크를해제시킨다. 
               $("input[type=checkbox]").prop("checked", false);
            }
         })
      })
   </script>

</body>



</html>