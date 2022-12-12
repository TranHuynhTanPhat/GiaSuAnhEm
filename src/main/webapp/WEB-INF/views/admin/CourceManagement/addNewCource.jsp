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
<title>Trang thêm khóa học</title>
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
				<a href="./quanlykhoahoc" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
			<div id="wrapperAdmin">
				<div class="title2">
					<strong>Thêm khóa học</strong>
				</div>
				<form action="./createNewCource" method="post">
					<div class="form-group">
						<div class="row">
							<label class="control-label">Địa chỉ hiện tại: <span
								style="color: #FF0000">*</span></label>
							<div class="form-outline">
								<input type="text" name="diachi" class="form-control" value="">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="control-label">Quận: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="quan" class="form-control" value="">
								</div>
							</div>
							<div class="col">
								<label class="control-label">Số buổi: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="sobuoi" class="form-control" value="">
								</div>
							</div>
							<div class="col">
								<label class="control-label">Thời gian: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="time" class="form-control" value="">
								</div>
							</div>
							<div class="col">
								<label class="control-label">Lương: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="luong" class="form-control" value="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-9">
								<label class="control-label">Liên hệ: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline w-75">
									<input type="text" name="lienhe" class="form-control" value="">
								</div>
							</div>
							<div class="col">
								<label class="control-label">Trạng thái: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="trangthai" id="chonmon" class="form-select">
										<option value="0">-- Chọn trạng thái--</option>
										<option value="1">Đã nhận</option>
										<option value="0">Chưa nhận</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md">
								<label class="control-label">Yêu cầu khác: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="text" name="yeucaukhac" class="form-control"
										value="">
								</div>
							</div>
						</div>
						<div class="row align-middle" style="padding-left: 15%">
							<div class="col">
								<label class="control-label"><strong>Phân
										loại: </strong><span style="color: #FF0000">*</span></label>
								<div class="col">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item"
												items="${listCategoryDistrict}">
												<tr>
													<td><input type="checkbox" name="category"
														id="category" value="${item.id }">${item.name }</td>
												</tr>
											</c:forEach>
											<c:forEach var="item"
												items="${listCategoryClass }">
												<tr>
													<td><input type="checkbox" name="category"
														id="category" value="${item.id }">${item.name }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col">
								<label class="control-label"><strong>Môn dạy: </strong><span
									style="color: #FF0000">*</span></label>
								<div class="col align-middle">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item" items="${listSubject }">
												<tr>
													<td><input type="checkbox" name="monhoc" id="monhoc"
														value="${item.id }">${item.name }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col">
								<label class="control-label"><strong>Lớp dạy: </strong><span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item" items="${listClass }">
												<tr>
													<td><input type="checkbox" name="lophoc" id="lophoc"
														value="${item.id }">${item.name }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="row align-middle">
						<button class="btn btn-primary btn-block mb-4" type="submit">
							<i class="fa-solid fa-plus icon"></i> Thêm khóa học
						</button>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="row">
			<canvas width="100%" height="5px"></canvas>
		</div>
	</div>

	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

</body>
</html>
