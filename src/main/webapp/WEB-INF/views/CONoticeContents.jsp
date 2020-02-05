<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atelier | Admin</title>
</head>
<link href="./resources/ADATList/css/main.css" rel="stylesheet">

<body style="background-color:coral;">
<!-- Modal HTML embedded directly into document -->
		<div class="container" style="text-align:center;">
						<div>
							<br style="clear: both">
							<div class="form-group col-md-12 " style="margin-left: -50px;">
								<div>
									<input type="hidden" value="${noticeContents.nt_num}" readonly>
									<input type="hidden" value="${noticeContents.nt_count}" readonly>
									<input type="hidden" value="날짜">
								</div>
								<div class="col-sm-10" style="padding: 0;">
									<input type="text" class="form-control" value="${noticeContents.nt_title}" readonly
										style="padding-right: 100px; width: 750px;">
								</div>
								<br>
								<textarea class="form-control input-sm " type="textarea"
									id="message" maxlength="140" rows="15" readonly
									style="width: 750px;">${noticeContents.nt_contents}</textarea>


							</div>

							<div class="d-block text-center card-footer"
								style="margin-left: -33px; width: 750px;">
							
								<button type="hidden" onclick="self.close()" class="btn-wide btn btn-warning">확인</button>
							</div>
						</div>
					</div>


<!-- Link to open the modal -->

</body>
<script type="text/javascript" src="resources/assets/scripts/main.js"></script>
</html>