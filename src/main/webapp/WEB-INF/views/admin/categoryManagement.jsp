<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">


		<div>
			<form action="./addcategory" method="post">
				<div id="fixedButtonAdd">
					<button value="1" name="Add" type="submit">Thêm phân loại
						quận</button>
				</div>
			</form>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Quận</strong></td>
						<td><strong>Style</strong></td>
						<td width="10%"><br></td>
						<td width="10%"><br></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td><strong>Tên lớp học</strong></td>
						<td><form action="./updatecategory" method="post">
								<button value="1" name="Update" type="submit">Cập nhật</button>
							</form></td>
						<td width="10%">
							<button value="1" name="DeleteTutor" type="button">Xóa</button>
						</td>
					</tr>
					<c:forEach var="item" items="${ listClasses}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><form action="./updatecategory" method="post">
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
		<div>
			<form action="./addcategoryclass" method="post">
				<div id="fixedButtonAdd">
					<button value="1" name="Add" type="submit">Thêm phân loại lớp</button>
				</div>
			</form>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Lớp</strong></td>
						<td><strong>Style</strong></td>
						<td width="10%"><br></td>
						<td width="10%"><br></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td><strong>Tên lớp học</strong></td>
						<td><form action="./updatecategoryclass" method="post">
								<button value="1" name="Update" type="submit">Cập nhật</button>
							</form></td>
						<td width="10%">
							<button value="1" name="DeleteTutor" type="button">Xóa</button>
						</td>
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