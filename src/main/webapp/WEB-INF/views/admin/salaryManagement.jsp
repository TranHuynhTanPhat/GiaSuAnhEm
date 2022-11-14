<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div>
			<div style="text-align: center; box-sizing: inherit;">
				<p>
					<strong><span style="font-size: 14px;"><span>BẢNG
								HỌC PHÍ 2 BUỔI 1 TUẦN VÀ 3 BUỔI 1 TUẦN</span></span></strong>
				</p>
				<table border="0" cellpadding="5" height="178" width="100%">
					<tbody>
						<tr>
							<td rowspan="2" width="2%"></td>
							<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
										LỚP</strong></span></td>
							<td colspan="2"><strong> 2 buổi 1 tuần</strong></td>
							<td colspan="2"><strong> 3 buổi 1 tuần</strong></td>
						</tr>
						<tr>
							<td><span><strong>Sinh viên</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>Giáo
										viên</strong></span></td>
							<td><span><strong>Sinh viên</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>Giáo
										viên</strong></span></td>

						</tr>
						<tr>
							<td style="text-align: center;"><input type="checkbox"
								name="checked" value=1></td>
							<td><span>Lớp Lá, 1, 2, 3, 4</span></td>
							<td>1.000 - 1.200</td>
							<td>1.800 - 2.000</td>
							<td>1.500 - 1.700</td>
							<td>2.500 - 2.800</td>

						</tr>
						<tr>
							<td style="text-align: center;"><input type="checkbox"
								name="checked" value=1></td>
							<td><span>Lớp 5, 6, 7, 8</span></td>
							<td>1.200 - 1.400</td>
							<td>2.000 - 2.200</td>
							<td>1.800 - 2.200</td>
							<td>2.800 - 3.000</td>

						</tr>
						<tr>
							<td style="text-align: center;"><input type="checkbox"
								name="checked" value=1></td>
							<td><span>Lớp 9, 10, 11, 12</span></td>
							<td>1.400 - 1.600</td>
							<td>2.200 - 2.400</td>
							<td>2.000 - 2.400</td>
							<td>3.200 - 3.600</td>

						</tr>
						<tr>
							<td style="text-align: center;"><input type="checkbox"
								name="checked" value=1></td>
							<td><span style="color: rgb(255, 0, 0);">LTĐH-NGOẠI
									NGỮ</span></td>
							<td>1.600 - 1.800</td>
							<td>2.400 - 2.600</td>
							<td>2.200 - 2.600</td>
							<td>3.600 - 4.000</td>

						</tr>
					</tbody>
				</table>
				<div class="group-button" style="padding-bottom:100px">
					<form action="./addsalary" method="POST">
						<button value="add" type="submit">Thêm</button>
					</form>
					<form action="./updatesalary" method="post">
						<button name="update" type="submit">Cập nhật</button>
					</form>

					<button value="1" name="delete" type="button">Xóa</button>
				</div>
				<p>
					<strong><span style="font-size: 14px;"><span>BẢNG
								HỌC PHÍ 4 BUỔI 1 TUẦN VÀ 5 BUỔI 1 TUẦN</span></span></strong>
				</p>



				<table border="0" cellpadding="5" height="178" width="100%">
					<tbody>
						<tr>
							<td rowspan="2" width="2%"></td>
							<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
										LỚP</strong></span></td>
							<td colspan="2"><strong> 4 buổi 1 tuần</strong></td>
							<td colspan="2"><strong> 5 buổi 1 tuần</strong></td>
						</tr>
						<tr>
							<td><span><strong>Sinh viên</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>Giáo
										viên</strong></span></td>
							<td><span><strong>Sinh viên</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>Giáo
										viên</strong></span></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><span>Lớp Lá, 1, 2, 3, 4</span></td>
							<td>2.000 - 2.200</td>
							<td>3.400 - 3.600</td>
							<td>2.600 - 2.800</td>
							<td>4.400 - 4.600</td>

						</tr>
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><span>Lớp 5, 6, 7, 8</span></td>
							<td>2.400 - 2.600</td>
							<td>4.000 - 4.400</td>
							<td>3.000 - 3.400</td>
							<td>4.800 - 5.000</td>

						</tr>
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><span>Lớp 9, 10, 11, 12</span></td>
							<td>2.800 - 3.200</td>
							<td>4.600 - 4.800</td>
							<td>3.600 - 3.800</td>
							<td>5.400 - 6.000</td>

						</tr>
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><span style="color: rgb(255, 0, 0);">LTĐH-NGOẠI
									NGỮ</span></td>
							<td>3.000 - 3.200</td>
							<td>4.800 - 5.000</td>
							<td>4.000 - 4.400</td>
							<td>5.600 - 6.400</td>

						</tr>
					</tbody>
				</table>
				<div class="group-button" style="padding-bottom:100px">
					<form action="./addsalary" method="POST">
						<button value="add" type="submit">Thêm</button>
					</form>
					<form action="./updatesalary" method="post">
						<button name="update" type="submit">Cập nhật</button>
					</form>

					<button value="1" name="delete" type="button">Xóa</button>
				</div>
				<div style="box-sizing: inherit; text-align: justify;">
					<span style="color: rgb(255, 0, 0); font-size: 14px;">*Đối
						với gia sư là giáo viên có thâm niên, thạc sỹ, giáo viên dạy tại
						trường có kinh nghiệm dạy kèm thật hiệu quả mức học phí được tính
						theo tiết (1 tiết = 45 phút).</span>
				</div>
			</div>
			<div style="box-sizing: inherit; text-align: justify;">
				<span style="color: rgb(0, 0, 0);"><span
					style="font-size: 14px;"><u style="box-sizing: inherit;">Cấp
							1:</u>150.000/1 tiết (45 phút) = 300.000/1 buổi (90 phút)<br
						style="box-sizing: inherit;"> <u style="box-sizing: inherit;">Cấp
							2:</u>200.000/1 tiết (45 phút) = 400.000/1 buổi (90 phút)<br
						style="box-sizing: inherit;"> <u style="box-sizing: inherit;">Cấp
							3 - LTĐH:</u>250.000/1 tiết (45 phút) = 500.000/1 buổi (90 phút)</span></span>
			</div>
			<div style="box-sizing: inherit; text-align: justify;">
				<span style="color: rgb(255, 0, 0);"><span
					style="font-size: 14px;"><span style="box-sizing: inherit;"><span
							style="box-sizing: inherit;"><span
								style="box-sizing: inherit;"><em
									style="box-sizing: inherit;"><u
										style="box-sizing: inherit;">Lưu Ý:</u>Bảng học phí trên chỉ
										có tính chất tham khảo, học phí sẽ tăng hoặc giảm tùy theo số
										môn học và yêu cầu của quý phụ huynh.</em></span></span></span></span></span>
			</div>
			<div style="box-sizing: inherit; text-align: justify;">
				<span style="font-size: 14px;">- Đảm bảo gia sư dạy kèm chất
					lượng, uy tín, hiệu quả.<br>
				</span><span style="font-size: 14px;"><a
					href="https://www.trungtamdaykem.com/"><span
						style="color: rgb(0, 0, 0);">Gia Sư dạy kèm</span></a></span><span
					style="font-size: 14px;">có lý lịch bản thân, bằng cấp rỏ
					ràng.<br> - Nhận dạy thử một tuần để đánh giá chất lượng gia
					sư.<br> - Học phí gia sư xin được nhận vào cuối tháng.
				</span>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>