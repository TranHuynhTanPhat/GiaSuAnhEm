<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng nhập</title>
<link href="<c:url value="resources/assets/css/import/loginUser.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
</head>
<body>

	<div class="login-box">
		<a href="/TrungTamGiaSu/trang-chu"><img
			src="resources/assets/images/tot_nghiep.png"></a>

		<h2>Đăng nhập</h2>
		<form action="dang-nhap" method="post">
			<div class="user-box" style="margin-top: 5px; margin-bottom: 15px;">
				<span class="text" style="color: red"><strong>${sessionScope.errorMessage}</strong></span>
			</div>
			<div class="user-box">
				<input type="text" name="username" required="required" /> <label>Tên
					tài khoản</label>
			</div>

			<div class="user-box">
				<input class="input" type="password" name="password"
					required="required" /> <label>Mật khẩu</label>
			</div>

			<button class="submit">
				<span></span> <span></span> <span></span> <span></span> Đăng nhập
			</button>
			<p class="register">
				Chưa có tài khoản? <a href="/TrungTamGiaSu/dang-ky">Đăng ký ngay</a>
			</p>
		</form>
	</div>
</body>
</html>