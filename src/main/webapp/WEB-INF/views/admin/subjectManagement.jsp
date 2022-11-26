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


		<form action="./addSubject" method="get">
			<div class="group-button">
				<button value="add" type="submit">Thêm môn học</button>
			</div>
		</form>
		<table border="0" width="100%">
			<thead>
				<tr>
					<th><strong>Tên môn học</strong></th>
					<th width="5%"></th>
					<th width="5%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${sessionScope.listSubject }">
					<tr>
						<td><strong>${ item.name }</strong></td>
						<th><a href="./updateSubject?id=${item._id}">Update</a></th>
						<th><a href="./deleteSubject?id=${item._id }"
							onclick="return confirmDelete()">Delete</a></th>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

</div>