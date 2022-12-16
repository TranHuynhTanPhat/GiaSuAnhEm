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
<title>Trang chủ</title>

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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Slab:wght@200;500;800&display=swap"
	rel="stylesheet">

<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
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

	<script type="text/javascript">
		function insertText(x, y) {
			document.getElementById(x).innerHTML = "0";
		}
	</script>
	<div class="container-fluid" style="margin-top: 60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/users/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="row">
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">LỚP
							MỚI GIA SƯ ANH EM</span>
					</div>
					<div class="user-box" style="margin-top: 5px; margin-bottom: 15px;">
						<span class="text" style="color: red"><strong>${sessionScope.errorGetListTutor}</strong></span>
					</div>
					<table width="100%" class="table table-bordered mb-0 bg-white"
						style="text-align: left; float: left;">
						<thead>
							<tr align="center">
								<th scope="col" colspan="9"><strong> <font
										color="red" size="3"><u>GIA SƯ</u></font>
								</strong>
							</tr>
							<tr>
								<th scope="col">MS</th>
								<th scope="col">Họ và tên</th>
								<th scope="col">Môn dạy</th>
								<th scope="col">Lớp dạy<br></th>
								<th scope="col">Địa chỉ<br></th>
								<th scope="col">Giới tính<br></th>
								<th scope="col">Ngày sinh</th>
								<th scope="col">Mô tả</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${ listTutor }">
								<td>${ item.id }</td>
								<td>${ item.name }</td>
								<td>${item.subjects }</td>
								<td>${ item.classes }</td>
								<td>${ item.address }<br></td>
								<td>${ item.gender }</td>
								<td>${ item.birth_year }</td>
								<td>${ item.describe }</td>
								</tr>
							</c:forEach>


						</tbody>
					</table>
				</div>
				<hr>
				<div class="row">
					<p>
						<font size="2"><em><strong>Đối với Giáo viên,
									Sinh Viên: Liên hệ 0972.383848 - 0987.927.505 - 0907 750 044 -
									0919 138 768&nbsp; hoặc <a href="./them-gia-su"
									title="Đăng ký làm gia sư">Đăng ký</a> <br>Đối với Phụ
									huynh: Liên hệ tư vấn 0283539 1819 - 0972 383848 - 0907 75 00
									44
							</strong></em></font>
					</p>
					<p>&nbsp;</p>
					<p>
						<font size="3">VP : THÀNH PHỐ HỒ CHÍ MINH</font>
					</p>
					<p>
						<font size="3">VP 1 : 109 TÂN LẬP 2 , P.HIỆP PHÚ, QUẬN 9<br>VP
							2 :294 HÒA HƯNG, P.13, QUẬN 10
						</font>
					</p>
					<p>
						<font size="3">VP 3 : ĐIỆN BIÊN PHỦ, P.22, Q.BÌNH THẠNH</font>
					</p>
					<p>
						<font size="3">VP 4: 453/94 NGUYỄN THỊ MINH KHAI KP 3 P,
							PHÚ HÒA BÌNH DƯƠNG(ĐỐI DIỆN TRƯỜNG TIỂU HỌC PHÚ HÒA 3)</font>
					</p>
					<p>
						<strong>VP : HÀ NỘI </strong>
					</p>
					<p>
						<strong>NGÕ 22 TÔN THẤT TÙNG ĐỐNG ĐA HÀ NỘI </strong>
					</p>
					<p>&nbsp;</p>

				</div>
			</div>
		</div>
	</div>


	<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>

</body>

</html>