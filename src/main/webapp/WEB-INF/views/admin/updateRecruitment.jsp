<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./updateRecruitment" method="post" n>
					<input type="hidden" name="id" value="${recruitPost._id }">
					<div>
						<div style="box-sizing: inherit; text-align: justify;">
							<span style="color: rgb(255, 0, 0);"><span
								style="font-size: 14px;"><span
									style="box-sizing: inherit;"><span
										style="box-sizing: inherit;"><span
											style="box-sizing: inherit;"><em
												style="box-sizing: inherit;"><u
													style="box-sizing: inherit;">Tuyển dụng</u></em></span></span></span></span></span>
						</div>
						<div class="form-group">
							<label style="float: left">Title: <span
								style="color: #FF0000">*</span></label>
							<div class="col-7" style="width: 100%">
								<input type="text" name="title" class="form-control"
									value="${recruitPost.title }">
							</div>
						</div>

						<div class="form-group">
							<label style="float: left">Content: <span
								style="color: #FF0000">*</span></label>

						</div>
						<textarea name="content" rows="50"
							style="width: 100%; height: 500px; display: inline-block;">${recruitPost.body }</textarea>
						<canvas width="1000" height="10"></canvas>

						<div id="fixedButtonAdd">
							<button value="1" name="add" type="submit">Update</button>
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

