<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./createNewCource" method="post">

					<div class="form-group">
						<label class="col-7 control-label">Địa chỉ hiện tại: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="diachi" class="form-control" value="">
						</div>


					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Quận: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="quan" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Số buổi: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="sobuoi" class="form-control" value="">
						</div>

					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Thời gian: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="time" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Trạng thái: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<select name="trangthai" id="chonmon" class="form-control"
								style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
								<option value="0">Chọn trạng thái</option>
								<option value="1">Đã nhận</option>
								<option value="0">Chưa nhận</option>
							</select>
						</div>
						<br> <br>
						<div class="form-group">
							<label class="col-7 control-label">Lương: <span
								style="color: #FF0000">*</span></label>
							<div class="col-11">
								<input type="text" name="luong" class="form-control" value="">
							</div>
						</div>
					</div>


					<br>
					<div class="form-group">
						<label class="col-7 control-label">Category: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item"
										items="${sessionScope.listCategoryDistrict }">
										<tr>
											<td><input type="checkbox" name="category" id="category"
												value="${item._id }">${item.name }</td>
										</tr>
									</c:forEach>
									<c:forEach var="item"
										items="${sessionScope.listCategoryClass }">
										<tr>
											<td><input type="checkbox" name="category" id="category"
												value="${item._id }">${item.name }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="form-group">
						<label class="col-7 control-label">Môn dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
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
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Lớp dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<table border="0" class="tablebox">
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



					<br>
					<div class="form-group">
						<label class="col-7 control-label">Yêu cầu khác: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="yeucaukhac" class="form-control"
								value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Liên hệ: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="lienhe" class="form-control" value="">
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-11">
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

