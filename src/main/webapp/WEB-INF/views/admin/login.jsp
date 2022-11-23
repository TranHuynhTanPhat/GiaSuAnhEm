<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="wrapperAdmin">
	<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<div id="Custome-div">
	<div color="black">${sessionScope.errorMessage}</div>
		<form id="Customer-form" action="./login" method="post" >
			<div>
				<div id="Textbox">
					<input type="text" name="username" id="username"
						placeholder="Tên đăng nhập" autofocus="1"
						aria-label="Tên đăng nhập">
				</div>
				<div id="Textbox">
					<input type="password" name="password" id="password"
						placeholder="Mật khẩu" aria-label="Mật khẩu">
				</div>
			</div>
			<div id="Button">
				<button value="login" name="login" type="submit">Đăng nhập</button>
			</div>
		</form>
	</div>
</div>
