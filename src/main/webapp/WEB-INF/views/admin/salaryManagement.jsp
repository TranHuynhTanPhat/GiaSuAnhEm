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

	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<section class="home">
		<div class="row">
			<div class="container-fluid">

				<!-- Page Heading -->
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4 title">
					<strong>Lương</strong>
				</div>

				<!-- Content Row -->
				<div class="row">
					<div style="text-align: center; box-sizing: inherit;">
						<p>
							<strong><span style="font-size: 16px;"><span>BẢNG
										HỌC PHÍ 2 BUỔI 1 TUẦN VÀ 3 BUỔI 1 TUẦN</span></span></strong>
						</p>
					</div>
					<form action="./addSalary" method="GET">
						<button class="btn btn-primary btn-block mb-4" type="submit">Thêm
							mức học phí</button>
					</form>
					<table width="100%" class="table  mb-0 bg-white">
						<thead>
							<tr >
								<th scope="col" rowspan="2"><span
									style="color: rgb(255, 0, 0);"><strong>KHỐI LỚP</strong></span></th>
								<th scope="col" colspan="4" style="text-align: center"><strong>
										Sinh viên</strong></th>

							</tr>
							<tr>
								<th scope="col"><span><strong>2 buổi 1 tuần</strong></span>
								</th>

								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>3
											buổi 1 tuần</strong></span></th>

								<th scope="col"><span><strong>4 buổi 1 tuần</strong></span>
								</th>

								<th scope="col"><span style="color: rgb(255, 0, 0);"><strong>5
											buổi 1 tuần</strong></span></th>
								<th scope="col" width="2%"></th>
								<th scope="col" width="2%"></th>

							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listSST }">
								<tr>
									<td>${item.grade }</td>
									<td>${item.twoSessions }</td>
									<td>${item.threeSessions }</td>
									<td>${item.fourSessions }</td>
									<td>${item.fiveSessions }</td>
									<th><a href="./updateSalary?id=${item._id}">Update</a></th>
									<th><a href="./deleteSalary?id=${item._id }"
										onclick="return confirmDelete()">Delete</a></th>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<div class="row">
					<canvas width="100%" height="10px"></canvas>
					<div style="text-align: center; box-sizing: inherit;">
						<p>
							<strong><span style="font-size: 16px;"><span>BẢNG
										HỌC PHÍ 4 BUỔI 1 TUẦN VÀ 5 BUỔI 1 TUẦN</span></span></strong>
						</p>
					</div>
					<form action="./addSalary" method="GET">
						<button class="btn btn-primary btn-block mb-4" type="submit">Thêm
							mức học phí</button>
					</form>
					<table width="100%" class="table mb-0 bg-white">
						<thead>
							<tr>
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
								<th scope="col" width="2%"></th>
								<th scope="col" width="2%"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listSTE }">
								<tr>
									<td>${item.grade }</td>
									<td>${item.twoSessions }</td>
									<td>${item.threeSessions }</td>
									<td>${item.fourSessions }</td>
									<td>${item.fiveSessions }</td>
									<th><a href="./updateSalary?id=${item._id}">Update</a></th>
									<th><a href="./deleteSalary?id=${item._id }"
										onclick="return confirmDelete()">Delete</a></th>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<div class="row">

					<canvas width="100%" height="5px"></canvas>
					<div style="box-sizing: inherit; text-align: justify;">
						<span style="color: rgb(255, 0, 0); font-size: 14px;">*Đối
							với gia sư là giáo viên có thâm niên, thạc sỹ, giáo viên dạy tại
							trường có kinh nghiệm dạy kèm thật hiệu quả mức học phí được tính
							theo tiết (1 tiết = 45 phút).</span>
					</div>

					<div style="box-sizing: inherit; text-align: justify;">
						<span style="color: rgb(0, 0, 0);"><span
							style="font-size: 14px;"><u style="box-sizing: inherit;">Cấp
									1:</u>150.000/1 tiết (45 phút) = 300.000/1 buổi (90 phút)<br
								style="box-sizing: inherit;"> <u
								style="box-sizing: inherit;">Cấp 2:</u>200.000/1 tiết (45 phút)
								= 400.000/1 buổi (90 phút)<br style="box-sizing: inherit;">
								<u style="box-sizing: inherit;">Cấp 3 - LTĐH:</u>250.000/1 tiết
								(45 phút) = 500.000/1 buổi (90 phút)</span></span>
					</div>
					<div style="box-sizing: inherit; text-align: justify;">
						<span style="color: rgb(255, 0, 0);"><span
							style="font-size: 14px;"><span
								style="box-sizing: inherit;"><span
									style="box-sizing: inherit;"><span
										style="box-sizing: inherit;"><em
											style="box-sizing: inherit;"><u
												style="box-sizing: inherit;">Lưu Ý:</u>Bảng học phí trên chỉ
												có tính chất tham khảo, học phí sẽ tăng hoặc giảm tùy theo
												số môn học và yêu cầu của quý phụ huynh.</em></span></span></span></span></span>
					</div>
					<div style="box-sizing: inherit; text-align: justify;">
						<span style="font-size: 14px;">- Đảm bảo gia sư dạy kèm
							chất lượng, uy tín, hiệu quả.<br>
						</span><span style="font-size: 14px;"><a
							href="https://www.trungtamdaykem.com/"><span
								style="color: rgb(0, 0, 0);">Gia Sư dạy kèm</span></a></span><span
							style="font-size: 14px;">có lý lịch bản thân, bằng cấp rỏ
							ràng.<br> - Nhận dạy thử một tuần để đánh giá chất lượng gia
							sư.<br> - Học phí gia sư xin được nhận vào cuối tháng.
						</span>
					</div>
					<canvas width="100%" height="20px"></canvas>
				</div>
			</div>
		</div>

		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</section>
</body>