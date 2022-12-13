<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>Varify</title>
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<link href="<c:url value="resources/assets/css/import/varifyForm.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<!-- Instructions -->
		<div class="row">
			<div class="alert alert-success col-md-12" role="alert" id="notes">
				<h4>Lưu ý:</h4>
				<ul>
					<li>Vui lòng nhập mã OTP đã được gửi vào Email, mã OTP
						sẽ được gửi lại tự động sau <span id="countdowntimer">60
					</span>
					</li>
					<li>Nếu bạn chưa nhận được OTP hãy bấm vào đây! <a
						href="verify"><i>Gửi lại OTP</i></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Verification Entry Jumbotron -->
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron text-center">
					<h2>Nhập mã xác thực</h2>
					<form method="post" action="verify" role="form">

						<div class="col-md-9 col-sm-12">
							<div class="form-group form-group-lg">
								<input type="text"
									class="form-control col-md-6 col-sm-6 col-sm-offset-2"
									name="verifyCode" required> <input
									class="btn btn-primary btn-lg col-md-2 col-sm-2" type="submit"
									value="Xác thực">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var timeleft = 60;
		var downloadTimer = setInterval(function() {
			timeleft--;
			document.getElementById("countdowntimer").textContent = timeleft+" giây.";
			if (timeleft <= 0)
				clearInterval(downloadTimer);
		}, 1000);
	</script>
</body>
</html>