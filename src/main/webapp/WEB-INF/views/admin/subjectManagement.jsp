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
<title>Thống kê</title>
<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->

<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="resources/assets/css/import/admin/editor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/wage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/dashboard.css"/>"
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
					<strong>Danh sách môn học</strong>
				</div>

				<!-- Content Row -->
				<div class="row">
					<div id="row">
						<canvas width="100%" height="5px"></canvas>
						<form action="./addSubject" method="get">
							<button class="btn btn-primary btn-block mb-4" type="submit">Thêm
								môn học</button>
						</form>
					</div>
					<table width="100%" class="table table-bordered mb-0 bg-white">
						<thead>
							<tr>
								<th scope="col"><strong>Tên môn học</strong></th>
								<th scope="col" width="5%"></th>
								<th scope="col" width="5%"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${sessionScope.listSubject }">
								<tr>
									<td>${ item.name }</td>
									<th><a href="./updateSubject?id=${item._id}">Update</a></th>
									<th><a href="./deleteSubject?id=${item._id }"
										onclick="return confirmDelete()">Delete</a></th>
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