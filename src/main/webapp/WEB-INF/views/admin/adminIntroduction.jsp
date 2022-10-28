<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%>
        <script type="text/javascript" src="%=request.getContextPath()%>/common/script/ckeditor/ckeditor.js"></script>
<form:textarea path="body" maxlength="5000" />    
<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">

		<div id="main-content-wp" class="add-cat-page">
			<div class="wrap clearfix">
				<div id="content" class="fl-right">
					<div class="section" id="title-page">
						<div class="clearfix">
							<h3 id="index" class="fl-left">Chỉnh sửa trang giới thiệu</h3>
						</div>
					</div>
					<div class="section" id="detail-page">
						<div class="section-detail">
							<form method="POST">
								<label for="desc">Mô tả</label>
								<textarea name="desc" id="desc" class="ckeditor"></textarea>

								<button type="submit" name="btn-submit" id="btn-submit">Thêm
									mới</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>
