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
<title>Trang thêm tài khoản</title>
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
				<a href="./quanlytaikhoan" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
			<div id="wrapperAdmin">
				<div class="title2">
					<strong>Thêm tài khoản</strong>
				</div>
				<form action="${pageContext.request.contextPath }/createAccount"
					method="post">
					<div class="form-group">
						<div class="row">
							<div class="col" style="float: right">
								<label class="control-label">Tên đăng nhập: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="username" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col">
								<label class="control-label">Mật khẩu: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline ">
									<input type="password" name="password" id="password"
										class="form-control" value="" required>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="control-label">Email: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="email" name="email" class="form-control" value=""
										required>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md">
								<label class="control-label">Vai trò: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="role" id="role" class="form-control" required>
										<option value="">-- Chọn vai trò --</option>
										<option value="2">Phụ huynh</option>
										<option value="1">Gia sư</option>
									</select>
								</div>
							</div>
							<div class="col-md">
								<label class="control-label">Trạng thái: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="state" id="state" class="form-control" required>
										<option value="">-- Chọn trạng thái --</option>
										<option value="1">Đang hoạt động</option>
										<option value="0">Ngừng hoạt động</option>
										<option value="2">Chưa xác thực</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row align-middle">
						<button class="btn btn-primary btn-block mb-4" type="submit">
							<i class="fa-solid fa-plus icon"></i> Thêm gia sư
						</button>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="row">
			<canvas width="100%" height="10px"></canvas>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</body>
</html>
