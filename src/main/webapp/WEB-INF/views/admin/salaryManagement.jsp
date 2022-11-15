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
				<table border="0" cellpadding="5" width="100%">
					<tbody>
						<tr>
							<td rowspan="2" width="2%"></td>
							<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
										LỚP</strong></span></td>
							<td colspan="4" style="text-align: center"><strong>
									Sinh viên</strong></td>
						</tr>
						<tr>
							<td><span><strong>2 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>3
										buổi 1 tuần</strong></span></td>
							<td><span><strong>4 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>5
										buổi 1 tuần</strong></span></td>

						</tr>
						<c:forEach var="item" items="${listSST }">
							<tr>
								<td><input type="checkbox" name="checked"
									value="${item._id }"></td>
								<td>${item.grade }</td>
								<td>${item.twoSessions }</td>
								<td>${item.threeSessions }</td>
								<td>${item.fourSessions }</td>
								<td>${item.fiveSessions }</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<div class="group-button" style="padding-bottom: 100px">
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
							<td colspan="4" style="text-align: center"><strong>
									Giáo viên</strong></td>
						</tr>
						<tr>
							<td><span><strong>2 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>3
										buổi 1 tuần</strong></span></td>
							<td><span><strong>4 buổi 1 tuần</strong></span></td>
							<td><span style="color: rgb(255, 0, 0);"><strong>5
										buổi 1 tuần</strong></span></td>

						</tr>
						<c:forEach var="item" items="${listSST }">
							<tr>
								<td><input type="checkbox" name="checked"
									value="${item._id }"></td>
								<td>${item.grade }</td>
								<td>${item.twoSessions }</td>
								<td>${item.threeSessions }</td>
								<td>${item.fourSessions }</td>
								<td>${item.fiveSessions }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="group-button" style="padding-bottom: 100px">
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