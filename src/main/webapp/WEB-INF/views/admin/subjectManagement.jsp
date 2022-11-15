<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div>
			<form action="./quanlymonhoc" method="post">
				<div class="group-button">

					<button value="add" type="submit">Thêm môn học</button>

					<button name="update" type="submit">Cập nhật</button>

					<button value="1" name="delete" type="submit">Xóa</button>
				</div>
				<table border="0" width="100%">
					<tbody>
						<tr>
							<td width="2%"><br></td>
							<td><strong>MS</strong><br></td>
							<td><strong>Tên môn học</strong></td>
						</tr>
						<c:forEach var="item" items="${listSubject }">
							<tr>
								<td width="2%"><input type="checkbox" name="remove_subject"
									value=${ item._id }></td>
								<td><strong>${ item._id }</strong><br></td>
								<td><strong>${ item.name }</strong></td>
							</tr>
						</c:forEach>

						<c:forEach var="item" items="${ listClasses}">
							<tr>
								<td><input type="checkbox" name="checked" value=1></td>

							</tr>
						</c:forEach>


					</tbody>
				</table>
			</form>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>