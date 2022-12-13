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
<title>Trang cập nhật bài tuyển dụng</title>
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
	<div class="row">
		<div class="container-fluid">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4 title"
				style="float: right">
				<a href="./quanlytuyendung" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
			<div id="wrapperAdmin">
				<div class="title2">
					<strong>Cập nhật bài tuyển dụng</strong>
				</div>
				<form action="./updateRecruitment" method="post" n>
					<input type="hidden" name="id" value="${recruitPost.id }">
					<input type="hidden" name="created"
						value="${recruitPost.created_at }"> <input type="hidden"
						name="image" value="${recruitPost.img }">
					<div class="form-group">
						<div class="row">
							<label class="control-label"><strong>Tiêu đề:</strong> <span
								style="color: #FF0000">*</span></label>
							<div class="col">
								<textarea rows="5" name="title" class="form-control">${recruitPost.title }</textarea>

							</div>
						</div>

						<div class="row">
							<label style="float: left"><strong>Nội dung: </strong><span
								style="color: #FF0000">*</span></label>
							<div class="col">
								<textarea name="content" rows="50" class="form-control"
									style="height: 500px; display: inline-block;">${recruitPost.body }</textarea>
							</div>
						</div>
					</div>
					<div class="row align-middle">
						<button class="btn btn-warning btn-block mb-4" type="submit">
							<i class="fa-solid fa-pen icon"></i> Cập nhật
						</button>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</body>
</html>
