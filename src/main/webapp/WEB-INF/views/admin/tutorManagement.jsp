<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div style="text-align: center;width: 100%; padding: 1px 10px; box-sizing: border-box">
			<form action="" method="post" name="form1" style="width:100%">
				<div style="margin-bottom: 0 !important; boxsizing: boder-box;">
					<div>
						<input type="text" name="tu_khoa_tim_kiem" class="form-control"
							placeholder="Từ khóa hoặc Mã gia sư"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;"
							value="">
					</div>
					<div class="col-3">
						<select name="chonlop" id="chonlop" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Lớp</option>
							<option value="L0L">Lớp lá</option>
							<option value="L1L">Lớp 1</option>
							<option value="L2L">Lớp 2</option>
							<option value="L3L">Lớp 3</option>
							<option value="L4L">Lớp 4</option>
							<option value="L5L">Lớp 5</option>
							<option value="L6L">Lớp 6</option>
							<option value="L7L">Lớp 7</option>
							<option value="L8L">Lớp 8</option>
							<option value="L9L">Lớp 9</option>
							<option value="L10L">Lớp 10</option>
							<option value="L11L">Lớp 11</option>
							<option value="L12L">Lớp 12</option>
							<option value="L13L">Ôn Đại Học</option>
							<option value="L14L">Năng khiếu</option>
							<option value="L15L">Ngoại ngữ</option>
							<option value="L16L">Lớp khác</option>
							<option value="L17L">Hệ Đại học</option>
						</select>
					</div>
					<div class="col-3">
						<select name="chonmon" id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Môn</option>
							<option value="M1M">Toán</option>
							<option value="M2M">Lý</option>
							<option value="M3M">Hóa</option>
							<option value="M4M">Văn</option>
							<option value="M5M">Tiếng Anh</option>
							<option value="M6M">Sinh</option>
							<option value="M7M">Báo bài</option>
							<option value="M8M">Sử</option>
							<option value="M9M">Tiếng Việt</option>
							<option value="M10M">Địa</option>
							<option value="M11M">Vẽ</option>
							<option value="M12M">Đàn nhạc</option>
							<option value="M13M">Tin học</option>
							<option value="M14M">Rèn chữ đẹp</option>
							<option value="M15M">Tiếng Hoa</option>
							<option value="M16M">Tiếng Nhật</option>
							<option value="M17M">Anh văn giao tiếp</option>
							<option value="M18M">Tiếng Hàn</option>
							<option value="M19M">Kế toán</option>
							<option value="M20M">Tiếng Nga</option>
							<option value="M21M">Tiếng Pháp</option>
							<option value="M22M">Tiếng Đức</option>
							<option value="M23M">Tiếng Campuchia</option>
							<option value="M24M">Tiếng Thái</option>
							<option value="M25M">Tiếng Ý</option>
							<option value="M26M">Môn khác</option>
							<option value="M27M">Luyện thi đại học</option>
						</select>
					</div>
					<div class="col-3">
						<select name="chongioitinh" id="chongioitinh" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Giới Tính</option>
							<option value="1">Nam</option>
							<option value="2">Nữ</option>
						</select>
					</div>
				</div>
				<div style="margin-bottom: 0 !important">
					<div class="col-3">
						<select name="chonnguoiday" id="chonnguoiday" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Hiện là</option>
							<option value="1">Giáo viên</option>
							<option value="2">Sinh viên</option>
							<option value="3">Đã tốt nghiệp</option>
						</select>

					</div>
					<div class="col-3">
						<select name="tinhthanh" id="tinhthanh" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Tỉnh Thành</option>
							<option value="1">TP. Hồ Chí Minh</option>
							<option value="2">Hà Nội</option>
							<option value="4">Bà Rịa - Vũng Tàu</option>
							<option value="10">Bình Dương</option>
							<option value="16">Cần Thơ</option>
							<option value="17">Đà Nẵng</option>
							<option value="21">Đồng Nai</option>
							<option value="59">Thừa Thiên Huế</option>
						</select>
					</div>
					<div class="col-3">
						<select name="quanhuyen" id="quanhuyen" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Quận huyện</option>
						</select>
					</div>
					</div>
					<div id="fixedButtonSearch">
						<button value="1" name="Search" type="button">Tìm kiếm</button>
					</div>
				

			</form>
		</div>
		<div>
			<table border="1" width="100%">
				<tbody>
					<tr>
						<td><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên gia sư</strong></td>
						<td><strong>Năm sinh</strong><br></td>
						<td><strong>Nghề nghiệp</strong><br></td>
						<td><strong>Trường</strong><br></td>
						<td><strong>Chuyên ngành</strong></td>
						<td><strong>Năm tốt nghiệp</strong></td>
						<td><strong>Lớp dạy</strong><br></td>
						<td><strong>Các môn</strong><br></td>
						<td><strong>Khu vực</strong><br></td>
						<td><strong>Lương</strong><br></td>
						<td><strong>Thông tin khác</strong><br></td>
						<td><br></td>
						<td><br></td>
					</tr>
					<tr class="row0">
						<td><input type="checkbox" name="checked" value=1></td>
						<td><button value="1" name="UpdateTuTor" type="button">Cập
								nhật</button></td>
						<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
					</tr>
					<c:forEach var="item" items="${ listTutors}">
						<tr class="row0">
							<td><input type="checkbox" name="checked" value=1></td>
							<td>
								<button value="1" name="Update" type="button">Cập nhật</button>
							</td>
							<td><button style="background-color: red;"value="1" name="Delete" type="button">Xóa</button></td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
			<div id="fixedButtonAdd">
				<button value="1" name="Add" type="button">Thêm gia sư</button>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>