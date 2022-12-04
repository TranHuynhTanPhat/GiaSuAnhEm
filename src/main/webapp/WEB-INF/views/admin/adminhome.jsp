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

<!----======== CSS ======== -->
<link rel="stylesheet" href="style.css">

<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>GIA SƯ ANH EM</title>
<script type="module" src="/resources/assets/js/main.js"></script>
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
<script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
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
					<strong>Thống kê</strong> <a href="#"
						class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
						class="fas fa-download fa-sm text-white-50"></i> Tải báo cáo</a>
				</div>

				<!-- Content Row -->
				<div class="row">

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-primary shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-primary text-uppercase mb-1">
											Doanh thu (Monthly)</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-success shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-success text-uppercase mb-1">
											Doanh thu (Annual)</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-info shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-info text-uppercase mb-1">Trạng
											thái lớp</div>
										<div class="row no-gutters align-items-center">
											<div class="col-auto">
												<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">20%</div>
											</div>
											<div class="col">
												<div class="progress progress-sm mr-2">
													<div class="progress-bar bg-info" role="progressbar"
														style="width: 20%" aria-valuenow="50" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Pending Requests Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-warning shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-warning text-uppercase mb-1">
											Yêu cầu đăng kí dạy</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-comments fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Content Row -->

				<div class="row">

					<!-- Area Chart -->
					<div class="col-xl-8 col-lg-7">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<div class="text-xs font-weight-bold  text-uppercase mb-1">
									Tổng quát doanh thu theo tháng</div>

							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<canvas id="myAreaChart"
										style="display: block; height: 320px; width: 492px;"
										width="615" height="400" class="chartjs-render-monitor"></canvas>
								</div>
							</div>
						</div>
					</div>






				</div>
			</div>

		</div>
	</section>
	<!-- <div id="wrapperAdmin">

	<div id="page-main-Admin">
		<div class="row">
			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-8">
								<div class="numbers">
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng
										tiền hôm nay</p>
									<h5 class="font-weight-bolder mb-0">
										$53,000 <span class="text-success text-sm font-weight-bolder">+55%</span>
									</h5>
								</div>
							</div>
							<div class="col-4 text-end">
								<div
									class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
									<i class="ni ni-money-coins text-lg opacity-10"
										aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-8">
								<div class="numbers">
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng
										lượt requests hôm nay</p>
									<h5 class="font-weight-bolder mb-0">
										2,300 <span class="text-success text-sm font-weight-bolder">+3%</span>
									</h5>
								</div>
							</div>
							<div class="col-4 text-end">
								<div
									class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
									<i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-8">
								<div class="numbers">
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Khóa
										học mới</p>
									<h5 class="font-weight-bolder mb-0">
										+3,462 <span class="text-danger text-sm font-weight-bolder">-2%</span>
									</h5>
								</div>
							</div>
							<div class="col-4 text-end">
								<div
									class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
									<i class="ni ni-paper-diploma text-lg opacity-10"
										aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-8">
								<div class="numbers">
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng
										tiền tháng</p>
									<h5 class="font-weight-bolder mb-0">
										$103,430 <span class="text-success text-sm font-weight-bolder">+5%</span>
									</h5>
								</div>
							</div>
							<div class="col-4 text-end">
								<div
									class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
									<i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br> <br>

		<div class="col-lg-7">
			<div class="card z-index-2">
				<div class="card-header pb-0">
					<h6>Tổng quát doanh thu</h6>
					<p class="text-sm">
						<i class="fa fa-arrow-up text-success" aria-hidden="true"></i> <span
							class="font-weight-bold">4% more</span> in 2021
					</p>
				</div>
				<div class="card-body p-3">
					<div class="chart">
						<canvas id="chart-line" class="chart-canvas" height="375"
							width="955"
							style="display: block; box-sizing: border-box; height: 300px; width: 764px;"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>



</body>

</html>
