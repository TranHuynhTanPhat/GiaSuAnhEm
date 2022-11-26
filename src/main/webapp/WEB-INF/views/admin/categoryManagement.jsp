<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<script type="text/javascript">
			function confirmDelete() {
				var result = confirm("Bạn chắc chưa?");
				if (result) {
					return true;
				} else
					return false;
			}
		</script>


		<div>
			<div class="group-button">
				<form action="./createCategory" method="GET">
					<button value="add" type="submit">Thêm phân loại</button>
				</form>

			</div>
			<table border="0" width="100%">

				<thead>
					<tr>
						<th><strong>Quận</strong></th>
						<th width="20%"><strong>Style</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ sessionScope.listCategoryDistrict}">
						<tr>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>
							<th><a href="updateCategory?id=${item._id}">Update</a></th>
							<th><a href="./deleteCategory?id=${item._id }"
								onclick="return confirmDelete()">Delete</a></th>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>
		<div>
			<div class="group-button" style="padding-top: 100px">
				<form action="./createCategory" method="GET">
					<button value="add" type="submit">Thêm phân loại</button>
				</form>

			</div>
			<table border="0" width="100%">
				<thead>
					<tr>
						<th><strong>Khối</strong></th>
						<th width="20%"><strong>Style</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ sessionScope.listCategoryClass}">
						<tr>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>
							<th><a href="updateCategory?id=${item._id}">Update</a></th>
							<th><a href="./deleteCategory?id=${item._id }"
								onclick="return confirmDelete()">Delete</a></th>
						</tr>
					</c:forEach>


				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>