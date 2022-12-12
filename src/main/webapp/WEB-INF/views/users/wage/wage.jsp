<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>Trang thông tin lương gia sư</title>

<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/style.css"/>"
	rel="stylesheet">

<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Slab:wght@200;500;800&display=swap"
	rel="stylesheet">


<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<!-- <script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script type="module" src="/resources/assets/js/main.js"></script> 
<script src="./resources/assets/js/bootstrap.min.js"></script>-->
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/users/layout/header.jsp"%>
	<div class="container-fluid" style="margin-top: 60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/users/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="row">
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
							LƯƠNG CHO SINH VIÊN</span>
					</div>

					<table width="100%" class="table table-bordered mb-0 bg-white"
						style="text-align: left; float: left;">
						<thead>
							<tr>
								<th scope="col" rowspan="2"><span
									style="color: rgb(255, 0, 0);"><strong>KHỐI LỚP</strong></span></th>
								<th scope="col" colspan="4" style="text-align: center"><strong>
										Sinh viên</strong></th>
							</tr>
							<tr>
								<th scope="col"><span><strong>2 buổi 1 tuần</strong></span></th>
								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>3
											buổi 1 tuần</strong></span></th>
								<th scope="col"><span><strong>4 buổi 1 tuần</strong></span></th>
								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>5
											buổi 1 tuần</strong></span></th>

							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listSST }">
								<tr>
									<td>${item.id_category }</td>
									<td>${item.two_sessions }</td>
									<td>${item.three_sessions }</td>
									<td>${item.four_sessions }</td>
									<td>${item.five_sessions }</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<hr>

				<div class="row">
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
							LƯƠNG CHO GIÁO VIÊN</span>
					</div>


					<table width="100%" class="table table-bordered mb-0 bg-white"
						style="text-align: left; float: left;">
						<thead>
							<tr align="center">
								<th scope="col" rowspan="2"><span
									style="color: rgb(255, 0, 0);"><strong>KHỐI LỚP</strong></span></th>
								<th scope="col" colspan="4" style="text-align: center"><strong>
										Giáo viên</strong></th>
							</tr>
							<tr>
								<th scope="col"><span><strong>2 buổi 1 tuần</strong></span></th>
								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>3
											buổi 1 tuần</strong></span></th>
								<th scope="col"><span><strong>4 buổi 1 tuần</strong></span></th>
								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>5
											buổi 1 tuần</strong></span></th>

							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listSTE }">
								<tr>
									<td>${item.id_category }</td>
									<td>${item.two_sessions }</td>
									<td>${item.three_sessions }</td>
									<td>${item.four_sessions }</td>
									<td>${item.five_sessions }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>
	</div>

</body>

</html>