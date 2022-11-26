<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="${pageContext.request.contextPath }/createTutor"
					method="post" >
					<div class="form-group">
						<label class="col-1 control-label"></label>
						<div class="col-11" style="color: #F00">* Vui lòng cung cấp
							đầy đủ thông tin bên dưới để chúng tôi tiện liên lạc.</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Họ và tên: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" id="hoten" name="hoten" class="form-control"
								value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Giới tính: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="gioitinh" id="gioitinh" class="form-control"
								style="width: 35%; float: left">
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
								style="width: 35%; float: left;">
								<option value="0">Năm</option>
								<option value="1952">1952</option>
								<option value="1953">1953</option>
								<option value="1954">1954</option>
								<option value="1955">1955</option>
								<option value="1956">1956</option>
								<option value="1957">1957</option>
								<option value="1958">1958</option>
								<option value="1959">1959</option>
								<option value="1960">1960</option>
								<option value="1961">1961</option>
								<option value="1962">1962</option>
								<option value="1963">1963</option>
								<option value="1964">1964</option>
								<option value="1965">1965</option>
								<option value="1966">1966</option>
								<option value="1967">1967</option>
								<option value="1968">1968</option>
								<option value="1969">1969</option>
								<option value="1970">1970</option>
								<option value="1971">1971</option>
								<option value="1972">1972</option>
								<option value="1973">1973</option>
								<option value="1974">1974</option>
								<option value="1975">1975</option>
								<option value="1976">1976</option>
								<option value="1977">1977</option>
								<option value="1978">1978</option>
								<option value="1979">1979</option>
								<option value="1980">1980</option>
								<option value="1981">1981</option>
								<option value="1982">1982</option>
								<option value="1983">1983</option>
								<option value="1984">1984</option>
								<option value="1985">1985</option>
								<option value="1986">1986</option>
								<option value="1987">1987</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1999">1999</option>
								<option value="2000">2000</option>
								<option value="2001">2001</option>
								<option value="2002">2002</option>
								<option value="2003">2003</option>
								<option value="2004">2004</option>
								<option value="2005">2005</option>
							</select>
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Địa chỉ: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="diachi" class="form-control" value="">
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Email: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="email" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Điện thoại: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="dienthoai" class="form-control" value="">
						</div>
					</div>


					<br>
					<div class="form-group">
						<label class="col-4 control-label">Sinh viên (giáo viên)
							trường: <span style="color: #FF0000">*</span>
						</label>
						<div class="col-7">
							<input type="text" name="truong" class="form-control" value=""
								placeholder="Ví dụ: Đại học Sư Phạm">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Ngành học: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="chuyennganh" class="form-control"
								value="">
						</div>
					</div>

					<br>
					<div class="form-group">
						<label class="col-4 control-label">Năm tốt nghiệp: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="namtotnghiep" id="namtotnghiep"
								class="form-control" placeholder="Ví dụ: 2010" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Hiện là: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="nghenghiep" id="nghenghiep" class="form-control"
								style="width: 35%; float: left">

								<option value="Nghề nghiệp">Nghề nghiệp</option>
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
								value="">

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
										<tr>
											<td><label><input type="checkbox" name="monhoc"
													id="monhoc" value="${ item._id }">${item.name}</label></td>
										</tr>
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
									<c:forEach var="item" items="${ sessionScope.listClass }">
										<tr>
											<td><label><input type="checkbox" name="lophoc"
													id="monhoc" value="${ item._id }">${item.name}</label></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Khuc vực: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<c:forEach var="item"
										items="${ sessionScope.listCategoryDistrict }">
										<tr>
											<td><label><input type="checkbox" name="khuvuc"
													id="khuvuc" value="${ item.name }">${ item.name}</label></td>
										</tr>
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
								<option value="0">-- Chọn số buổi dạy --</option>
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
								class="form-control" value="" style="width: 50%; float: left">
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<div style="color: red">
							* Lưu ý: Khi bạn đăng ký làm gia sư, thông tin, hình ảnh của bạn
							phải rõ ràng chính xác và được lưu trữ tại trung tâm nhằm phục vụ
							cho việc quản lý và tạo thuận lợi cho bạn khi đăng ký nhận lớp
							dạy.<br> BẠN PHẢI NHẬP MÃ CÁ NHÂN GỞI VỀ SỐ ĐIỆN THOẠI CỦA
							BẠN THÌ HỒ SƠ ĐĂNG KÝ LÀM GIA SƯ MỚI THÀNH CÔNG

						</div>
					</div>
					<div class="form-group">
						<div class="col-7">
							<button value="create" name="create" type="submit">Thêm</button>
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

