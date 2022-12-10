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


					<form action="" method="post" name="form1" style="width: 100%">
						<div class="row">
							<div class="col-10">
								<div class="form-outline w-25" style="float: right">
									<input type="text" name="username" class="form-control"
										value="" placeholder="Tên đăng nhập">
								</div>
							</div>
							<div class="col-2">
								<button class="btn btn-primary btn-block mb-4" type="submit">
									<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
								</button>

							</div>
						</div>
					</form>

					<div class="row">

						<table width="100%" class="table mb-0 bg-white">
							<thead>
								<tr>
									<th scope="col">Mã giao dịch</th>
									<th scope="col">Mã khóa học</th>
									<th scope="col">Tên tài khoản</th>
									<th scope="col">Tổng tiền</th>
									<th scope="col" width="2%"></th>
									<th scope="col" width="2%"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<tr>
									<td>1</td>
									<td>23</td>
									<td>tranphat</td>
									<td>100000</td>
								</tr>
							</tbody>
						</table>
						<canvas width="100%" height="10px"></canvas>
					</div>
				</div>
			</div>
			<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
		</div>
	</section>
</body>