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
						<div class="col">
							<form action="./createAccount" method="get">
								<button class="btn btn-primary btn-block mb-4" type="submit">
									<i class="fa-solid fa-plus icon"></i> Thêm tài khoản
								</button>
							</form>
						</div>
					</div>
					<form action="" method="get" name="form1" style="width: 100%">
						<div class="row">
							<div class="col-2">
								<div class="form-outline">
									<input type="text" name="keys" id="keys" class="form-control"
										value="" placeholder="Nhập từ khóa">
								</div>
							</div>
							<div class="col-8">
								<button class="btn btn-primary btn-block mb-4" type="submit">
									<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
								</button>

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
					</form>
					<div class="row">
						<table width="100%" class="table mb-0 bg-white"
							style="text-align: left; float: left;">
							<thead>
								<tr>
									<th scope="col" width="5%">ID</th>
									<th scope="col" width="20%">Tên đăng nhập</th>
									<th scope="col">Email</th>
									<th scope="col" width="15%">Trạng thái</th>
									<th scope="col" width="10%">Vai trò</th>
									<th scope="col" width="2%"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<c:forEach var="item" items="${ listAccounts }">
									<c:choose>
										<c:when test="${item.role==1 }">
											<tr style="background-color: #53d2dc">
										</c:when>
										<c:otherwise>
											<tr style="background-color: #ffe3b3">
										</c:otherwise>
									</c:choose>
									<td>${item.id }</td>
									<td>${item.username }</td>
									<td>${item.email }</td>
									<!--  Trạng thái  -->
									<c:if test="${item.state == 1}">
										<td class="text-success"><b>Đang hoạt động</b></td>
									</c:if>
									<c:if test="${item.state == 0}">
										<td class="text-danger"><b>Ngừng hoạt động</b></td>
									</c:if>
									<c:if test="${item.state == 2}">
										<td><b>Chưa xác thực</b></td>
									</c:if>

									<!-- Vai trò -->
									<c:if test="${item.role == 1}">
										<td>Gia sư</td>
									</c:if>
									<c:if test="${item.role == 2}">
										<td>Phụ huynh</td>
									</c:if>
									<th><a href="updateAccount?id=${item.id}"><i
											class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
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