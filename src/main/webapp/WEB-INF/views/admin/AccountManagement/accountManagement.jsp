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
<title>Trang quản lý tài khoản</title>
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
					<strong>Quản lý tài khoản</strong>
				</div>

				<!-- Content Row -->
				<div class="row">
					<div class="row">
						<div class="row">
							<div class="col">
								<form action="./createAccount" method="get">
									<button class="btn btn-primary btn-block mb-4" type="submit">
										<i class="fa-solid fa-plus icon"></i> Thêm tài khoản
									</button>
								</form>
							</div>
							<div class="col" align="right">
								<spring:url value="/quanlytaikhoan/?type=account"
									var="xlsxAccount" />
								<a href="${xlsxAccount }"
									class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
									class="fas fa-download fa-sm text-white-50"></i> Tải file
									excel</a>
							</div>
						</div>
						<table width="100%" class="table mb-0 bg-white"
							style="text-align: left; float: left;">
							<thead>
								<tr>
									<th scope="col" width="5%">ID</th>
									<th scope="col" width="20%">Tên đăng nhập</th>
									<th scope="col">Email</th>
									<th scope="col" width="10%"
										style="text-align: center; float: center;">Trạng thái</th>
									<th scope="col" width="10%"
										style="text-align: center; float: center;">Vai trò</th>
									<th scope="col" width="2%"></th>
									<th scope="col" width="2%"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<c:forEach var="item" items="${ listAccounts }">
									<tr>
										<td>${item.id }</td>
										<td>${item.username }</td>
										<td>${item.email }</td>
										<td align="center">${item.state }</td>
										<td align="center">${item.role }</td>
										<th><a href="updateAccount?id=${item.id}"><i
												class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
										<th><a
											href="./deleteAccount?id=${item.id }&username=${item.username}&email=${item.email}&state=${item.state}&role=${item.role}&created=${item.created_at}&password=${item.password}"
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