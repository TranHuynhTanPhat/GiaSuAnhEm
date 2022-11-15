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

				<button value="1" name="delete" id="xoa1" type="button">Xóa</button>
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
							<td width="2%"><input type="checkbox" class="action1"
								name="checked" value=1></td>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>

						</tr>
					</c:forEach>
					<script language="javascript">


							var temp1 = document.getElementById("xoa1");
							temp1.disabled = true;
							temp1.style.color = "#000000";
						document.addEventListener("DOMContentLoaded", function(
								event) {
							// DOM is ready
							const elements = document
									.getElementsByClassName("action1");
							var itemCount = elements.length

							for (let i = 0; i < elements.length; i++) {
								elements[i].addEventListener('click',
										()=>{
											
											if(elements[i].checked){
												temp1.disabled = false;
												itemCount--;
											} else{
												itemCount++;
											}
											if (itemCount == elements.length){
												temp1.disabled = true;
											}
										});
							}
						});
					</script>

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

				<button value="1" name="delete" id="xoa" type="button">Xóa</button>
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
							<td width="2%"><input type="checkbox" class="action"
								name="checked" value=1></td>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>

						</tr>
					</c:forEach>

					<script language="javascript">


						var temp = document.getElementById("xoa");
						temp.disabled = true;
						temp.style.color = "#000000";
						document.addEventListener("DOMContentLoaded", function(
								event) {
							const elements = document
									.getElementsByClassName("action");
							var itemCount = elements.length

							for (let i = 0; i < elements.length; i++) {
								elements[i].addEventListener('click',
										()=>{
											
											if(elements[i].checked){
												temp.disabled = false;
												itemCount--;
											} else{
												itemCount++;
											}
											if (itemCount == elements.length){
												temp.disabled = true;
											}
										});
							}
						});
					</script>
				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>