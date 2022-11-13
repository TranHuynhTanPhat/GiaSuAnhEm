<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">


		<div>
			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>ID</strong><br></td>
						<td><strong>Tên lớp học</strong></td>
						<td width="10%"><br></td>
						<td width="10%"><br></td>
					</tr>
					<c:forEach var="item" items="${ listClass }">
					<tr>
						<td width="2%"><input type="checkbox" name="checked" value=${ item._id }></td>
							<td><strong>${ item._id }</strong><br></td>
							<td><strong>${ item.name }</strong></td>

						<td width="10%">
							<button value="1" name="UpdateTuTor" type="button">Cập
								nhật</button>
						</td>
						<td width="10%">
							<button value="1" name="DeleteTutor" type="button">Xóa</button>
						</td>
					</tr>
					</c:forEach>
					<c:forEach var="item" items="${ listClasses}">
						<tr >
							<td><input type="checkbox" name="checked" value=1></td>
							<td>
								<button value="1" name="Update" type="button">Cập nhật</button>
							</td>
							<td>
								<button value="1" name="Delete" type="button">Xóa</button>
							</td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
			<div id="fixedButtonAdd">
				<button value="1" name="Add" type="button">Thêm lớp học</button>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>