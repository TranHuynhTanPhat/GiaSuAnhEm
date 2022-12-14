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
<title>Trang thêm gia sư</title>
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
				<a href="./quanlygiasu" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
			<div id="wrapperAdmin">
				<div class="title2">
					<strong>Thêm gia sư</strong>
				</div>
				<form action="${pageContext.request.contextPath }/createTutor"
					method="post">
					<div class="form-group">
						<div class="row">
							<div class="col-9">
								<label class="control-label">Họ và tên: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline w-75">
									<input type="text" id="hoten" name="hoten" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col" style="float: right">
								<label class="control-label">Điện thoại: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline ">
									<input type="text" name="dienthoai" class="form-control"
										value="" required>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-9">
								<label class="control-label">Email: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="email" class="form-control" value="" required>
								</div>
							</div>
							<div class="col">
								<label class="control-label">Năm tốt nghiệp: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline ">
									<input type="text" name="namtotnghiep" id="namtotnghiep"
										class="form-control" value="" required>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md">
								<label class="control-label">Giới tính: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="gioitinh" id="gioitinh" class="form-control"
										style="width: 100%; float: left" required>
										<option value="Khác">-- Chọn giới tính --</option>
										<option value="Khác">Khác</option>
										<option value="Nam">Nam</option>
										<option value="Nữ">Nữ</option>
									</select>
								</div>
							</div>
							<div class="col-md">
								<label class="control-label">Ngày sinh: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="date" class="form-control" name=ngaysinh value="" required>
								</div>
							</div>
							<div class="col-md">
								<label class="control-label">Hiện là: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="nghenghiep" id="nghenghiep" class="form-control"
										style="width: 100%; float: left" required>
										<option value="">-- Chọn nghề nghiệp --</option>
										<option value="Giáo viên">Giáo viên</option>
										<option value="Sinh viên">Sinh viên</option>
										<option value="Đã tốt nghiệp">Đã tốt nghiệp</option>
									</select>
								</div>
							</div>
							<div class="col-md">
								<label class="control-label">Số buổi dạy: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="sobuoiday" id="sobuoiday" class="form-control"
										style="width: 100%; float: left" required>
										<option value="">-- Chọn số buổi dạy --</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="control-label">Sinh viên (giáo viên)
									trường: <span style="color: #FF0000">*</span>
								</label>
								<div class="form-outline">
									<input type="text" name="truong" class="form-control" value="" required>
								</div>
							</div>
							<div class="col">
								<label class="control-label">Ngành học: <span
									style="color: #FF0000">*</span></label>
								<div class="form-outline">
									<input type="text" name="chuyennganh" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col">
								<label class="control-label">Tên tài khoản: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<select name="accId" class="form-control" required>
										<option value="0">-- Chọn tài khoản --</option>
										<c:forEach var="item" items="${listAccount }">
											<option value="${item.id }">${item.username }</option>
										</c:forEach>
										<!-- <option value="0">-- Chọn tài khoản --</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option> -->
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="control-label">Địa chỉ: <span
								style="color: #FF0000">*</span></label>
							<div class="form-outline">
								<input type="text" name="diachi" class="form-control" value="" required>
							</div>
						</div>
						<div class="row">
							<label class="control-label">Ưu điểm: <span
								style="color: #FF0000">*</span></label>
							<div class="form-outline">
								<input type="text" name="uudiem" id="uudiem"
									class="form-control" value="" required>
							</div>
						</div>
						<div class="row align-middle" style="padding-left: 15%">
							<div class="col">
								<label class="control-label"><strong>Môn dạy:</strong> <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item" items="${listSubject }">
												<tr>
													<td><label><input type="checkbox"
															name="monhoc" id="monhoc" value="${ item.id }">${item.name}</label></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col">
								<label class="control-label"><strong>Lớp dạy:</strong> <span
									style="color: #FF0000">*</span></label>
								<div class="col align-middle">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item" items="${ listClass }">
												<tr>
													<td><label><input type="checkbox"
															name="lophoc" id="monhoc" value="${ item.id }">${item.name}</label></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col">
								<label class="control-label"><strong>Khu vực:</strong>
									<span style="color: #FF0000">*</span></label>
								<div class="col">
									<table border="0" class="tablebox">
										<tbody>
											<c:forEach var="item" items="${ listCategoryDistrict }">
												<tr>
													<td><label><input type="checkbox"
															name="khuvuc" id="khuvuc" value="${ item.id }">${ item.name}</label></td>
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
