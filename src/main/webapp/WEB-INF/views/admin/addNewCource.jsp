<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./createNewCource" method="post">



					<br>
					<div class="form-group">
						<label class="col-7control-label">Địa chỉ hiện tại: <span
							style="color: #FF0000">*</span></label> <input type="text" name="diachi"
							class="form-control" value="">

					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Quận: <span
							style="color: #FF0000">*</span></label> <input type="text" name="quan"
							class="form-control" value="">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Số buổi: <span
							style="color: #FF0000">*</span></label> <input type="text" name="sobuoi"
							class="form-control" value="">

					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Thời gian: <span
							style="color: #FF0000">*</span></label> <input type="text" name="time"
							class="form-control" value="">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Trạng thái: <span
							style="color: #FF0000">*</span></label> <select name="trangthai"
							id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Chọn trạng thái</option>
							<option value="1">Đã nhận</option>
							<option value="0">Chưa nhận</option>
						</select>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-7control-label">Lương: <span
							style="color: #FF0000">*</span></label> <input type="text" name="luong"
							class="form-control" value="">
					</div>



					<br>
					<div class="form-group">
						<label class="col-7control-label">Category: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item" items="${listCategoryDistrict }">
										<tr>
											<td><label><input type="checkbox"
													name="category" id="category" value="${item._id }">${item.name }</label>
											</td>
										</tr>
									</c:forEach>
									<c:forEach var="item" items="${listCategoryClass }">
										<tr>
											<td><label><input type="checkbox"
													name="category" id="category" value="${item._id }">${item.name }</label></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="form-group">
						<label class="col-7control-label">Môn dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item" items="${listSubjects }">
										<tr>
											<td><label><input type="checkbox" name="monhoc"
													id="monhoc" value="${item._id }">${item.name }</label></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Lớp dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item" items="${listClasses }">
										<tr>
											<td><label><input type="checkbox" name="lophoc"
													id="lophoc" value="${item._id }">${item.name }</label></td>
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
						<textarea name="yeucaukhac" rows="3" class="form-control"></textarea>

					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Liên hệ: <span
							style="color: #FF0000">*</span></label>
						<textarea name="lienhe" rows="3" class="form-control"></textarea>

					</div>
					<br>

					<div class="form-group">
						<label class="col-7control-label"></label>
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

