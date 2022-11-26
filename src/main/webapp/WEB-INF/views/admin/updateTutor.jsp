<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="${pageContext.request.contextPath }/updateTutor"
					method="post" name="info_frm" class="form-horizontal" onclick="">
					<div class="form-group">
						<label class="col-1 control-label"></label>
						<div class="col-11" style="color: #F00">* Vui lòng cung cấp
							đầy đủ thông tin bên dưới để chúng tôi tiện liên lạc.</div>
					</div>
					<input type="hidden" name="id" value="${model._id }"> <br>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Họ và tên: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" id="hoten" name="hoten" class="form-control"
								value="${model.name }">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Giới tính: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="gioitinh" id="gioitinh" class="form-control"
								style="width: 35%; float: left">
								<option value="${model.gender }">${model.gender }</option>
								<option value="Khác">Khác</option>
								<option value="Nam">Nam</option>
								<option value="Nữ">Nữ</option>
							</select>
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Năm sinh: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="namsinh" id="namsinh" class="form-control"
								style="width: 30%; float: left;">
								<c:forEach begin="1952" end="2022" varStatus="loop">
									<c:choose>
										<c:when test="${model.birthYear == loop.index}">
											<option value="${loop.index }" selected="selected">${loop.index }</option>
										</c:when>
										<c:otherwise>
											<option value="${loop.index }">${loop.index }</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>


							</select>
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Địa chỉ: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="diachi" class="form-control"
								value="${model.address }">
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Email: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="email" class="form-control"
								value="${model.email }">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Điện thoại: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="dienthoai" class="form-control"
								value="${model.phone }">
						</div>
					</div>


					<br>
					<div class="form-group">
						<label class="col-4 control-label">Sinh viên (giáo viên)
							trường: <span style="color: #FF0000">*</span>
						</label>
						<div class="col-7">
							<input type="text" name="truong" class="form-control"
								value="${model.school }" placeholder="Ví dụ: Đại học Sư Phạm">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Ngành học: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="chuyennganh" class="form-control"
								value="${model.department }">
						</div>
					</div>

					<br>
					<div class="form-group">
						<label class="col-4 control-label">Năm tốt nghiệp: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="namtotnghiep" id="namtotnghiep"
								class="form-control" placeholder="Ví dụ: 2010"
								value="${model.graduateYear }">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Hiện là: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="nghenghiep" id="nghenghiep" class="form-control"
								style="width: 45%; float: left">
								<option value="${model.isNow }">${model.isNow }</option>

								<option value="Giáo viên">Giáo viên</option>
								<option value="Sinh viên">Sinh viên</option>
								<option value="Đã tốt nghiệp">Đã tốt nghiệp</option>
							</select>
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Ưu điểm: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="uudiem" id="uudiem" class="form-control"
								placeholder="Ví dụ: Có 3 năm kinh nghiệm dạy kèm, nhiệt tình..."
								value="${model.describe }">

						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Môn dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item" items="${sessionScope.listSubject }">
										<c:choose>
											<c:when test="${fn:contains(model.subjects, item.name)}">
												<tr>
													<td><label><input type="checkbox"
															name="monhoc" id="monhoc" value="${ item._id }" checked>${item.name}</label></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td><label><input type="checkbox"
															name="monhoc" id="monhoc" value="${ item._id }">${item.name}</label></td>
												</tr>
											</c:otherwise>
										</c:choose>

									</c:forEach>
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
									<c:forEach var="item" items="${ sessionScope.listClass}">
										<c:choose>
											<c:when test="${fn:contains(model.classes, item.name)}">
												<tr>
													<td><label><input type="checkbox"
															name="lophoc" id="lophoc" value="${ item._id }" checked>${item.name}</label></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td><label><input type="checkbox"
															name="lophoc" id="lophoc" value="${ item._id }">${item.name}</label></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Khu vực: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item"
										items="${ sessionScope.listCategoryDistrict }">
										<c:choose>
											<c:when test="${fn:contains(model.teachAreas, item.name)}">
												<tr>
													<td><label><input type="checkbox"
															name="khuvuc" id="khuvuc" value="${ item.name }" checked>${item.name}</label></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td><label><input type="checkbox"
															name="khuvuc" id="khuvuc" value="${ item.name }">${item.name}</label></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Số buổi dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="sobuoiday" id="sobuoiday" class="form-control"
								style="width: 50%; float: left">
								<option value="${model.sobuoi }">${model.sobuoi }</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
							</select> buổi/tuần
						</div>
					</div>

					<br>
					<div class="form-group">
						<label class="col-4 control-label">Phương tiện: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="phuongtien" id="phuongtien"
								class="form-control" value="${model.vehicle }"
								style="width: 50%; float: left">
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<div class="col-11" style="color: red">
							* Lưu ý: Khi bạn đăng ký làm gia sư, thông tin, hình ảnh của bạn
							phải rõ ràng chính xác và được lưu trữ tại trung tâm nhằm phục vụ
							cho việc quản lý và tạo thuận lợi cho bạn khi đăng ký nhận lớp
							dạy.<br> BẠN PHẢI NHẬP MÃ CÁ NHÂN GỞI VỀ SỐ ĐIỆN THOẠI CỦA
							BẠN THÌ HỒ SƠ ĐĂNG KÝ LÀM GIA SƯ MỚI THÀNH CÔNG

						</div>
					</div>
					<div class="form-group">
						<label class="col-4 control-label"></label>
						<div class="col-7">
							<button value="create" name="create" type="submit">Update</button>
							<a href="${pageContext.request.contextPath }/quanlygiasu">Cancel</a>
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

