<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>GIA SƯ ANH EM</title>
<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/newclass.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/sidebar.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/style.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/editor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/wage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/dashboard.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/login.css"/>"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">


<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>


</head>

<body>
	<div id="Custome-div">

		<div class="container-fluid">
			<header>
				<div class="image-text">
					<span class="image"> <img
						src="resources/assets/images/icon.png" width="50px">
					</span>

					<div class="text logo-text">
						<div class="row">
							<span class="name">ADMIN</span> <span class="profession">Trang
								quản lý</span>
						</div>

					</div>
				</div>
				<div class="row" style="margin-top:5px;">
					<span class="text" style="color: red">${sessionScope.errorMessage}</span>
				</div>
			</header>
		</div>
		<form action="./login" method="post" style="padding-top: 30px">
			<!-- Email input -->
			<div class="form-outline mb-4">
				<input type="text" id="username" class="form-control"
					name="username" placeholder="Tên đăng nhập" autofocus="1"
					aria-label="Tên đăng nhập" />
			</div>

			<!-- Password input -->
			<div class="form-outline mb-4">
				<input type="password" id="password" class="form-control"
					name="password" />
			</div>

			<!-- 2 column grid layout for inline styling -->
			<div class="row mb-4">


				<div class="col">
					<!-- Simple link -->
					<a href="#!">Forgot password?</a>
				</div>
			</div>

			<!-- Submit button -->
			<button type="submit" class="btn btn-primary btn-block mb-4">Đăng
				nhập</button>

			<!-- Register buttons -->

		</form>
	</div>
	</div>
</body>
</html>
