<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<title>Thanh toán</title>
<link href="<c:url value="resources/assets/css/import/payBill.css"/>"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4 title"
				style="float: right">
				<a href="./lop-moi" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="col-lg-4 mb-lg-0 mb-3">
				<div class="card p-3">
					<div class="img-box">
						<img
							src="https://www.freepnglogos.com/uploads/visa-logo-download-png-21.png"
							alt="">
					</div>
					<div class="number">
						<label class="fw-bold" for="">**** **** **** 1060</label>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
						<small><span class="fw-bold">Name:</span><span>Kumar</span></small>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-lg-0 mb-3">
				<div class="card p-3">
					<div class="img-box">
						<img
							src="https://www.freepnglogos.com/uploads/mastercard-png/file-mastercard-logo-svg-wikimedia-commons-4.png"
							alt="">
					</div>
					<div class="number">
						<label class="fw-bold">**** **** **** 1060</label>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
						<small><span class="fw-bold">Name:</span><span>Kumar</span></small>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-lg-0 mb-3">
				<div class="card p-3">
					<div class="img-box">
						<img
							src="https://www.freepnglogos.com/uploads/discover-png-logo/credit-cards-discover-png-logo-4.png"
							alt="">
					</div>
					<div class="number">
						<label class="fw-bold">**** **** **** 1060</label>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
						<small><span class="fw-bold">Name:</span><span>Kumar</span></small>
					</div>
				</div>
			</div>
			<div class="col-12 mt-4">
				<div class="card p-3">
					<p class="mb-0 fw-bold h4">Phương thức thanh toán</p>
				</div>
			</div>
			<div class="col-12">
				<div class="card p-3">
					<div class="card-body border p-0">
						<p>
							<a
								class="btn btn-primary w-100 h-100 d-flex align-items-center justify-content-between"
								data-bs-toggle="collapse" href="#collapseExample" role="button"
								aria-expanded="true" aria-controls="collapseExample"> <span
								class="fw-bold">PayPal</span> <span class="fab fa-cc-paypal">
							</span>
							</a>
						</p>
						<div class="collapse p-3 pt-0" id="collapseExample">
							<div class="row">
								<div class="col-8">
									<p class="h4 mb-0">Tóm tắt</p>
									<p class="mb-0">
										<span class="fw-bold">Sản phẩm:</span><span class="c-green">:
											Đăng kí dạy khóa học mã ${id }</span>
									</p>
									<p class="mb-0">
										<span class="fw-bold">Tổng tiền:</span><span class="c-green">:${salary*0.4 }
											VNĐ</span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body border p-0">
						<p>
							<a
								class="btn btn-primary p-2 w-100 h-100 d-flex align-items-center justify-content-between"
								data-bs-toggle="collapse" href="#collapseExample" role="button"
								aria-expanded="true" aria-controls="collapseExample"> <span
								class="fw-bold">Momo</span> <span class=""> <span
									class="fab fa-cc-amex"></span> <span
									class="fab fa-cc-mastercard"></span> <span
									class="fab fa-cc-discover"></span>
							</span>
							</a>
						</p>
						<div class="collapse show p-3 pt-0" id="collapseExample">
							<div class="row">
								<div class="col-lg-5 mb-lg-0 mb-3">
									<p class="h4 mb-0">Tóm tắt</p>
									<p class="mb-0">
										<span class="fw-bold">Sản phẩm:</span><span class="c-green">:
											Đăng kí dạy khóa học mã ${id }</span>
									</p>
									<p class="mb-0">
										<span class="fw-bold">Tổng tiền:</span> <span
											class="c-green">:${salary*0.4 } VNĐ</span>
									</p>

								</div>
								<div class="col-lg-7" align="right">
									<img src="resources/assets/images/momoQR.jpg"
										style="width: 60% !important" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12" style="margin-top: 20px">
				<a href=" ./invoice?id=${id }"
					class="btn btn-primary btn-block mb-4" type="submit">Thanh
					toán thành công</a>

			</div>
		</div>
	</div>
</body>
</html>