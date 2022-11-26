<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<script type="text/javascript">
		function confirmDelete() {
			var result = confirm("Bạn chắc chưa?");
			if (result) {
				return true;
			} else
				return false;
		}
	</script>
	<div id="page-main-Admin">
		<div
			style="text-align: center; width: 100%; padding: 1px 10px; box-sizing: border-box">
			<form action="" method="post" name="form1" style="width: 100%">
				<div style="margin-bottom: 0 !important; boxsizing: boder-box;">

					<div class="col-3">
						<select name="chonlop" id="chonlop" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Lớp</option>
							<c:forEach var="item" items="${sessionScope.listClass }">
								<option value="${item._id }">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="chonmon" id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Môn</option>
							<c:forEach var="item" items="${sessionScope.listSubject }">
								<option value="${item._id}">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="quanhuyen" id="quanhuyen" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Quận huyện</option>
							<c:forEach var="item"
								items="${sessionScope.listCategoryDistrict }">
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
			<form action="./createNewCource" method="get">
				<button value="add" type="submit">Thêm khóa học</button>
			</form>
		</div>
		<div>
			<table border="0" width="100%">
				<thead>
					<tr>
						<th><strong>Lớp dạy</strong></th>
						<th><strong>Môn học</strong></th>
						<th><strong>Category</strong></th>
						<th><strong>Địa chỉ</strong><br></th>
						<th><strong>Quận</strong></th>
						<th><strong>Mức lương</strong><br></th>
						<th><strong>Số buổi</strong><br></th>
						<th><strong>Thời gian dạy</strong></th>
						<th><strong>Thời gian tạo</strong></th>
						<th><strong>Yêu cầu</strong></th>
						<th><strong>Liên hệ</strong><br></th>
						<th><strong>Trạng thái</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listNewCource }">
						<tr>

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
							<td>${ item.createdAt }</td>
							<td>${ item.require }</td>
							<td>${item.contact }</td>
							<td>${ item.status }</td>
							<th><a href="updateNewCource?id=${item._id}">Update</a></th>
							<th><a href="./deleteNewCource?id=${item._id }"
								onclick="return confirmDelete()">Delete</a></th>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>
	</div>

	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>
