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
		<form action="./quanlykhoahoc" method="post">
			<div class="group-button">
					<button value="add" type="submit">Thêm khóa học</button>

					<button name="update" type="submit">Cập nhật</button>

				<button value="delete" name="delete" type="submit">Xóa</button>
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
						</tr>
						<c:forEach var="item" items="${listNewClass }">
							<tr>
								<td><input type="checkbox" name="remove_cource"
									value=${ item._id }></td>
								<td>${ item.id }</td>
								<td><c:forEach var="cl" items="${item.classes }">
										${ cl.name },
									</c:forEach></td>

								<td><c:forEach var="subject" items="${item.subjects }">
										${ subject.name },
									</c:forEach></td>

								<td><c:forEach var="category" items="${item.categories }">
										${ category.name },
									</c:forEach></td>
								<td>${ item.address }</td>
								<td>${ item.district }</td>
								<td>${ item.salary }</td>
								<td>${ item.sobuoi }</td>
								<td>${ item.time }</td>
								<td>${ item.created_at }</td>
								<td>${ item.require }</td>
								<td>${item.contact }</td>
								<td>${ item.status }</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</form>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>