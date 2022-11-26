<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin" style="text-align: center;">


		<form action="./uploadIntroduction" method="post">
			<input type="hidden" name="id" value="${listIntroductionPost[0]._id}">
			<div class="form-group">
				<label style="float: left">Title: <span
					style="color: #FF0000">*</span></label>
				<div style="width: 100%">
					<input type="text" name="title" class="form-control"
						value="${listIntroductionPost[0].title }">
				</div>
			</div>
			<div style="box-sizing: inherit; text-align: justify;">
				<span style="color: rgb(255, 0, 0);"><span
					style="font-size: 14px;"><span style="box-sizing: inherit;"><span
							style="box-sizing: inherit;"><span
								style="box-sizing: inherit;"><em
									style="box-sizing: inherit;"><u
										style="box-sizing: inherit;">Giới thiệu</u></em></span></span></span></span></span>
			</div>
			<textarea name="content" rows="50"
				style="width: 100%; height: 500px; display: inline-block;">${listIntroductionPost[0].body }</textarea>
			<canvas width="1000" height="10"></canvas>

			<div id="fixedButtonAdd">
				<button value="1" name="Upload" type="submit">Upload</button>
			</div>
		</form>

	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>
