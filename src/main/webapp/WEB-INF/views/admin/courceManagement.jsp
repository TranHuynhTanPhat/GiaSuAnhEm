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

					<div class="col-3">
						<select name="chonlop" id="chonlop" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Lớp</option>
							<c:forEach var="item" items="${listClass }">
								<option value="${item._id }">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="chonmon" id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Môn</option>
							<c:forEach var="item" items="${listSubject }">
								<option value="${item._id}">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="quanhuyen" id="quanhuyen" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Quận huyện</option>
							<c:forEach var="item" items="${listQuan }">
								<option value=${item._id }>${item.name }</option>
							</c:forEach>
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
					<c:forEach var="item" items="${listNewClass }">
						<form>
							<tr>
								<td><input type="checkbox" name="remove_cource"
									value=${ item.id }></td>
								<td><strong>${ item.id }</strong><br></td>
								<td><strong>${ item.classes[0].name },</strong></td>
								<td><strong>${ item.address }</strong><br></td>
								<td><strong>${ item.salary }</strong><br></td>
								<td><strong>${ item.sobuoi }</strong><br></td>
								<td><strong>${ item.time }</strong></td>
								<td><strong>${ item.require }</strong></td>
								<td><strong>Liên hệ</strong><br></td>

							</tr>
						</form>
					</c:forEach>

					<c:forEach var="item" items="${ listCources}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><form action="./updatenewcource" method="post">
									<button value="1" name="UpdateTuTor" type="button">Cập
										nhật</button>
								</form></td>
							<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>