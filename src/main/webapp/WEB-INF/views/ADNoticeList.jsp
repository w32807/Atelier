<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="./resources/ADATList/css/main.css" rel="stylesheet">


</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<!--로고 이름바꾸기. -->
				<!-- <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                           <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span> 
                        </button>
                    </div>
                </div> -->
			</div>
			<div class="app-header__mobile-menu">
				<!--  <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div> -->
			</div>
			<div class="app-header__menu">
				<!--  <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span> -->
			</div>
			<div class="app-header__content">
				<div class="app-header-left">
					<!--  <div class="search-wrapper">
                        <div class="input-holder">
                            <input type="text" class="search-input" placeholder="Type to search">
                            <button class="search-icon"><span></span></button>
                        </div>
                        <button class="close"></button>
                    </div>
                    -->
				</div>

			</div>
		</div>

		<div class="app-main">
			<div class="app-sidebar sidebar-shadow">
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
							<div class="main-card mb-3 card">
								<div class="card-header">
									공지사항
									<div class="btn-actions-pane-right"></div>
								</div>
								<div class="table-responsive">
									<table
										class="align-middle mb-0 table table-borderless table-striped table-hover">
										<thead>
											<tr>
												<!-- <th>선택</th> -->
												<th class="text-center"><input type="checkbox"
													id="allCheck"></th>
												<th class="text-center" style="width: 100px;">등록번호</th>
												<th class="text-center" style="width: 450px;">제목</th>
												<th class="text-center">작성자</th>
												<th class="text-center">조회수</th>
												<th class="text-center">상세보기</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<!--  <td><input type="checkbox"></td> -->
												<td class="text-center text-muted"><input
													type="checkbox"></td>

												<td class="text-center text-muted">등록번호EL</td>

												<td><div class="widget-content p-0"
														style="text-align: center;">
														<div class="widget-content-wrapper">
															<div class="widget-content-left flex2">
																<div class="widget-heading">제목EL</div>
															</div>
														</div>
													</div></td>

												<td class="text-center">작성자EL</td>

												<td class="text-center">조회수EL</td>

												<td class="text-center"><a href="ADNoticeContents"
													onclick="window.open(this.href, '_blank', 'width=800px,height=600px,toolbars=no,scrollbars=yes');return false;">
														<button type="button" id="PopoverCustomT-1"
															class="btn btn-primary btn-sm">Details</button>
												</a></td>


											</tr>

											<tr>
												<!--  <td><input type="checkbox"></td> -->
												<td class="text-center text-muted"><input
													type="checkbox"></td>

												<td class="text-center text-muted">등록번호EL</td>

												<td><div class="widget-content p-0"
														style="text-align: center;">
														<div class="widget-content-wrapper">
															<div class="widget-content-left flex2">
																<div class="widget-heading">제목EL</div>
															</div>
														</div>
													</div></td>

												<td class="text-center">작성자EL</td>

												<td class="text-center">조회수EL</td>

												<td class="text-center"><a href="ADNoticeContents"
													onclick="window.open(this.href, '_blank', 'width=800px,height=600px,toolbars=no,scrollbars=yes');return false;">
														<button type="button" id="PopoverCustomT-1"
															class="btn btn-primary btn-sm">Details</button>
												</a></td>

											</tr>

											<tr>
												<!--  <td><input type="checkbox"></td> -->
												<td class="text-center text-muted"><input
													type="checkbox"></td>

												<td class="text-center text-muted">등록번호EL</td>

												<td><div class="widget-content p-0"
														style="text-align: center;">
														<div class="widget-content-wrapper">
															<div class="widget-content-left flex2">
																<div class="widget-heading">제목EL</div>
															</div>
														</div>
													</div></td>

												<td class="text-center">작성자EL</td>

												<td class="text-center">조회수EL</td>

												<td class="text-center"><a href="ADNoticeContents"
													onclick="window.open(this.href, '_blank', 'width=800px,height=600px,toolbars=no,scrollbars=yes');return false;">
														<button type="button" id="PopoverCustomT-1"
															class="btn btn-primary btn-sm">Details</button>
												</a></td>

											</tr>

											<tr>
												<!--  <td><input type="checkbox"></td> -->
												<td class="text-center text-muted"><input
													type="checkbox"></td>

												<td class="text-center text-muted">등록번호EL</td>

												<td><div class="widget-content p-0"
														style="text-align: center;">
														<div class="widget-content-wrapper">
															<div class="widget-content-left flex2">
																<div class="widget-heading">제목EL</div>
															</div>
														</div>
													</div></td>

												<td class="text-center">작성자EL</td>

												<td class="text-center">조회수EL</td>

												<td class="text-center"><a href="ADNoticeContents"
													onclick="window.open(this.href, '_blank', 'width=800px,height=600px,toolbars=no,scrollbars=yes');return false;">
														<button type="button" id="PopoverCustomT-1"
															class="btn btn-primary btn-sm">Details</button>
												</a></td>

											</tr>

											<tr>
												<!--  <td><input type="checkbox"></td> -->
												<td class="text-center text-muted"><input
													type="checkbox"></td>

												<td class="text-center text-muted">등록번호EL</td>

												<td><div class="widget-content p-0"
														style="text-align: center;">
														<div class="widget-content-wrapper">
															<div class="widget-content-left flex2">
																<div class="widget-heading">제목EL</div>
															</div>
														</div>
													</div></td>

												<td class="text-center">작성자EL</td>

												<td class="text-center">조회수EL</td>

												<td class="text-center"><a href="ADNoticeContents"
													onclick="window.open(this.href, '_blank', 'width=800px,height=600px,toolbars=no,scrollbars=no');return false;">
														<button type="button" id="PopoverCustomT-1"
															class="btn btn-primary btn-sm">Details</button>
												</a></td>

											</tr>
										</tbody>
									</table>

								</div>

								<!-- 여기다가 EL 넣고 자바단에서 수정 삭제 등록-->
							</div>
						</div>
					</div>
					<div class="row" style="padding-left: 650px;">
						<div class="container">
							<ul class="pagination">

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

					<div class="container">
						<div>
							<br style="clear: both">
							<div class="form-group col-md-12 " style="margin-left: -50px;">
								<div class="col-sm-10" style="padding: 0;">
									<div>
										<input type="hidden" value="작성자"> <input type="hidden"
											value="조회수"> <input type="hidden" value="날짜">
									</div>
									<input type="text" class="form-control" value="제목"
										style="padding-right: 100px; width: 1180px;">
								</div>
								<br>
								<textarea class="form-control input-sm " type="textarea"
									id="message" placeholder="내용을 입력하세요" maxlength="140" rows="7"
									style="width: 1180px;"></textarea>


							</div>

							<div class="d-block text-center card-footer"
								style="margin-left: -33px; width: 1180px;">

								<button class="btn-wide btn btn-info">Save</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="resources/assets/scripts/main.js"></script>
<script src="./resources/main/js/jquery-3.3.1.min.js" /></script>
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

</html>