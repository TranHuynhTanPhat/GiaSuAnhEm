<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<div>
			<table border="1" width="100%">
				<tbody>
					<tr>
						<td><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Lớp dạy</strong></td>
						<td><strong>Địa chỉ</strong><br></td>
						<td><strong>Mức lương</strong><br></td>
						<td><strong>Số buổi</strong><br></td>
						<td><strong>Thời gian dạy</strong></td>
						<td><strong>Yêu cầu</strong></td>
						<td><strong>Liên hệ</strong><br></td>
						<td><br></td>
						<td><br></td>
					</tr>
					<tr class="row0">
						<td><input type="checkbox" name="checked" value=1></td>
						<td><button value="1" name="UpdateTuTor" type="button">Cập
								nhật</button></td>
						<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
					</tr>
					<c:forEach var="item" items="${ listCources}">
						<tr class="row0">
							<td><input type="checkbox" name="checked" value=1></td>
							<td><div id="fixedButtonDelete">
									<button value="1" name="UpdateTuTor" type="button">Cập
										nhật</button>
								</div></td>
							<td><button value="1" name="DeleteTutor" type="button">Xóa</button></td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
			<div id="fixedButtonAdd">
				<button value="1" name="AddTutor" type="button">Thêm khóa học</button>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>