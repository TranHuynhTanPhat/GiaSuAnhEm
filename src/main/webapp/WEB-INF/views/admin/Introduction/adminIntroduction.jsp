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
<title>Trang quản lý giới thiệu</title>
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
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
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

	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<section class="home">
		<div class="row">
			<div class="container-fluid">
				<!-- Page Heading -->
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4 title">
					<strong>Quản lý bài giới thiệu</strong>
				</div>
				<div style="text-align: center;">


					<form action="./uploadIntroduction" method="post">
						<input type="hidden" name="id"
							value="${listIntroductionPost[0].id}"> <input
							type="hidden" name="created"
							value="${listIntroductionPost[0].created_at}"> <input
							type="hidden" name="image" value="${listIntroductionPost[0].img}">
						<div class="form-group">
							<label style="float: left"><strong>Tiêu đề:</strong></label>
							<div style="width: 100%">
								<input required="required" type="text" name="title" class="form-control"
									style="border: 2px solid #001c44;"
									value="${listIntroductionPost[0].title }">
							</div>
						</div>
						<div class="form-group">
							<label style="float: left"><strong>Nội dung:</strong> </label>
							<textarea required="required" name="content" rows="50"
								style="width: 100%; height: 500px; display: inline-block; border: 2px solid #001c44; border-radius: 5px; padding: 10px">${listIntroductionPost[0].body }</textarea>
						</div>

						<canvas width="1000" height="10"></canvas>

						<div id="fixedButtonAdd">
							<button value="1" class="btn btn-warning btn-block mb-4"
								type="submit">
								<i class="fa-solid fa-pen icon"></i> Cập nhật
							</button>
						</div>
					</form>

				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</section>

</body>