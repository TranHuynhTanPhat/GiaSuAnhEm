<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<div id="page-main-Admin">

		<script
			src="https://cdn.ckeditor.com/ckeditor5/35.2.1/decoupled-document/ckeditor.js"></script>

		<form>
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
				<button value="1" name="Upload" type="button">Upload</button>
			</div>
		</form>
	</div>
	<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
</div>
