<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
	<table>
		<tr>
			<td id="td-top"><%@include
					file="/WEB-INF/views/layout/sidebar.jsp"%></td>
			<td id="td-top">
				<%@include file="/WEB-INF/views/layout/formAddTutor.jsp"%>
			</td>
		</tr>
	</table>

	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</div>

