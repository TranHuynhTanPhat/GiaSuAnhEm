<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng ký</title>
<link href="<c:url value="resources/assets/css/import/register.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<script src="<c:url value="resources/assets/js/import/register.js"/>"
	type="text/javascript"></script>
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>
<body>



	<div class="login-box">
		<a href="/TrungTamGiaSu/trang-chu"><img
			src="resources/assets/images/tot_nghiep.png"></a>
		<h2>Đăng ký</h2>
		<form action="">
			<div class="user-box">
				<input type="text" name="" required="required" /> <label>Tên
					người dùng</label>
			</div>

			<div class="user-box">
				<input type="text" name="" required="required" /> <label>Tên
					tài khoản</label>
			</div>

			<div class="user-box">
				<input class="input" type="password" name="" required="required" />
				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="#fff"
					class="eye eye-close">
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />
				</svg>

				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="#fff"
					class="eye eye-open hidden">
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
				</svg>
				<label>Mật khẩu</label>
			</div>

			<div class="user-box">
				<input class="input-cf" type="password" name="" required="required" />
				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="#fff"
					class="eye eye-close-cf ">
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />
				</svg>

				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="#fff"
					class="eye eye-open-cf hidden">
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
					<path stroke-linecap="round" stroke-linejoin="round"
						d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
				</svg>
				<label>Nhập lại mật khẩu</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="user-type" required="required" /> <label>Gia
					sư</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="user-type" required="required" /> <label>Phụ
					huynh</label>
			</div>

			<button class="submit" type="submit">
				<span></span> <span></span> <span></span> <span></span> Đăng ký
			</button>
		</form>
	</div>
	<script src="resources/assets/js/import/register.js"></script>
</body>
</html>