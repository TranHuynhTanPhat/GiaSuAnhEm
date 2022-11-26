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
	</script>
	<div id="page-main-Admin">
		<div
			style="text-align: center; width: 100%; padding: 1px 10px; box-sizing: border-box">
			<form action="" method="post" name="form1" style="width: 100%">
				<div style="margin-bottom: 0 !important; boxsizing: boder-box;">

					<div class="col-3">
						<select name="chonlop" id="chonlop" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Lớp</option>
							<c:forEach var="item" items="${sessionScope.listClass }">
								<option value="${item._id }">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="chonmon" id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Môn</option>
							<c:forEach var="item" items="${sessionScope.listSubject }">
								<option value="${item._id}">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="chongioitinh" id="chongioitinh" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Giới Tính</option>
							<option value="1">Nam</option>
							<option value="2">Nữ</option>
							<option value="2">Khác</option>
						</select>
					</div>
				</div>
				<div style="margin-bottom: 0 !important">
					<div class="col-3">
						<select name="chonnguoiday" id="chonnguoiday" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Hiện là</option>
							<option value="1">Giáo viên</option>
							<option value="2">Sinh viên</option>
							<option value="3">Đã tốt nghiệp</option>
						</select>

					</div>

					<div class="col-3">
						<select name="quanhuyen" id="quanhuyen" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Quận huyện</option>
							<c:forEach var="item"
								items="${sessionScope.listCategoryDistrict }">
								<option value=${item._id }>${item.name }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<br> <br> <br> <br>
				<div id="fixedButtonSearch">
					<button value="1" name="Search" type="button">Tìm kiếm</button>
				</div>


			</form>
		</div>


		<div>
			<form action="./createTutor" method="get">
				<button value=create name="create" type="submit">Thêm gia
					sư</button>
			</form>

		</div>
		<table border="0" width="100%">
			<thead>
				<tr>
					<th><strong>Tên gia sư</strong></th>
					<th><strong>Địa chỉ</strong><br></th>
					<th><strong>Email</strong><br></th>
					<th><strong>Năm sinh</strong><br></th>
					<th><strong>Giới Tính</strong><br></th>
					<th><strong>SĐT</strong><br></th>
					<th><strong>Nghề nghiệp</strong><br></th>
					<th><strong>SĐT</strong><br></th>
					<th><strong>Trường</strong><br></th>
					<th><strong>Chuyên ngành</strong></th>
					<th><strong>Lớp dạy</strong><br></th>
					<th><strong>Các môn</strong><br></th>
					<th><strong>Khu vực</strong><br></th>
					<th><strong>Phương tiện</strong><br></th>
					<th><strong>Số buổi</strong><br></th>
					<th><strong>Thông tin khác</strong><br></th>

					<th width="5%"></th>
					<th width="5%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${ listTutor }">
					<tr>
						<td>${item.name }</td>
						<td>${item.address }</td>
						<td>${item.email }</td>

						<td>${item.birthYear }</td>
						<td>${item.gender }</td>
						<td>${item.phone }</td>
						<td>${item.isNow }</td>


						<td>${item.school }</td>
						<td>${item.department }</td>
						<td>${item.graduateYear }</td>
						<td><c:forEach var="cl" items="${item.classes }">
										${ cl.name },
									</c:forEach></td>
						<td><c:forEach var="subject" items="${item.subjects }">
										${ subject.name },
									</c:forEach></td>
						<td><c:forEach var="area" items="${item.teachAreas }">
										${ area },
									</c:forEach></td>
						<td>${item.vehicle }</td>
						<td>${item.sobuoi }</td>
						<td>${item.describe }</td>
						<th><a href="updateTutor?id=${item._id}">Update</a></th>
						<th><a href="./deleteTutor?id=${item._id }"
							onclick="return confirmDelete()">Delete</a></th>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

</div>