<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang quản lý gia sư</title>
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

<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->

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
					<strong>Quản lý gia sư</strong>
				</div>

				<!-- Content Row -->
				<div class="row">


					<form action="" method="get" name="form1" style="width: 100%">

						<div class="row align-middle">
							<div class="col-md">
								<select name="chonlop" id="chonlop" class="form-select ">
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
								<select name="chongioitinh" id="chongioitinh"
									class="form-select">
									<option value="">Giới Tính</option>
									<option value="Nam">Nam</option>
									<option value="Nữ">Nữ</option>
									<option value="Khác">Khác</option>

								</select>
							</div>

							<div class="col-md">
								<select name="chonnguoiday" id="chonnguoiday"
									class="form-select">
									<option value="">Hiện là</option>
									<option value="Giáo viên">Giáo viên</option>
									<option value="Sinh viên">Sinh viên</option>
									<option value="Đã tốt nghiệp">Đã tốt nghiệp</option>

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
							<div class="col">
								<div id="fixedButtonSearch">
									<button class="btn btn-primary btn-block mb-4" type="submit">
										<i class="fa-solid fa-magnifying-glass icon"></i> Tìm kiếm
									</button>
								</div>
							</div>

						</div>



					</form>

					<div class="row">
						<div class="row">
							<div class="col">
								<form action="./createTutor" method="get">
									<button class="btn btn-primary btn-block mb-4" type="submit">
										<i class="fa-solid fa-plus icon"></i> Thêm gia sư
									</button>
								</form>
							</div>
							<div class="col" align="right">
								<spring:url value="/quanlygiasu/?type=tutor" var="xlsxTutor" />
								<a href="${xlsxTutor }"
									class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
									class="fas fa-download fa-sm text-white-50"></i> Tải file
									excel</a>
							</div>
						</div>
						<table width="100%" class="table mb-0 bg-white">
							<thead>
								<tr>
									<th scope="col">Tên gia sư</th>
									<th scope="col">Email<br></th>
									<th scope="col">Năm sinh<br></th>
									<th scope="col">Giới Tính<br></th>
									<th scope="col">SĐT<br></th>
									<th scope="col">Nghề nghiệp<br></th>
									<th style="text-align: center; float: center;" scope="col">Số
										buổi<br>
									</th>
									<th scope="col">Ưu điểm<br></th>

									<th scope="col" width="2%"></th>
									<!-- <th scope="col" width="2%"></th> -->
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<c:forEach var="item" items="${ listTutor }">
									<tr>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.name }</td>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.email }</td>

										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.birth_year }</td>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.gender }</td>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.phone }</td>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.isnow }</td>
										<td style="text-align: center; float: center;"
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.sobuoi }</td>
										<td
											onclick="checkRow('${item.id}', '${item.name }',' ${item.address }', '${item.email }', '${item.phone }', '${item.school }', '${item.department }', '${item.gender }',' ${item.graduate_year }',' ${item.isnow }',' ${item.describe }',' ${item.sobuoi }', '${item.birth_year }', '${item.id_account }', '${item.created_at}', '${item.classes }', '${item.subjects }', '${item.categories }')">${item.describe }</td>
										<th><a href="updateTutor?id=${item.id}"><i
												class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
										<%-- <th><a href="./deleteTutor?id=${item.id }"
											onclick="return confirmDelete()"><i
												class="fa-solid fa-trash text-danger icon"></i></a></th> --%>
									</tr>
								</c:forEach>

							</tbody>
						</table>

						<canvas width="100%" height="1px"></canvas>
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
		</div>
		<!-- <script>
			function search() {
				var cl = document.getElementById("chonlop").value;
				var su = document.getElementById("chonmon").value;
				var di = document.getElementById("chonquan").value;
				var gen = document.getElementById("chongioitinh").value;
				var peo = document.getElementById("chonnguoiday").value;
				return "class=" + cl + "subject=" + su + "district=" + di
						+ "gender=" + gen + "people=" + peo;
			}
		</script> -->
		<script>
			function checkRow(id, name, address, email, phone, school,
					department, gender, graduate_year, isnow, describe, sobuoi,
					birth_year, id_account, created_at, classes, subjects,
					categories) {

				var p = "<h2>Thông tin cụ thể</h2>";
				// CREATING DATA TO SHOW ON MODEL
				p += "<div class=\"row\">"
				p += "<label class=\"control-label\"><b>Mã gia sư: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+id+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Tên tài khoản: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+id_account+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Tên gia sư: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+name+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Địa chỉ: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+address+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Email: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+email+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Số điện thoại: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+phone+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Trường: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+school+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Chuyên ngành: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+department+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Giới tính: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+gender+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Năm tốt nghiệp: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+graduate_year+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Nghề nghiệp: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+isnow+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Ưu điểm: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+describe+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Số buổi: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+sobuoi+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Ngày sinh: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+birth_year+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Lớp dạy: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+classes+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Môn dạy: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+subjects+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Phân loại: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+categories+"\"  ></div>"
				p += "</div> <div class=\"row\">"
				p += "<label class=\"control-label\"><b>Ngày tạo: </b><span style=\"color: #FF0000\">*</span></label><div class=\"form-outline\"><input type=\"text\"  class=\"form-control\"disabled value=\""+created_at+"\"  ></div>"
				p += "</div>"
				//CLEARING THE PREFILLED DATA
				$("#divGFG").empty();
				//WRITING THE DATA ON MODEL
				$("#divGFG").append(p);
			}
		</script>


	</section>
</body>