<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>
<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->

<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
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
<!-- <script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script type="module" src="/resources/assets/js/main.js"></script> -->
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="Custome-div">

		<div class="container-fluid">
			<header>
				<div class="image-text">
					<div class="row">
						<div class="col">
							<span class="image"> <img
								src="resources/assets/images/icon.png" width="50px"
								align="right">
							</span>
						</div>
						<div class="col">
							<a href="trang-chu"> <span class="image"><img
									src="resources/assets/images/tot_nghiep.png" width="50px"
									align="left"></span>
							</a>
						</div>
					</div>
					<div class="text logo-text">
						<div class="row">
							<span class="name">ADMIN</span>
						</div>
						<div class="row">
							<span class="profession">Trung tâm Gia sư Anh Em</span>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 5px;">
					<span class="text" style="color: red"><strong>${sessionScope.errorMessage}</strong></span>
				</div>
			</header>
		</div>
		<form action="./login" method="post" style="padding-top: 30px">
			<!-- Email input -->
			<div class="row form-outline mb-4">
				<input type="text" id="username" class="form-control"
					name="username" placeholder="Tên đăng nhập" autofocus="1"
					aria-label="Tên đăng nhập" />
			</div>

			<!-- Password input -->
			<div class="row form-outline mb-4">
				<input type="password" id="password" class="form-control"
					name="password" placeholder="Mật khẩu" aria-label="Mật khẩu" />
			</div>

			<!-- 2 column grid layout for inline styling -->
			<div class="row mb-4">


				<div class="col">
					<!-- Simple link -->
					<a href="#!"><i>Forgot password?</i></a>
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
