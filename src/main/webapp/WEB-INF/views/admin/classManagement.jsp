<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">


		<div>
			<div class="group-button">
				<form action="./addclass" method="POST">
					<button value="add" type="submit">Thêm lớp học</button>
				</form>
				<form action="./updateclass" method="post">
					<button name="update" type="submit">Cập nhật</button>
				</form>

				<button value="1" name="delete" type="button">Xóa</button>
			</div>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>

					</tr>
					<c:forEach var="item" items="${ listClasses}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>

						</tr>
					</c:forEach>


				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>