<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div class="row">
			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-8">
								<div class="numbers">
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng tiền hôm nay</p>
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
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng lượt requests hôm nay</p>
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
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Khóa học mới</p>
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
									<p class="text-sm mb-0 text-capitalize font-weight-bold">Tổng tiền tháng </p>
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
	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

