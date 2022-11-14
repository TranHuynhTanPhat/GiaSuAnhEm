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
							<input type="text" name="hoten" class="form-control" value="">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Giới tính: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="gioitinh" id="gioitinh" class="form-control"
								style="width: 35%; float: left">
								<option value="0">Chọn giới tính</option>
								<option value="1">Nam</option>
								<option value="2">Nữ</option>
							</select>
						</div>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-4 control-label">Ngày sinh: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<select name="ngaysinh" id="ngaysinh" class="form-control"
								style="width: 30%; float: left">
								<option value="0">Ngày</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select><select name="thangsinh" id="thangsinh" class="form-control"
								style="width: 30%; float: left">
								<option value="0">Tháng</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select><select name="namsinh" id="namsinh" class="form-control"
								style="width: 30%; float: left;">
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
							<input type="text" name="hoten" class="form-control" value="">
						</div>
					</div>
					<br>
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
						<label class="col-4 control-label">Ảnh thẻ: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input name="hinhthe" type="file" class="form-control">
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
						<label class="col-4 control-label">Trường: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="truong" class="form-control" value="">
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
								style="width: 45%; float: left">
								<option value="0">Nghề nghiệp</option>
								<option value="1">Giáo viên</option>
								<option value="2">Sinh viên</option>
								<option value="3">Đã tốt nghiệp</option>
							</select> <select name="trinhdo" id="trinhdo" class="form-control"
								style="width: 45%; float: right">
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
					</div>
					<br>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Ưu điểm: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<textarea name="uudiem" rows="3" class="form-control"
								placeholder="Ví dụ: Có 3 năm kinh nghiệm dạy kèm, nhiệt tình..."></textarea>
						</div>
					</div>
					<br>
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
						<label class="col-4 control-label">Khu vực dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_1" value="K291K">Quận
												1</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_2" value="K292K">Quận
												2</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_3" value="K293K">Quận
												3</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_4" value="K294K">Quận
												4</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_5" value="K295K">Quận
												5</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_6" value="K296K">Quận
												6</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_7" value="K297K">Quận
												7</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_8" value="K298K">Quận
												8</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_9" value="K299K">Quận
												9</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_10" value="K300K">Quận
												10</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_11" value="K301K">Quận
												11</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_12" value="K302K">Quận
												12</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_13" value="K303K">Quận
												Thủ Đức</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_14" value="K304K">Quận
												Tân Phú</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_15" value="K305K">Quận
												Tân Bình</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_16" value="K306K">Quận
												Phú Nhuận</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_17" value="K307K">Quận
												Gò Vấp</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_18" value="K308K">Quận
												Bình Thạnh</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_19" value="K309K">Quận
												Bình Tân</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_20" value="K310K">Huyện
												Bình Chánh</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_21" value="K311K">Huyện
												Cần Giờ</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_22" value="K312K">Huyện
												Củ Chi</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_23" value="K313K">Huyện
												Hóc Môn</label></td>
										<td><label><input type="checkbox"
												name="khuvucday[]" id="khuvucday_24" value="K314K">Huyện
												Nhà Bè</label></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-4 control-label">Thời gian dạy: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<table border="0" class="tablebox">
								<tbody>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" id="thoigianday" value="2S">Thứ
												2 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="2C">Thứ 2 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="2T">Thứ 2 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="3S">Thứ 3 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="3C">Thứ 3 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="3T">Thứ 3 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="4S">Thứ 4 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="4C">Thứ 4 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="4T">Thứ 4 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="5S">Thứ 5 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="5C">Thứ 5 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="5T">Thứ 5 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="6S">Thứ 6 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="6C">Thứ 6 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="6T">Thứ 6 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="7S">Thứ 7 - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="7C">Thứ 7 - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="7T">Thứ 7 - Tối</label></td>
									</tr>
									<tr>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="CNS">CN - Sáng</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="CNC">CN - Chiều</label></td>
										<td><label><input type="checkbox"
												name="thoigianday[]" value="CNT">CN - Tối</label></td>
									</tr>
									<tr>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
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
						<label class="col-4 control-label">Mức lương yêu cầu: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="mucluong" id="mucluong"
								class="form-control" value="" style="width: 50%; float: left">
							đồng/tháng
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
					<div class="form-group"></div>
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
							<input name="dangky" type="submit" class="input_button"
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

