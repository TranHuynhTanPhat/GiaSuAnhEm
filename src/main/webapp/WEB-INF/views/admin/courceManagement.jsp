<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div
			style="text-align: center; width: 100%; padding: 1px 10px; box-sizing: border-box">
			<form action="" method="post" name="form1" style="width: 100%">
				<div style="margin-bottom: 0 !important; boxsizing: boder-box;">

					<div class="col-2">
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
					<div class="col-2">
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


				</div>
				<div id="fixedButtonSearch" style="float: center">
					<button value="1" name="Search" type="button">Tìm kiếm</button>
				</div>

			</form>
		</div>
		<div class="group-button">
				<form action="./addnewcource" method="POST">
					<button value="add" type="submit">Thêm khóa học</button>
				</form>
				<form action="./updatenewcource" method="post">
					<button name="update" type="submit">Cập nhật</button>
				</form>

				<button value="1" name="delete" type="button">Xóa</button>
			</div>
		<div>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Lớp dạy</strong></td>
						<td><strong>Môn học</strong></td>
						<td><strong>Category</strong></td>
						<td><strong>Địa chỉ</strong><br></td>
						<td><strong>Quận</strong></td>
						<td><strong>Mức lương</strong><br></td>
						<td><strong>Số buổi</strong><br></td>
						<td><strong>Thời gian dạy</strong></td>
						<td><strong>Thời gian tạo</strong></td>
						<td><strong>Yêu cầu</strong></td>
						<td><strong>Liên hệ</strong><br></td>
						<td><strong>Trạng thái</strong></td>
						<td width="8%"><br></td>
						<td width="5%"><br></td>
					</tr>
<<<<<<< HEAD
					<c:forEach var="item" items="${listNewClass }">
					<form>
						<tr >
						<td><input type="checkbox" name="remove_cource" value=${ item.id }></td>
						<td><strong>${ item.id }</strong><br></td>
						<td><strong>${ item.classes[0].name },</strong></td>
						<td><strong>${ item.address }</strong><br></td>
						<td><strong>${ item.salary }</strong><br></td>
						<td><strong>${ item.sobuoi }</strong><br></td>
						<td><strong>${ item.time }</strong></td>
						<td><strong>${ item.require }</strong></td>
						<td><strong>Liên hệ</strong><br></td>
						<td><button value="1" name="UpdateTuTor" type="button">Cập
								nhật</button></td>
						<td><button value="1" name="DeleteTutor" type="submit">Xóa</button></td>
					</tr>
					</form>
=======
					<tr>
						<td><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Lớp dạy</strong></td>
						<td><strong>Môn học</strong></td>
						<td><strong>Category</strong></td>
						<td><strong>Địa chỉ</strong><br></td>
						<td><strong>Quận</strong></td>
						<td><strong>Mức lương</strong><br></td>
						<td><strong>Số buổi</strong><br></td>
						<td><strong>Thời gian dạy</strong></td>
						<td><strong>Thời gian tạo</strong></td>
						<td><strong>Yêu cầu</strong></td>
						<td><strong>Liên hệ</strong><br></td>
						<td><strong>Trạng thái</strong></td>
						<td><form action="./updatenewcource" method="post">
								<button value="1" name="UpdateTuTor" type="submit">Cập
									nhật</button>
							</form></td>
						<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
					</tr>
					<c:forEach var="item" items="${ listCources}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><form action="./updatenewcource" method="post">
									<button value="1" name="UpdateTuTor" type="button">Cập
										nhật</button>
								</form></td>
							<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
						</tr>
>>>>>>> Phat1
					</c:forEach>

				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>