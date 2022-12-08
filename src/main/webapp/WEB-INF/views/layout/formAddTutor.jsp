<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng kí gia sư</title>
<link
	href="<c:url value="resources/assets/css/import/addtutor.css"/>"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<img src="./src/mortarboard.png" height="60" alt="">
			<h1 class="form-title">ĐĂNG KÝ LÀM GIA SƯ</h1>
			<form action="#">
				<div class="main-newclass-info">
					<div class="user-input-box">
						<label for="diachi">Họ và tên <span style="color: #db1414">*</span></label>
						<input type="text" id="diachi" name="name"
							placeholder="Nhập Họ và tên">
					</div>
					<div class="user-input-box">
						<label for="time">Địa chỉ <span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="address"
							placeholder="Nhập địa chỉ">
					</div>
					<div class="user-input-box">
						<label for="sobuoi">Ngày sinh <span style="color: #db1414">*</span></label>
						<input type="text" id="sobuoi" name="birthday"
							placeholder="Chọn ngày sinh">
					</div>
					<div class="user-input-box">
						<label for="diachi">Giới tính <span style="color: #db1414">*</span></label>
						<select name="gender" id="trangthai"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Nam</option>
							<option value="1">Nữ</option>
						</select>
					</div>
					<div class="user-input-box">
						<label for="time">Email <span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="email" placeholder="Nhập Email">
					</div>
					<div class="user-input-box">
						<label for="time">Điện thoại <span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="phone "
							placeholder="Nhập số điện thoại">
					</div>
					<div class="user-input-box">
						<label for="quan">Sinh viên(giáo viên) trường</label> <input
							type="text" id="quan" name="quan" placeholder="Nhập quận">
					</div>

					<div class="user-input-box">
						<label for="time">Ngành học <span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="time"
							placeholder="Nhập thời gian">
					</div>

					<div class="user-input-box">
						<label for="yeucaukhac">Năm tốt nghiệp</label> <input type="text"
							id="yeucaukhac" name="yeucaukhac" placeholder="yêu cầu khác">
					</div>
					<div class="user-input-box">
						<label for="diachi">Trình độ <span style="color: #db1414">*</span></label>
						<select name="trangthai" id="trangthai"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Nam</option>
							<option value="1">Nữ</option>
						</select>
					</div>

					<div class="user-input-box">
						<label for="diachi">Hiện là <span style="color: #db1414">*</span></label>
						<select name="trangthai" id="trangthai"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Nam</option>
							<option value="1">Nữ</option>
						</select>
					</div>



					<div class="user-input-box">
						<label for="yeucaukhac">Ưu điểm</label> <input type="text"
							id="yeucaukhac" name="yeucaukhac" placeholder="yêu cầu khác">
					</div>
					<div class="user-input-box">
						<label for="lienhe">Mức lương yêu cầu <span
							style="color: #db1414">*</span></label> <input type="text" id="lienhe"
							name="lienhe" placeholder="Nhập liên hệ">
					</div>
					<div class="user-input-box">
						<label for="time">Ảnh thẻ <span style="color: #db1414">*</span></label>
						<input type="text" id="time" name="time"
							placeholder="Nhập thời gian">
					</div>

					<div class="user-checkbox-box">
						<label for="luong">Khu vực dạy <span
							style="color: #db1414">*</span></label>
						<table border="0" class="tablebox category">
							<tbody class="category">
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 2</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 3</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 4</td>
								</tr>
							</tbody>
						</table>
						<table border="0" class="tablebox category right">
							<tbody class="category">
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 6</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 7</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 8</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 9</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 10</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 11</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Thời gian dạy <span
							style="color: #db1414">*</span></label>
						<table border="0" class="tablebox category">
							<tbody class="category">
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 2</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 3</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 4</td>
								</tr>
							</tbody>
						</table>
						<table border="0" class="tablebox category right">
							<tbody class="category">
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 6</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 7</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 8</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 9</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 10</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="category" id="category"
										value="${item._id }">Quận 11</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Môn dạy <span style="color: #db1414">*</span></label>
						<table border="0" class="tablebox">
							<tbody>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Lý</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Hóa</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="monhoc" id="monhoc"
										value="${item._id }">Toán</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Lớp dạy <span style="color: #db1414">*</span></label>
						<table border="0" class="tablebox class">
							<tbody>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="lophoc" id="lophoc"
										value="${item._id }">Lớp 1</td>
								</tr>
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