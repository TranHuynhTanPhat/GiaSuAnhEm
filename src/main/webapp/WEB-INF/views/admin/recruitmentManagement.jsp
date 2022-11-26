<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin" style="text-align: center;">
		<script type="text/javascript">
			function confirmDelete() {
				var result = confirm("Bạn chắc chưa?");
				if (result) {
					return true;
				} else
					return false;
			}
		</script>


		<form action="./createRecruitment" method="post">

			<table border="0" width="100%">
				<thead>
					<tr>
						<th><strong>Title</strong></th>
						<th><strong>Content</strong></th>
						<th width="5%"></th>
						<th width="5%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ listRecruitPost }">
						<tr>
							<td>${item.title }</td>
							<td>${item.body }</td>
							<th><a href="./updateRecruitment?id=${item._id}">Update</a></th>
							<th><a href="./deleteRecruitment?id=${item._id }"
								onclick="return confirmDelete()">Delete</a></th>
						</tr>
					</c:forEach>


				</tbody>
			</table>
			<hr>

			<div>
				<div style="box-sizing: inherit; text-align: justify;">
					<span style="color: rgb(255, 0, 0);"><span
						style="font-size: 14px;"><span style="box-sizing: inherit;"><span
								style="box-sizing: inherit;"><span
									style="box-sizing: inherit;"><em
										style="box-sizing: inherit;"><u
											style="box-sizing: inherit;">Tuyển dụng</u></em></span></span></span></span></span>
				</div>
				<div class="form-group">
					<label style="float: left">Title: <span
						style="color: #FF0000">*</span></label>
					<div class="col-7" style="width: 100%">
						<input type="text" name="title" class="form-control" value="">
					</div>
				</div>

				<div class="form-group">
					<label style="float: left">Content: <span
						style="color: #FF0000">*</span></label>

				</div>
				<textarea name="content" rows="50"
					style="width: 100%; height: 500px; display: inline-block;">${listIntroductionPost[0].body }</textarea>
				<canvas width="1000" height="10"></canvas>

				<div id="fixedButtonAdd">
					<button value="1" name="add" type="submit">Thêm</button>
				</div>
			</div>

		</form>

		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>

