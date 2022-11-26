<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<script type="text/javascript">
		function confirmDelete() {
			var result = confirm("Bạn chắc chưa?");
			if (result) {
				return true;
			} else
				return false;
		}
	</script>s
	<div id="page-main-Admin">
		<div>
			<form action="./addsubject" method="get">
				<div class="group-button">
					<button value="add" type="submit">Thêm môn học</button>
				</div>
				<table border="0" width="100%">
					<tbody>
						<tr>
							<td width="2%"><br></td>
							<td><strong>MS</strong><br></td>
							<td><strong>Tên môn học</strong></td>
						</tr>
						<c:forEach var="item" items="${sessionScope.listSubject }">
							<tr>
								<td width="2%"><input type="checkbox" class="action"
									name="remove_subject" value=${ item._id }></td>
								<td><strong>${ item._id }</strong><br></td>
								<td><strong>${ item.name }</strong></td>
								<th><a href="updatesubject?id=${item._id}">Update</a></th>
								<th><a href="./deletesubject?id=${item._id }"
									onclick="return confirmDelete()">Delete</a></th>
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
			</form>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>