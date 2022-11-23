<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">
		<script type="text/javascript">
	function confirmDelete(){
		var result=confirm("Bạn chắc chưa?");
		if(result){
			return true;
		}
		else return false;
	}
	
	</script>


		<div>
			<div class="group-button">
				<form action="./addCategory" method="POST">
					<button value="add" type="submit">Thêm phân loại</button>
				</form>
				<form action="./updateCategory" method="POST">
					<button name="update" type="submit">Cập nhật</button>
				</form>

				<button value="1" name="delete" id="xoa1" type="button">Xóa</button>
			</div>
			<table border="0" width="100%">

				<thead>
					<tr>
						<th><strong>MS</strong><br></th>
						<th><strong>Quận</strong></th>
						<th><strong>Style</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ sessionScope.listCategoryDistrict}">
						<tr>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>
							<th><a href="updateCategory?id=${item._id}">Update</a></th>
							<th><a href="./deleteCategory?id=${item._id }" onclick="return confirmDelete()">Delete</a></th>
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

				<button value="1" name="delete" id="xoa" type="button">Xóa</button>
			</div>
			<table border="0" width="100%">
				<thead>
					<tr>
						<th><strong>MS</strong><br></th>
						<th><strong>Lớp</strong></th>
						<th><strong>Style</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ sessionScope.listCategoryClass}">
						<tr>
							<td><strong>${item._id }</strong><br></td>
							<td><strong>${item.name }</strong></td>
							<td><strong>${item.style }</strong></td>
							<th><a href="updateCategoryClass?id=${item._id}">Update</a></th>
							<th><a href="./deleteCategory?id=${item._id }" onclick="return confirmDelete()">Delete</a></th>
						</tr>
					</c:forEach>

				
				</tbody>
			</table>

		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>