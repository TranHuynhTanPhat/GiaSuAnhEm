<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="" method="post" name="info_frm"
					class="form-horizontal" onsubmit="return check_info();"
					autocomplete="off" enctype="multipart/form-data">
					

					<br>
					<div class="form-group">
						<label class="col-4 control-label">Tên lớp: <span
							style="color: #FF0000">*</span></label>
						<div class="col-7">
							<input type="text" name="tenlop" class="form-control" value="">
						</div>
					</div>

					
					<div class="form-group">
						<label class="col-4 control-label"></label>
						<div class="col-7">
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

