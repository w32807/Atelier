<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atelier | Messenger</title>
</head>
<link href="./resources/ADATList/css/main.css" rel="stylesheet">

<body style="background-color:lightblue;">
	<!-- Modal HTML embedded directly into document -->
	<div class="container" style="text-align: center; ">
		<div>
			<br style="clear: both">
			<div class="form-group col-md-12 " style="margin-left: -50px;">
				<div>
					<input type="hidden" value="작성자">
					<input type="hidden" value="조회수">
					<input type="hidden" value="날짜">
				</div>
				<div class="col-sm-10" style="padding: 0;">
					<input type="text" class="form-control" value="제목"
						style="padding-right: 100px; width: 750px;">
				</div>
				<br>
				<textarea class="form-control input-sm " type="textarea"
					id="message" maxlength="140" rows="15" style="width: 750px;"></textarea>


			</div>
			<div>
				<br style="clear: both">
				<div class="form-group col-md-12 " style="margin-left: -50px;">
					<div>
						<input type="hidden" value="작성자">
						<input type="hidden" value="조회수">
						<input type="hidden" value="날짜">
					</div>
					<div class="col-sm-10" style="padding: 0;">
						<input type="text" class="form-control" value="답변"
							style="padding-right: 100px; width: 750px;">
					</div>
					<br>
					<textarea class="form-control input-sm " type="textarea"
						id="message" maxlength="140" rows="15" style="width: 750px;"></textarea>


				</div>

				<div class="d-block text-center card-footer"
					style="margin-left: -33px; width: 750px;">
					<button class="btn-wide btn btn-info">Send</button>
				</div>
			</div>
		</div>


		<!-- Link to open the modal -->
</body>
<script type="text/javascript" src="resources/assets/scripts/main.js"></script>
</html>