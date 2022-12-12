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
				<h4>NOTES</h4>
				<ul>
					<li>You will recieve a verification code on your mail after
						you registered. Enter that code below.</li>
					<li>If somehow, you did not recieve the verification email
						then <a href="varify?email=${email }">resend the verification
							email</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Verification Entry Jumbotron -->
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron text-center">
					<h2>Enter the verification code</h2>
					<form method="post" action="verify" role="form">

						<div class="col-md-9 col-sm-12">
							<div class="form-group form-group-lg">
								<input type="text"
									class="form-control col-md-6 col-sm-6 col-sm-offset-2"
									name="verifyCode" required> <input
									class="btn btn-primary btn-lg col-md-2 col-sm-2" type="submit"
									value="Verify">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>