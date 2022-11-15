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

				<button value="1" name="delete" id="xoa" type="button">Xóa</button>
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
						<td width="2%"><input type="checkbox" class="action" name="checked" value=${ item._id }></td>
							<td><strong>${ item._id }</strong><br></td>
							<td><strong>${ item.name }</strong></td>

						
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