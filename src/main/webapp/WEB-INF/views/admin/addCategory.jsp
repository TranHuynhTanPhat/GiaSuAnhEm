<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>

	<div style="width: 100%">
		<div class="panel">

			<div class="panel-body" style="padding: 5px 10px">
				<form action="./addCategory" method="post">


					<br> <label class="col-4 control-label">Name: <span
						style="color: #FF0000">*</span></label> <input type="text"
						name="CategoryName" class="form-control" value=""> <br>
					<label class="col-4 control-label">Style: <span
						style="color: #FF0000">*</span></label> <input type="text" name="style"
						class="form-control" value=""> <br> <label
						class="col-4 control-label"></label> <input name="register"
						type="submit" class="input_button" value="Đăng ký">
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>

