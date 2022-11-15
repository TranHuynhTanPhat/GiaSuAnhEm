<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div>
			<form action="./quanlylophoc" method="post">
				<div class="group-button">

					<button value="add" type="submit">Thêm lớp học</button>

					<button name="update" type="submit">Cập nhật</button>

					<button value="1" name="delete" type="submit">Xóa</button>
				</div>
				<table border="0" width="100%">
					<tbody>
						<tr>
							<td width="2%"><br></td>
							<td><strong>ID</strong><br></td>
							<td><strong>Tên lớp học</strong></td>
						</tr>
						<c:forEach var="item" items="${ listClass }">
							<tr>
								<td width="2%"><input type="checkbox" name="remove_class"
									value=${ item._id }></td>
								<td><strong>${ item._id }</strong><br></td>
								<td><strong>${ item.name }</strong></td>


							</tr>
						</c:forEach>

					</tbody>
				</table>
			</form>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>