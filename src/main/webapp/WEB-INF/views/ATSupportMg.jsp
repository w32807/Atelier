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
      .support-notice {
         letter-spacing: 1px;
         font-size: 14px;
         text-align: center;
         color: #3C6056;
         font-weight: 600;
         margin-bottom: 50px;
      }
      
      table{
         width: 950px;
         line-height: 1.5;
         margin-left: 260px;
      }
      
      table, th {
         margin-bottom: 15px;
         padding: 12px 0;
          color: #353535;
          vertical-align: middle;
          font-size: 14px;
          font-weight: 600;
      }
      
      table, tr, td {
         text-align: center;
      }
      
   </style>
   </head>
   
   <body>
   <!-- 상단바 Include -->
	<jsp:include page="Main_Upper.jsp" flush="false"/>
    
    <!-- 좌측바 Include -->
	<div id="colorlib-page">
		<jsp:include page="AT_LBar.jsp" flush="false"/>

      <div id="colorlib-main">
         <div class="colorlib-about">
            <div class="container-fluid" style="height: auto; min-height: 800px;">
               <div class="row">
                  <div class="col-md-6 col-md-offset-3 col-md-pull-3">
                     <h2 class="colorlib-heading animate-box" data-animate-effect="fadeInLeft"
                        style="margin-left: 100px; font-weight: bolder; font-size: 23px; letter-spacing: 0.5px;">응원의 한마디<hr></h2>
                  </div>
               </div>
               <div class="support-notice">
                  아틀리에 작가님께 격려와 응원의 글을 남겨주셔서 감사드립니다.<br>
                  홈페이지의 건전한 문화를 위해 타인을 심하게 비방하는 욕설이나<br>
                  단체의 방향과 맞지 않는 글과 광고 등은 바로 삭제하오니 삼가해주시길
                  바랍니다.
               </div>
               <!-- 메세지 전송 -->
               <form id="supportFrm" name="supportFrm">
                  <table>
                     <tr>
                        <td>
                           <textarea rows="2" cols="100" id="sm_contents" name="sm_contents"
                                 style="margin-left: -100px; width: 700px;">
                           </textarea>
                        </td>
                        <td>
                           <input type="hidden" name="sm_sender" value="${mb.cm_id}">
                           <input type="hidden" name="sm_receiver" value="${gb.at_id}">
                           <input type="button" id ="supportProc" value="메세지전송" style="width: 100px; height: 50px; padding: 0; margin: -5px 0 0 -215px;">
                        </td>
                     </tr>
                  </table>
               </form>
               <table>
                  <tr style="background-color: #A09182;">
                     <th style="width: 50px; text-align: center; color: white;">No</th>
                     <th style="width: 550px; text-align: left; padding-left: 15px; color: white;">Content</th>
                     <th style="width: 200px; text-align: center; color: white;">Date</th>
                     <th style="width: 150px; text-align: center; color: white;">Writer</th>
                     <th style="width: 80px; text-align: center; padding-right: 15px; color: white;">Delete</th>
                  </tr>
               
               </table>
               
               <!-- SUPPORT_MG에 메세지 리스트 Ajax로 처리 -->
               <form id="deleteMessage" name="deleteMessage">
                  <table id ="rTable">
                     <c:forEach var="r" items="${rList}">
                     <input type="hidden" name="sm_receiver" value="수신자">
                        <tr style="background-color: white; border: 2px solid #A09182; height:40px;">
                           <td style="width: 50px; text-align: center;">
                              ${r.sm_num}
                           </td>
                           <td style="width: 550px; text-align: left; padding-left: 15px;">
                              ${r.sm_contents}
                           </td>
                           <td style="width: 200px;">
                              ${r.sm_date}
                           </td>
                           <td style="width: 150px;">
                              ${r.sm_sender}
                           </td>
                           <td style="padding-right: 15px; width: 80px;">
                              <button type="button" id="btnDelete" 
                                 style="border: 0; background-color: white;">
                                 삭제<!-- <img src="resources/AT_front/images/x.png" style="width: 15px;"> -->
                              </button>
                           </td>
                        </tr>
                        </c:forEach>
                  </table>
                  </form>
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
   <!-- serializeObject -->
   <script src="../resources/js/jquery.serializeObject.js"></script>
   
<script type="text/javascript">
   
   $("#supportProc").click(function(){
      var support = $("#supportFrm").serializeObject();
      console.log(support);
      
      $.ajax({
         url: "supportMGInsert",
         type: "post",
         data: support,
         dataType: "json",
         success : function(data){
            var rlist = '';
            var dlist = data.rList;
            
            for(var i=0; i<dlist.length; i++){
               rlist +=
                  '<input type="hidden" name="sm_receiver" value="수신자">'+
                  +'<tr style='+'"background-color: white; border: 2px solid #A09182; height:40px;">'+
                  +'<td style="width: 50px; text-align: center;">'+dlist[i].sm_num+'</td>'
                  +'<td style="width: 550px; text-align: left; padding-left: 15px;">'+dlist[i].sm_contents+'</td>'
                  +'<td style="width: 200px;">'+dlist[i].sm_date+"</td>"
                  +'<td style="width: 150px;">'+dlist[i].sm_sender+"</td>"
                  +'<td style="padding-right: 15px; width: 80px;">'+
                  +'<button type="button" id="btnDelete" style="border: 0; background-color: white;">'
                  +'삭제'+
                  '</button>'+
                  '</td>'+
                  "</tr>"
                  
            }
            $('#rTable').html(rlist);
         
         },
         error: function(error){
            alert("댓글 입력 실패");
         }
      });
   });
      /* 
         
         //객체에 데이터 추가! r_bnum은 무엇?
         console.log(replyFrm);
         $.ajax({
            url: "supportMGInsert",
            type: "post",
            data: replyFrm,
            dataType: "json",
            success: function(data) {
               console.log(data.rList);//map에 들어있는 key값으로 받아온 value값 확인!
               var rList = "";
               for(var i =0; i <data.rList.length;i++){
                  rList += 
                           //form의 댓글에서 for문의 내용을 다 지우고 가져온 rList의 데이터를 사용해서 새로 작성!
                  }
               $('#rTable').html(rList);//얘의 역할은...?//
            },
         error: function (error) {
            alert(error);
            }
         })
         
         
      } */

      function confirmDelete(bnum) {
            theForm=document.delBoard;
            //document.객체의 이름으로 저장 하나의 태그를 변수로 저장
            var chk = confirm("정말 삭제하시겠습니까?");
            if (chk) {
               return theForm.submit();
            }
         }   
      </script>
   </body>
</html>