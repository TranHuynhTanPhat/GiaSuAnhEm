<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="${pageContext.request.contextPath }/addSalary" method="post">


					<br>
					<div class="form-group" style="float: left">
						<label class="col-11 control-label">Khối lớp: <span
							style="color: #FF0000">*</span></label>
						<div style="width: 180px">
							<select name="grade" id="typeTeacher" class="form-control"
								style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
								<option value="Chọn khối">Chọn khối</option>
								<c:forEach var="item" items="${sessionScope.listCategoryClass }">
									<option value="${item.name }">${item.name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group" style="float: right">
						<label class="col-11 control-label">Giáo viên:<span
							style="color: #FF0000">*</span></label>
						<div style="width: 180px">
							<select name="styleTeacher" id="typeTeacher" class="form-control"
								style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
								<option value="1">Chọn giáo viên</option>
								<option value="1">Giáo viên</option>
								<option value="0">Sinh viên</option>
							</select>
						</div>

					</div>
					<div class="form-group">
						<label class="col-11 control-label">Lương<span
							style="color: #FF0000">*</span></label>
					</div>
					<div class="form-group" style="float: left">
						<label class="col-11 control-label">2 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="twosession" class="form-control"
								value="">
						</div>
					</div>

					<div class="form-group" style="float: right">
						<label class="col-11 control-label">3 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="threesession" class="form-control"
								value="">
						</div>
					</div>
					<br>
					<div class="form-group" style="float: left">
						<label class="col-11 control-label">4 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="foursession" class="form-control"
								value="">
						</div>
					</div>
					<div class="form-group" style="float: right">
						<label class="col-11 control-label">5 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="fivesession" class="form-control"
								value="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-11 control-label"></label>
						<div class="col-11">
							<input name="register" type="submit" class="input_button"
								value="Đăng ký">
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

