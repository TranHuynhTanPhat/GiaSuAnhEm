<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin" style="text-align: center;">

		<script
			src="https://cdn.ckeditor.com/ckeditor5/35.2.1/decoupled-document/ckeditor.js"></script>

		<div class="group-button" style="text-align: left">

			<form action="#" method="post">
				<button name="update" type="submit">Cập nhật</button>
			</form>

			<button value="1" name="delete" id="xoa" type="button">Xóa</button>
		</div>
		<form>

			<table border="0" width="100%">
				<tbody>
					<tr>
						<td width="2%"><br></td>
						<td><strong>MS</strong><br></td>
						<td><strong>Title</strong></td>
						<td><strong>Content</strong><br></td>
					</tr>
					<c:forEach var="item" items="${ listRecruitPost }">
						<tr>
							<td width="2%"><input type="checkbox" class="action"
								name="remove_tutor" value=${item._id }></td>
							<td>${item._id }</td>
							<td>${item.title }</td>
							<td>${item.body }</td>
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
			<hr>

			<div>
				<div style="box-sizing: inherit; text-align: justify;">
					<span style="color: rgb(255, 0, 0);"><span
						style="font-size: 14px;"><span style="box-sizing: inherit;"><span
								style="box-sizing: inherit;"><span
									style="box-sizing: inherit;"><em
										style="box-sizing: inherit;"><u
											style="box-sizing: inherit;">Tuyển dụng</u></em></span></span></span></span></span>
				</div>
				<div class="form-group">
					<label style="float: left">Title: <span
						style="color: #FF0000">*</span></label>
					<div class="col-7" style="width: 100%">
						<input type="text" name="title" class="form-control" value="">
					</div>
				</div>

				<div class="form-group">
					<label style="float: left">Content: <span
						style="color: #FF0000">*</span></label>

				</div>
				<br>
				<!-- The toolbar will be rendered in this container. -->
				<div id="toolbar-container" style="border: 2px solid #0c5776;"></div>

				<!-- This container will become the editable. -->
				<div id="editor"
					style="width: 100%; height: 500px; border: 2px solid #0c5776;">
					<p>This is the initial editor content.</p>
				</div>

				<script>
        DecoupledEditor
            .create( document.querySelector( '#editor' ) )
            .then( editor => {
                const toolbarContainer = document.querySelector( '#toolbar-container' );

                toolbarContainer.appendChild( editor.ui.view.toolbar.element );
            } )
            .catch( error => {
                console.error( error );
            } );
    </script>
				<div id="fixedButtonAdd">
					<button value="1" name="add" type="button">Thêm</button>
				</div>
			</div>

		</form>

		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
</div>

