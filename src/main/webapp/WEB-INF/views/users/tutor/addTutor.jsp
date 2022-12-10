<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng ký gia sư</title>
<link href="<c:url value="resources/assets/css/import/addtutor.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<a href="/TrungTamGiaSu/trang-chu"><img
				src="resources/assets/images/tot_nghiep.png"></a>

			<h1 class="form-title">ĐĂNG KÝ LÀM GIA SƯ</h1>
			<form action="#">
				<div class="main-newclass-info">
					<div class="user-input-box">
						<label for="diachi">Họ và tên <span style="color: #db1414">*</span></label>
						<input type="text" id="hoten" name="hoten"
							placeholder="Nhập Họ và tên">
					</div>
					<div class="user-input-box">
						<label for="time">Địa chỉ <span style="color: #db1414">*</span></label>
						<input type="text" id="diachi" name="diachi"
							placeholder="Nhập địa chỉ">
					</div>
					<div class="user-input-box">
						<label for="sobuoi">Ngày sinh <span style="color: #db1414">*</span></label>
						<input type="text" id="ngaysinh" name="ngaysinh"
							placeholder="Chọn ngày sinh">
					</div>
					<div class="user-input-box">
						<label for="diachi">Giới tính <span style="color: #db1414">*</span></label>
						<select name="gioitinh" id="gioitinh"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Nam</option>
							<option value="1">Nữ</option>
						</select>
					</div>
					<div class="user-input-box">
						<label for="time">Email <span style="color: #db1414">*</span></label>
						<input type="text" id="email" name="email"
							placeholder="Nhập Email">
					</div>
					<div class="user-input-box">
						<label for="dienthoai">Điện thoại <span
							style="color: #db1414">*</span></label> <input type="text" id="dienthoai"
							name="dienthoai " placeholder="Nhập số điện thoại">
					</div>
					<div class="user-input-box">
						<label for="truong">Sinh viên(giáo viên) trường</label> <input
							type="text" id="truong" name="truong"
							placeholder="VD: Đại học Sư Phạm Kĩ Thuật">
					</div>

					<div class="user-input-box">
						<label for="nganhhoc">Ngành học <span
							style="color: #db1414">*</span></label> <input type="text" id="nganhhoc"
							name="nganhhoc" placeholder="Nhập ngành học">
					</div>

					<div class="user-input-box">
						<label for="namtotnghiep">Năm tốt nghiệp</label> <input
							type="text" id="namtotnghiep" name="namtotnghiep"
							placeholder="năm tốt nghiệp">
					</div>
					<div class="user-input-box">
						<label for="nghenghiep">Hiện là <span
							style="color: #db1414">*</span></label> <select name="nghenghiep"
							id="nghenghiep"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Giáo viên</option>
							<option value="1">Sinh viên</option>
							<option value="1">Đã tốt nghiệp</option>
						</select>
					</div>
					<div class="user-input-box">
						<label for="trinhdo">Trình độ <span style="color: #db1414">*</span></label>
						<select name="trinhdo" id="trinhdo"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Trình độ</option>
							<option value="1">Cao Đẳng</option>
							<option value="2">Đại Học</option>
							<option value="3">Cử nhân</option>
							<option value="4">Thạc sỹ</option>
							<option value="5">Tiến sỹ</option>
							<option value="6">Kỹ sư</option>
							<option value="7">Bằng cấp khác</option>
						</select>
					</div>


					<div class="user-input-box">
						<label for="uudiem">Ưu điểm</label> <input type="text" id="uudiem"
							name="uudiem" placeholder="yêu cầu khác">
					</div>
					<div class="user-input-box">
						<label for=""luongyeucau"">Mức lương yêu cầu <span
							style="color: #db1414">*</span></label> <input type="text" id=""
							luongyeucau""
							name="luongyeucau"
							placeholder="Nhập liên hệ">
					</div>
					<div class="user-input-box">
						<label for="anhthe">Ảnh thẻ <span style="color: #db1414">*</span></label>
						<input type="file" id="anhthe" name="anhthe"
							placeholder="Nhập thời gian">
					</div>

					<div class="user-checkbox-box">
						<label for="luong">Khu vực dạy <span
							style="color: #db1414">*</span></label>
						<table border="0" class="tablebox category">
							<tbody class="category">
								<c:forEach var="item"
									items="${sessionScope.listCategoryDistrict }">
									<tr>
										<td><input type="checkbox" name="category" id="category"
											value="${item._id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Thời gian dạy <span
							style="color: #db1414">*</span></label>
						<table border="0" class="tablebox category">
							<tbody class="category">
								<c:forEach var="item"
									items="${sessionScope.listCategoryDistrict }">
									<tr>
										<td><input type="checkbox" name="category" id="category"
											value="${item._id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Môn dạy <span style="color: #db1414">*</span></label>
						<table border="0" class="tablebox">
							<tbody>
								<c:forEach var="item" items="${sessionScope.listSubject }">
									<tr>
										<td><input type="checkbox" name="monhoc" id="monhoc"
											value="${item._id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Lớp dạy <span style="color: #db1414">*</span></label>
						<table border="0" class="tablebox class">
							<tbody>
								<c:forEach var="item" items="${sessionScope.listClass }">
									<tr>
										<td><input type="checkbox" name="lophoc" id="lophoc"
											value="${item._id }">${item.name }</td>
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
</body>
</html>