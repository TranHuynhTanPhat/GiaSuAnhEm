<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./updateNewCource" method="post">

					<input type="hidden" name="id" value="${model._id }"> <br>
					<div class="form-group">
						<label class="col-7 control-label">Địa chỉ hiện tại: <span
							style="color: #FF0000">*</span></label> <input type="text" name="diachi"
							class="form-control" value="${model.address }">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Quận: <span
							style="color: #FF0000">*</span></label> <input type="text" name="quan"
							class="form-control" value="${model.district }">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Số buổi: <span
							style="color: #FF0000">*</span></label> <input type="text" name="sobuoi"
							class="form-control" value="${model.sobuoi }">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Thời gian: <span
							style="color: #FF0000">*</span></label> <input type="text" name="time"
							class="form-control" value="${model.time }">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7control-label">Trạng thái: <span
							style="color: #FF0000">*</span></label> <select name="trangthai"
							id="chonmon" class="form-control"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<c:forEach begin="0" end="1" varStatus="loop">
								<c:choose>
									<c:when test="${loop.index == model.status}">
										<option value="${model.status }" selected="selected">${model.status }</option>
									</c:when>
									<c:otherwise>
										<option value="${loop.index }">${loop.index }</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
					</div>
					<br> <br>
					<div class="form-group">
						<label class="col-7 control-label">Lương: <span
							style="color: #FF0000">*</span></label> <input type="text" name="luong"
							class="form-control" value="${model.salary }">
					</div>



					<br>
					<div class="form-group">
						<label class="col-7 control-label">Category: <span
							style="color: #FF0000">*</span></label>
						<table border="0" class="tablebox">
							<tbody>
								<c:forEach var="item"
									items="${sessionScope.listCategoryDistrict }">
									<c:choose>
										<c:when test="${fn:contains(model.categories, item.name)}">
											<tr>
												<td><label><input type="checkbox"
														name="category" id="category" value="${ item._id }"
														checked>${item.name}</label></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr>
												<td><label><input type="checkbox"
														name="category" id="category" value="${ item._id }">${item.name}</label></td>
											</tr>
										</c:otherwise>
									</c:choose>

								</c:forEach>
								<c:forEach var="item" items="${sessionScope.listCategoryClass }">
									<c:choose>
										<c:when test="${fn:contains(model.categories, item.name)}">
											<tr>
												<td><label><input type="checkbox"
														name="category" id="category" value="${ item._id }"
														checked>${item.name}</label></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr>
												<td><label><input type="checkbox"
														name="category" id="category" value="${ item._id }">${item.name}</label></td>
											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="form-group">
						<label class="col-7 control-label">Môn dạy: <span
							style="color: #FF0000">*</span></label>
						<table border="0" class="tablebox">
							<tbody>
								<c:forEach var="item" items="${sessionScope.listSubject }">
									<c:choose>
										<c:when test="${fn:contains(model.subjects, item.name)}">
											<tr>
												<td><label><input type="checkbox" name="monhoc"
														id="monhoc" value="${ item._id }" checked>${item.name}</label></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr>
												<td><label><input type="checkbox" name="monhoc"
														id="monhoc" value="${ item._id }">${item.name}</label></td>
											</tr>
										</c:otherwise>
									</c:choose>

								</c:forEach>
							</tbody>
						</table>
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Lớp dạy: <span
							style="color: #FF0000">*</span></label>
						<table border="0" class="tablebox">
							<tbody>
								<c:forEach var="item" items="${ sessionScope.listClass}">
									<c:choose>
										<c:when test="${fn:contains(model.classes, item.name)}">
											<tr>
												<td><label><input type="checkbox" name="lophoc"
														id="lophoc" value="${ item._id }" checked>${item.name}</label></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr>
												<td><label><input type="checkbox" name="lophoc"
														id="lophoc" value="${ item._id }">${item.name}</label></td>
											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</tbody>
						</table>
					</div>



					<br>
					<div class="form-group">
						<label class="col-7 control-label">Yêu cầu khác: <span
							style="color: #FF0000">*</span></label> <input type="text"
							name="yeucaukhac" class="form-control" value="${model.require }">
					</div>
					<br>
					<div class="form-group">
						<label class="col-7 control-label">Liên hệ: <span
							style="color: #FF0000">*</span></label> <input type="text" name="lienhe"
							class="form-control" value="${model.contact }">

					</div>
					<br>

					<div class="form-group">
						<div class="col-11">
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

