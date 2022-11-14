<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">


		<div>
			<form action="./addclass" method="post">
				<div id="fixedButtonAdd">
					<button value="1" name="Add" type="submit">Thêm lớp học</button>
				</div>
			</form>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td width="10%"><br></td>
						<td width="10%"><br></td>
					</tr>
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=1></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td><form action="./updateclass" method="post">
								<button value="1" name="Update" type="submit">Cập nhật</button>
							</form></td>

						<td width="10%">
							<button value="1" name="DeleteTutor" type="button">Xóa</button>
						</td>
					</tr>
					<c:forEach var="item" items="${ listClasses}">
						<tr>
							<td><input type="checkbox" name="checked" value=1></td>
							<td><form action="./updateclass" method="post">
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