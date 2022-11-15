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

					<c:forEach var="item" items="${ listCategoryDistrict}">
						<tr>
							<td width="2%"><input type="checkbox" class="action1" name="checked" value=1></td>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>

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

					<c:forEach var="item" items="${ listCategoryClass}">
						<tr>
							<td width="2%"><input type="checkbox" class="action" name="checked" value=1></td>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>

						</tr>
					</c:forEach>

					<script language="javascript">
						document.getElementsByClassName("action").onclick = function(e) {
							if (this.checked) {
								<button value="1" name="delete" type="button">Xóa</button>
							} else {
								alert("Bạn vừa bỏ thích freetuts.net");
							}
						};
					</script>
				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>