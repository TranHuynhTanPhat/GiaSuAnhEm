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
<title>Hóa đơn</title>
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
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
<link href="<c:url value="resources/assets/css/import/invoice.css"/>"
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
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
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
	<div class="container-fluid"
		style="margin-top: 100px; background-color: #eef2f8;">
		<div class="container">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4 title"
				style="float: right">
				<a href="./lop-moi" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Home</a>
			</div>
			<div class="card">
				<div class="card-body">
					<div id="invoice">
						<div class="invoice overflow-auto">
							<div style="min-width: 600px">
								<header>
									<div class="row">
										<div class="col company-details">
											<h2 class="name">
												<a target="" href="javascript:;"> Trung tâm gia sư Anh
													Em </a>
											</h2>
											<div>Đại học Sư phạm kỹ thuật thành phố Hồ Chí
												Minh</div>
											<div>(+84) 389052819</div>
											<div class="email">
												<a href="mailto:thcstrandainghiaphat8a2@gmail.com">thcstrandainghiaphat8a2@gmail.com






												
											</div>
										</div>
									</div>
								</header>
								<main>
									<div class="row contacts">
										<div class="col invoice-to">
											<div class="text-gray-light">Hóa đơn được gửi đến:</div>
											<h2 class="to">${username }</h2>
											<div class="email">
												<a href="mailto:${sessionScope.emailUser }">${sessionScope.emailUser }</a>
											</div>
										</div>
										<div class="col invoice-details">
											<h1 class="invoice-id">HÓA ĐƠN ${idInvoice }</h1>
											<div class="date">Ngày xuất: 01/10/2018</div>
											<div class="date">Thời gian phản hồi: 30/10/2018</div>
										</div>
									</div>
									<table>
										<thead>
											<tr>
												<th>TÊN TÀI KHOẢN</th>
												<th class="text-left">MÔ TẢ</th>
												<th class="text-right">TIỀN PHẢI TRẢ</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="no">04</td>
												<td class="text-left">
													<h3>
														<a target="_blank" href="javascript:;"> ${username } }
														</a>
													</h3> <a target="_blank" href="javascript:;"> Mã lớp: </a>
													${id }
												</td>
												<td class="unit">${salary*0.4 }VNĐ</td>
												<td class="qty">1</td>
												<td class="total">${salary*0.4 }VNĐ</td>
											</tr>

										</tbody>
										<tfoot>
											<tr>
												<td colspan="2"></td>
												<td colspan="2">Tổng tiền</td>
												<td>${salary*0.4 }VNĐ</td>
											</tr>
											<tr>
												<td colspan="2"></td>
												<td colspan="2">Thuế 0%</td>
												<td>0 VNĐ</td>
											</tr>
											<tr>
												<td colspan="2"></td>
												<td colspan="2">Khuyến mãi 0%</td>
												<td>0 VNĐ</td>
											</tr>
											<tr>
												<td colspan="2"></td>
												<td colspan="2">Số tiền phải thanh toán</td>
												<td>${salary*0.4 }VNĐ</td>
											</tr>
										</tfoot>
									</table>
									<div class="thanks">Thank you!</div>
								</main>
							</div>
							<!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>


</body>

</html>
