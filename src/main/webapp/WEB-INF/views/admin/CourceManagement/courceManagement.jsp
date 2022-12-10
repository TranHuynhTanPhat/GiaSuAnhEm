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
<title>Trang quản lý khóa học</title>
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
					<strong>Quản lý khóa học</strong>
				</div>

				<!-- Content Row -->
				<div class="row">

					<div id="row">

						<form action="" method="post" name="form1" style="width: 100%">
							<div class="row">
								<div class="col-md">
									<select name="chonlop" id="chonlop" class="form-select">
										<option value="">Chọn Lớp</option>
										<c:forEach var="item" items="${sessionScope.listClass }">
											<option value="${item._id }">${item.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<select name="chonmon" id="chonmon" class="form-select">
										<option value="">Chọn Môn</option>
										<c:forEach var="item" items="${sessionScope.listSubject }">
											<option value="${item._id}">${item.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<select name="quanhuyen" id="quanhuyen" class="form-select">
										<option value="0">Quận huyện</option>
										<c:forEach var="item"
											items="${sessionScope.listCategoryDistrict }">
											<option value=${item._id }>${item.name }</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<div id="fixedButtonSearch" style="float: center">
										<button class="btn btn-primary btn-block mb-4" type="button">
											<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
										</button>
									</div>
								</div>
							</div>


						</form>
					</div>
				</div>
				<div class="row">
					<div class="row">
						<form action="./createNewCource" method="get">
							<button class="btn btn-primary btn-block mb-4" type="submit">
								<i class="fa-solid fa-plus icon"></i> Thêm khóa học
							</button>
						</form>
					</div>
					<table width="100%" class="table mb-0 bg-white">
						<thead>
							<tr>
								<th scope="col">Lớp dạy</th>
								<th scope="col">Môn học</th>
								<th scope="col">Địa chỉ <br></th>
								<th scope="col">Mức lương <br></th>
								<th scope="col">Số buổi <br></th>
								<th scope="col">Thời gian dạy</th>
								<th scope="col">Yêu cầu</th>
								<th scope="col">Liên hệ <br></th>
								<th scope="col">Trạng thái</th>
								<th scope="col" width="2%"></th>
								<th scope="col" width="2%"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listNewCource }">
								<tr>

									<td><c:forEach var="cl" items="${item.classes }">
										${ cl.name },
									</c:forEach></td>

									<td><c:forEach var="subject" items="${item.subjects }">
										${ subject.name },
									</c:forEach></td>

									<td>${ item.address }</td>
									<td>${ item.salary }</td>
									<td>${ item.sobuoi }</td>
									<td>${ item.time }</td>
									<td>${ item.require }</td>
									<td>${item.contact }</td>
									<td>${ item.status }</td>
									<th><a href="updateNewCource?id=${item._id}"><i
											class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
									<th><a href="./deleteNewCource?id=${item._id }"
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
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

	</section>
</body>