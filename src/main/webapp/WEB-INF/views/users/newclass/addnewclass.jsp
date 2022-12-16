<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng ký lớp mới</title>
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<link
	href="<c:url value="resources/assets/css/import/addnewclass.css"/>"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<a href="./trang-chu"><img
				src="resources/assets/images/tot_nghiep.png"></a>

			<h1 class="form-title">ĐĂNG KÝ MỞ LỚP</h1>
			<form action="dang-ky-mo-lop" method="POST">
				<div class="main-newclass-info">
					<div class="user-input-box">
						<label for="diachi">Địa chỉ hiện tại <span
							style="color: #db1414">*</span></label> <input type="text" id="diachi"
							name="diachi" placeholder="Nhập địa chỉ hiện tại"  >
						<small></small>
					</div>
					<div class="user-input-box">
						<label for="quan">Quận<span style="color: #db1414">*</span></label>
						<input type="text" id="quan" name="quan" placeholder="Nhập quận"
							 > <small></small>
					</div>
					<div class="user-input-box">
						<label for="sobuoi">Số buổi<span style="color: #db1414">*</span></label>
						<input type="number" id="sobuoi" name="sobuoi"
							placeholder="Nhập số buổi"  > <small></small>
					</div>
					<div class="user-input-box">
						<label for="time">Thời gian<span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="time"
							placeholder="Nhập thời gian"  > <small></small>
					</div>
					<div class="user-input-box">
						<label for="diachi">Trạng thái:<span
							style="color: #db1414">*</span></label> <input id="trangthai"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;"
							disabled value="Chưa nhận"> <input name="trangthai"
							type="hidden" id="trangthai" value="0"> <small></small>
					</div>
					<div class="user-input-box">
						<label for="luong">Lương<span style="color: #db1414">*</span></label>
						<input type="text" id="luong" name="luong"
							placeholder="Nhập lương"  ><small></small>
					</div>
					<div class="user-input-box">
						<label for="yeucaukhac">Yêu cầu khác</label> <input type="text"
							id="yeucaukhac" name="yeucaukhac" placeholder="yêu cầu khác"
							 > <small></small>
					</div>
					<div class="user-input-box">
						<label for="lienhe">Liên hệ<span style="color: #db1414">*</span></label>
						<input type="text" id="lienhe" name="lienhe"
							placeholder="Nhập liên hệ"  > <small></small>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Danh mục</label><br> <small></small>
						<table border="0" class="tablebox category">
							<tbody>
								<c:forEach var="item" items="${listCategoryDistrict }">
									<tr>
										<td><input type="checkbox" name="category" id="category"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
						</table>

						<table border="0" class="tablebox category right">
							<c:forEach var="item" items="${listCategoryClass }">
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item.id }">${item.name }</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Môn dạy</label><br> <small></small>
						<table border="0" class="tablebox monhoc">
							<tbody>
								<c:forEach var="item" items="${listSubject }">
									<tr>
										<td><input type="checkbox" name="monhoc" id="monhoc"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Lớp dạy</label> <br><small></small>
						<table border="0" class="tablebox lophoc">
							<tbody>
								<c:forEach var="item" items="${listClass }">
									<tr>
										<td><input type="checkbox" name="lophoc" id="lophoc"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
				<div class="form-submit-btn">
					<button type="submit" value="dangky">Đăng ký</button>
				</div>
			</form>
		</div>
	</div>
	<script src="resources/assets/js/import/addnewclass.js"></script>
</body>
</html>