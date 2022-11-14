<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">


		<div>
			<div class="group-button">
				<form action="./addcategory" method="POST">
					<button value="add" type="submit">Thêm phân loại</button>
				</form>
				<form action="./updatecategory" method="post">
					<button name="update" type="submit">Cập nhật</button>
				</form>

				<button value="1" name="delete" type="button">Xóa</button>
			</div>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Quận</strong></td>
						<td><strong>Style</strong></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td><strong>1</strong></td>

					</tr>
					<c:forEach var="item" items="${ listClasses}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>

						</tr>
					</c:forEach>


				</tbody>
			</table>

		</div>
		<div>
			<div class="group-button" style="padding-top: 100px">
				<form action="./addcategoryclass" method="POST">
					<button value="add" type="submit">Thêm phân loại</button>
				</form>
				<form action="./updatecategoryclass" method="post">
					<button name="update" type="submit">Cập nhật</button>
				</form>

				<button value="1" name="delete" type="button">Xóa</button>
			</div>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Lớp</strong></td>
						<td><strong>Style</strong></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td><strong>2</strong></td>

					</tr>
					<c:forEach var="item" items="${ listClasses}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><form action="./updatecategoryclass" method="post">
									<button value="1" name="Update" type="submit">Cập nhật</button>
								</form></td>
							<td>
								<button value="1" name="Delete" type="button">Xóa</button>
							</td>
						</tr>
					</c:forEach>


				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>