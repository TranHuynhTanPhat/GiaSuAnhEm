<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./updateSalary" method="post">

					<input type="hidden" name="id" value="${model._id }" /> <br>
					<div class="form-group" style="float: left">
						<label class="col-11 control-label">Khối lớp: <span
							style="color: #FF0000">*</span></label>
						<div style="width: 180px">
							<select name="grade" id="typeTeacher" class="form-control"
								style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
								<option value="${model.grade }]">${model.grade }</option>
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
							<select name="styleTeacher" id="styleTeacher"
								class="form-control"
								style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
								<c:choose>
									<c:when test="${model.styleTeacher == 0.0}">
										<option value="${model.styleTeacher}" selected="selected">Sinh
											viên</option>
									</c:when>
									<c:otherwise>
										<option value="${model.styleTeacher}">Sinh viên</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${model.styleTeacher == 1.0}">
										<option value="${model.styleTeacher}" selected="selected">Giáo
											viên</option>
									</c:when>
									<c:otherwise>
										<option value="${model.styleTeacher}">Giáo viên</option>
									</c:otherwise>
								</c:choose>

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
								value="${model.twoSessions }">
						</div>
					</div>

					<div class="form-group" style="float: right">
						<label class="col-11 control-label">3 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="threesession" class="form-control"
								value="${model.threeSessions }">
						</div>
					</div>
					<br>
					<div class="form-group" style="float: left">
						<label class="col-11 control-label">4 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="foursession" class="form-control"
								value="${model.fourSessions }">
						</div>
					</div>
					<div class="form-group" style="float: right">
						<label class="col-11 control-label">5 buổi/tuần: <span
							style="color: #FF0000">*</span></label>
						<div class="col-11">
							<input type="text" name="fivesession" class="form-control"
								value="${model.fiveSessions }">
						</div>
					</div>

					<div class="form-group">
						<label class="col-4 control-label"></label>
						<div class="col-7">
							<input name="update" type="submit" class="input_button"
								value="Cập nhật">
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

