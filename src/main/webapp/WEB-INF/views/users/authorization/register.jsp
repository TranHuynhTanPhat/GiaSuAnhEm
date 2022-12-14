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
		<form action="dang-ky" method="post">


			<div class="user-box">
				<input type="text" name="username" required="required" /> <label>Tên
					tài khoản</label>
			</div>

			<div class="user-box">
				<input type="text" name="email" required="required" /> <label>Email</label>
			</div>

			<div class="user-box">
				<input class="input" type="password" name="password"
					required="required" /> <label>Mật khẩu</label>
			</div>

			<div class="user-box">
				<input class="input-cf" type="password" name="" required="required" />

				<label>Nhập lại mật khẩu</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="role" required="required" value="1" /> <label>Gia
					sư</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="role" required="required" value="2" /> <label>Phụ
					huynh</label>
			</div>

			<button class="submit" type="submit">
				<span></span> <span></span> <span></span> <span></span> Đăng ký
			</button>
		</form>
	</div>
</body>
</html>