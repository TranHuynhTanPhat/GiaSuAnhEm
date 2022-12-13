<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang quản lý gia sư</title>
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
	<script type="text/javascript">
		function confirmDelete() {
			var result = confirm("Bạn chắc chưa?");
			if (result) {
				return true;
			} else
				return false;
		}
	</script>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<section class="home">
		<div class="row">
			<div class="container-fluid">

				<!-- Page Heading -->
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4 title">
					<strong>Quản lý gia sư</strong>
				</div>

				<!-- Content Row -->
				<div class="row">


					<form action="" method="post" name="form1" style="width: 100%">

						<div class="row align-middle">
							<div class="col-md">
								<select name="chonlop" id="chonlop" class="form-select ">
									<option value="">Chọn Lớp</option>
									<c:forEach var="item" items="${listClass }">
										<option value="${item.id }">${item.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md">
								<select name="chonmon" id="chonmon" class="form-select">
									<option value="">Chọn Môn</option>
									<c:forEach var="item" items="${listSubject }">
										<option value="${item.id}">${item.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md">
								<select name="chongioitinh" id="chongioitinh"
									class="form-select">
									<option value="0">Giới Tính</option>
									<option value="1">Nam</option>
									<option value="2">Nữ</option>
									<option value="2">Khác</option>

								</select>
							</div>

							<div class="col-md">
								<select name="chonnguoiday" id="chonnguoiday"
									class="form-select">
									<option value="0">Hiện là</option>
									<option value="1">Giáo viên</option>
									<option value="2">Sinh viên</option>
									<option value="3">Đã tốt nghiệp</option>

								</select>
							</div>

							<div class="col-md">
								<select name="quanhuyen" id="quanhuyen" class="form-select">
									<option value="0">Quận huyện</option>
									<c:forEach var="item" items="${listCategoryDistrict }">
										<option value=${item.id }>${item.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="col">
								<div id="fixedButtonSearch">
									<button class="btn btn-primary btn-block mb-4" type="submit">
										<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
									</button>
								</div>
							</div>

						</div>



					</form>

					<div class="row">
						<div class="row">
							<div class="col">
								<form action="./createTutor" method="get">
									<button class="btn btn-primary btn-block mb-4" type="submit">
										<i class="fa-solid fa-plus icon"></i> Thêm gia sư
									</button>
								</form>
							</div>
							<div class="col" align="right">
								<spring:url value="/quanlygiasu/?type=tutor" var="xlsxTutor" />
								<a href="${xlsxTutor }"
									class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
									class="fas fa-download fa-sm text-white-50"></i> Tải file
									excel</a>
							</div>
						</div>
						<table width="100%" class="table mb-0 bg-white"
							style="text-align: left; float: left;">
							<thead>
								<tr>
									<th scope="col">Tên gia sư</th>
									<th scope="col">Email<br></th>
									<th scope="col">Năm sinh<br></th>
									<th scope="col">Giới Tính<br></th>
									<th scope="col">SĐT<br></th>
									<th scope="col">Nghề nghiệp<br></th>
									<th scope="col">Số buổi<br></th>
									<th scope="col">Ưu điểm<br></th>

									<th scope="col" width="2%"></th>
									<th scope="col" width="2%"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<c:forEach var="item" items="${ listTutor }">
									<tr>
										<td>${item.name }</td>
										<td>${item.email }</td>

										<td>${item.birth_year }</td>
										<td>${item.gender }</td>
										<td>${item.phone }</td>
										<td>${item.isnow }</td>
										<td>${item.sobuoi }</td>
										<td>${item.describe }</td>
										<th><a href="updateTutor?id=${item.id}"><i
												class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
										<th><a href="./deleteTutor?id=${item.id }"
											onclick="return confirmDelete()"><i
												class="fa-solid fa-trash text-danger icon"></i></a></th>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<canvas width="100%" height="10px"></canvas>
					</div>
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</section>
</body>