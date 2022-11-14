<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="" method="post" name="info_frm"
					class="form-horizontal" onsubmit="return check_info();"
					autocomplete="off" enctype="multipart/form-data">



					<br>
					<div class="form-group">
						<label class="col-4 control-label">Địa chỉ hiện tại: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="diachi" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Quận: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="quan" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Số buổi: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="sobuoi" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Thời gian: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="time" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Trạng thái: <span
							style="color: #FF0000">*</span></label> <select name="chonmon"
							id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn trạng thái</option>
							<option value="1">Đã nhận</option>
							<option value="2">Chưa nhận</option>
						</select>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Lương: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="luong" class="form-control" value="">
						</div>
					</div>



					<br>
					<div class="form-group">
						<label class="col-4 control-label">Category: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody></tbody>
							</table>
						</div>
					</div>
					<div class="form-group">
						<label class="col-4 control-label">Môn dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												id="monday" value="M1M">Toán</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M2M">Lý</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M3M">Hóa</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M4M">Văn</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M5M">Tiếng Anh</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M6M">Sinh</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M7M">Báo bài</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M8M">Sử</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M9M">Tiếng Việt</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M10M">Địa</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M11M">Vẽ</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M12M">Đàn nhạc</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M13M">Tin học</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M14M">Rèn chữ đẹp</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M15M">Tiếng Hoa</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M16M">Tiếng Nhật</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M17M">Anh văn giao tiếp</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M18M">Tiếng Hàn</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M19M">Kế toán</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M20M">Tiếng Nga</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M21M">Tiếng Pháp</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M22M">Tiếng Đức</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M23M">Tiếng Campuchia</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M24M">Tiếng Thái</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="monday[]"
												value="M25M">Tiếng Ý</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M26M">Môn khác</label></td>
										<td><label><input type="checkbox" name="monday[]"
												value="M27M">Luyện thi đại học</label></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Lớp dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												id="lopday" value="L0L">Lớp lá</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L1L">Lớp 1</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L2L">Lớp 2</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L3L">Lớp 3</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L4L">Lớp 4</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L5L">Lớp 5</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L6L">Lớp 6</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L7L">Lớp 7</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L8L">Lớp 8</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L9L">Lớp 9</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L10L">Lớp 10</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L11L">Lớp 11</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L12L">Lớp 12</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L13L">Ôn Đại Học</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L14L">Năng khiếu</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L15L">Ngoại ngữ</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L16L">Lớp khác</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L17L">Hệ Đại học</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox" name="lopday[]"
												value="L18L">Tin học</label></td>
										<td><label><input type="checkbox" name="lopday[]"
												value="L19L">Mầm non</label></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>



					<br>
					<div class="form-group">
						<label class="col-4 control-label">Yêu cầu khác: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<textarea name="yeucaukhac" rows="3" class="form-control"></textarea>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Liên hệ: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<textarea name="lienhe" rows="3" class="form-control"></textarea>
						</div>
					</div>
					<br>

					<div class="form-group">
						<label class="col-4 control-label"></label>
						<div class="col-7">
							<input name="register" type="submit" class="input_button"
								value="Đăng ký">
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

