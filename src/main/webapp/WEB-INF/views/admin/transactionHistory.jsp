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
<title>Trang quản lý lịch sử giao dịch</title>
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
					<strong>Danh sách lịch sử giao dịch</strong>
				</div>

				<!-- Content Row -->
				<div class="row">


					<form action="" method="get" name="form1" style="width: 100%">
						<div class="row">
							<div class="col-2">
								<div class="form-outline">
									<input type="text" name="keys" id="keys" class="form-control"
										value="" placeholder="Nhập từ khóa">
								</div>
							</div>
							<div class="col-8">
								<button class="btn btn-primary btn-block mb-4" type="submit"
									>
									<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
								</button>

							</div>
							<div class="col" align="right">
								<spring:url value="/quanlylichsugiaodich/?type=history"
									var="xlsxHistory" />
								<a href="${xlsxHistory }"
									class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
									class="fas fa-download fa-sm text-white-50"></i> Tải file
									excel</a>
							</div>
						</div>
					</form>

					<div class="row">

						<table width="100%" class="table mb-0 bg-white">
							<thead>
								<tr>
									<th scope="col">Mã giao dịch</th>
									<th scope="col">Tên tài khoản</th>
									<th scope="col">Tổng tiền</th>
									<th scope="col">Nội dung</th>
									<th scope="col">Trạng thái</th>
									<th scope="col">Ngày tạo</th>

								</tr>
							</thead>
							<tbody class="table-group-divider">
								<c:forEach var="item" items="${ listTransaction}">
									<tr>
										<td>${item.id }</td>
										<td>${item.id_account }</td>
										<td>${item.amount }</td>
										<td>${item.content }</td>
										<td>${item.status }</td>
										<td>${item.created_at }</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<canvas width="100%" height="10px"></canvas>
					</div>
				</div>
			</div>
			<!-- <script>
				function search() {
					var keys = document.getElementById("keys").value;
					return "keys=" + keys;
				}
			</script> -->
			<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
		</div>
	</section>
</body>