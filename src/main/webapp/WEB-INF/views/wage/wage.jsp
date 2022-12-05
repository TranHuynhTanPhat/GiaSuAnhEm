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
<title>LƯƠNG</title>

<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/newclass.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/sidebar.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/wage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">

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

</head>

<body>
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
	<div class="container-fluid" style="margin-top:60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
						HỌC PHÍ 2 BUỔI 1 TUẦN VÀ 3 BUỔI 1 TUẦN</span>
				</div>

				<table border="0" width="100%">
					<tbody>
						<tr>
							<td rowspan="2" width="2%"></td>
							<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
										LỚP</strong></span></td>
							<td colspan="4" style="text-align: center"><strong>
									Sinh viên</strong></td>
						</tr>
						<tr>
							<td><span><strong>2 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>3
										buổi 1 tuần</strong></span></td>
							<td><span><strong>4 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>5
										buổi 1 tuần</strong></span></td>

						</tr>
						<c:forEach var="item" items="${listSST }">
							<tr>
								<td><input type="checkbox" name="checked"
									value="${item._id }"></td>
								<td>${item.grade }</td>
								<td>${item.twoSessions }</td>
								<td>${item.threeSessions }</td>
								<td>${item.fourSessions }</td>
								<td>${item.fiveSessions }</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<hr>
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
						HỌC PHÍ 4 BUỔI 1 TUẦN VÀ 5 BUỔI 1 TUẦN</span>
				</div>



				<div class="lop-day">
					<table border="0" width="100%">
						<tbody>
							<tr align="center">
								<td rowspan="2" width="2%"></td>
								<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
											LỚP</strong></span></td>
								<td colspan="4" style="text-align: center"><strong>
										Giáo viên</strong></td>
							</tr>
							<tr>
								<td><span><strong>2 buổi 1 tuần</strong></span></td>
								<td><span style="color: rgb(255, 0, 0);"><strong>3
											buổi 1 tuần</strong></span></td>
								<td><span><strong>4 buổi 1 tuần</strong></span></td>
								<td><span style="color: rgb(255, 0, 0);"><strong>5
											buổi 1 tuần</strong></span></td>

							</tr>
							<c:forEach var="item" items="${listSST }">
								<tr>
									<td><input type="checkbox" name="checked"
										value="${item._id }"></td>
									<td>${item.grade }</td>
									<td>${item.twoSessions }</td>
									<td>${item.threeSessions }</td>
									<td>${item.fourSessions }</td>
									<td>${item.fiveSessions }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>

</body>

</html>