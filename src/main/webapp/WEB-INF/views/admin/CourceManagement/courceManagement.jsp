<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang quản lý khóa học</title>
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
					<strong>Quản lý khóa học</strong>
				</div>

				<!-- Content Row -->
				<div class="row">

					<div id="row">

						<form action="" method="get" name="form1" style="width: 100%">
							<div class="row">
								<div class="col-md">
									<select name="chonlop" id="chonlop" class="form-select">
										<option value="">Chọn Lớp</option>
										<c:forEach var="item" items="${listClass }">
											<option value="${item.id }">${item.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<select name="chonmon" id="chonmon" class="form-select">
										<option value="">Chọn Môn</option>
										<c:forEach var="item" items="${listSubject }">
											<option value="${item.id}">${item.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<select name="chonquan" id="chonquan" class="form-select">
										<option value="">Quận huyện</option>
										<c:forEach var="item" items="${listCategoryDistrict }">
											<option value=${item.id }>${item.name }</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md">
									<div id="fixedButtonSearch" style="float: center">
										<button class="btn btn-primary btn-block mb-4" type="submit">
											<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
										</button>
									</div>
								</div>
							</div>


						</form>
					</div>
				</div>
				<div class="row">
					<div class="row">
						<div class="col">
							<form action="./createNewCource" method="get">
								<button class="btn btn-primary btn-block mb-4" type="submit">
									<i class="fa-solid fa-plus icon"></i> Thêm khóa học
								</button>
							</form>
						</div>
						<div class="col" align="right">
							<spring:url value="/quanlykhoahoc/?type=cource" var="xlsxCource" />
							<a href="${xlsxCource }"
								class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
								class="fas fa-download fa-sm text-white-50"></i> Tải file excel</a>
						</div>
					</div>
					<table width="100%" class="table mb-0 bg-white">
						<thead>
							<tr>
								<th scope="col">Lớp dạy</th>
								<th scope="col">Môn học</th>
								<th scope="col">Địa chỉ <br></th>
								<th scope="col">Mức lương <br></th>
								<th scope="col">Số buổi <br></th>
								<th scope="col">Thời gian dạy</th>
								<th scope="col">Yêu cầu</th>
								<th scope="col">Liên hệ <br></th>
								<th scope="col">Trạng thái</th>
								<th scope="col" width="2%"></th>
								<th scope="col" width="2%"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${listNewCource }">

								<c:choose>
									<c:when test="${item.status==0 }">
										<tr style="background-color: #53d2dc"
											onclick="checkRow('${item.id}', '${item.address }','${item.district }', '${item.sobuoi }','${item.time }','${item.salary }','${item.require }','${item.status }','${item.categories }','${item.classes }','${item.subjects }','${item.contact }','${item.created_at }')">
									</c:when>
									<c:otherwise>
										<tr style="background-color: #ffe3b3"
											onclick="checkRow('${item.id}', '${item.address }','${item.district }', '${item.sobuoi }','${item.time }','${item.salary }','${item.require }','${item.status }','${item.categories }','${item.classes }','${item.subjects }','${item.contact }','${item.created_at }')">
									</c:otherwise>
								</c:choose>

								<%-- <td><c:forEach var="cl" items="${item.classes }">
										${ cl.name },
									</c:forEach></td> --%>
								<td>${item.classes }</td>

								<%-- <td><c:forEach var="subject" items="${item.subjects }">
										${ subject.name },
									</c:forEach></td> --%>
								<td>${item.subjects }</td>
								<td>${ item.address }</td>
								<td>${ item.salary }</td>
								<td>${ item.sobuoi }</td>
								<td>${ item.time }</td>
								<td>${ item.require }</td>
								<td>${item.contact }</td>
								<c:choose>
									<c:when test="${item.status==1 }">
										<td class="text-danger"><b>Đã được nhận</b></td>
									</c:when>
									<c:otherwise>
										<td><b>Chưa được nhận</b></td>
									</c:otherwise>
								</c:choose>

								<th><a href="updateNewCource?id=${item.id}"><i
										class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
								<th><a href="./deleteNewCource?id=${item.id }"
									onclick="return confirmDelete()"><i
										class="fa-solid fa-trash text-danger icon"></i></a></th>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<canvas width="100%" height="1px"></canvas>
					<div id="num-order-wp" style="float: right">
						<a title="" href="quanlykhoahoc?page=${ page - 1 }" id="minus"><i
							class="fa fa-minus"></i></a> <input style="width: 30px;"
							type="button" value="${page}" id="num-order">
						<c:if test="${listNewCource.size() == pagesize }">
							<a title="" href="quanlykhoahoc?page=${ page + 1 }" id="plus"><i
								class="fa fa-plus"></i></a>
						</c:if>
					</div>
					<div class="row form" id="Custome-div" style="width: 60%;">
						<div id="divGFG" align=left>
							<center>
								<i>Click vào bảng để xem đầy đủ thông tin</i>
							</center>
						</div>
					</div>
					<canvas width="100%" height="10px"></canvas>
				</div>
			</div>
		</div>
		<!-- <script>
			function search() {
				var cl = document.getElementById("chonlop").value;
				var su = document.getElementById("chonmon").value;
				var di = document.getElementById("chonquan").value;
				return "class=" + cl + "&subject=" + su + "district=" + di;
			}
		</script> -->

		<script>
			function checkRow(id, address, district, sobuoi, time, salary,
					require, status, categories, classes, subjects, contact,
					created_at) {

				var p = "<h2>Thông tin cụ thể</h2>";
				// CREATING DATA TO SHOW ON MODEL
				p += "<div class=\"row\">"
				p += "<label class=\"control-label\"><b>Mã khóa học: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+id+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Địa chỉ: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+address+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Quận: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+district+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Số buổi/tuần: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+sobuoi+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Thời gian: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+time+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Lương: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+salary+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Phân loại: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+categories+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Lớp học: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+classes+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Môn học: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+subjects+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Yêu cầu: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+require+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Liên hệ: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+contact+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Ngày tạo: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+created_at+"\"  ></div>"
				p += "</div>"
				//CLEARING THE PREFILLED DATA
				$("#divGFG").empty();
				//WRITING THE DATA ON MODEL
				$("#divGFG").append(p);
			}
		</script>

		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

	</section>
</body>