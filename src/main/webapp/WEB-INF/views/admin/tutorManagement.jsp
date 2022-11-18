<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<script type="text/javascript">
	function testConfirmDialog(){
		var result=confirm("Bạn chắc chắn muốn xóa ?");
		
		if(result){
		window.location.href="quanlygiasu";
		}else{
		return false;
		}
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
							<c:forEach var="item" items="${listClass }">
								<option value="${item._id }">${item.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-3">
						<select name="chonmon" id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="">Chọn Môn</option>
							<c:forEach var="item" items="${listSubject }">
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
							<c:forEach var="item" items="${listQuan }">
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
			<form action="createTutor" method="get">
				<button value=create name="create" type="submit">Thêm gia
					sư</button>
			</form>
			<form action="./quanlygiasu" method="post">
				<a href="./updatetutor">
					<button value="update" name="update" type="submit">Cập
						nhật</button>
				</a> <a href="./quanlygiasu">
					<button value="delete" name="delete" id="xoa" onclick="testConfirmDialog()">Xóa</button>
				</a>
		</div>
		<table border="0" width="100%">
			<tbody>
				<tr>
					<td width="2%"><br></td>
					<td><strong>MS</strong><br></td>
					<td><strong>Tên gia sư</strong></td>
					<td><strong>Địa chỉ</strong><br></td>
					<td><strong>Email</strong><br></td>
					<td><strong>Năm sinh</strong><br></td>
					<td><strong>Giới Tính</strong><br></td>
					<td><strong>SĐT</strong><br></td>
					<td><strong>Nghề nghiệp</strong><br></td>
					<td><strong>SĐT</strong><br></td>
					<td><strong>Trường</strong><br></td>
					<td><strong>Chuyên ngành</strong></td>
					<td><strong>Lớp dạy</strong><br></td>
					<td><strong>Các môn</strong><br></td>
					<td><strong>Khu vực</strong><br></td>
					<td><strong>Phương tiện</strong><br></td>
					<td><strong>Số buổi</strong><br></td>
					<td><strong>Thông tin khác</strong><br></td>
				</tr>
				<c:forEach var="item" items="${ listTutor }">
					<tr>
						<td width="2%"><input type="checkbox" class="action"
							name="remove_tutor" value=${item._id }></td>
						<td>${item._id }</td>
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
</div>
<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>

</div>