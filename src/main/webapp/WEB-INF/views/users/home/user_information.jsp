<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thông tin người dùng</title>
<link
	href="<c:url value="resources/assets/css/import/user_information.css"/>"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
</head>

<body>
	<div class="content-wrapper">
		<div class="content">
			<div class="signup-wrapper shadow-box">
				<div class="company-details ">

					<div class="shadow"></div>
					<div class="wrapper-1">

						<h1 class="title">giasuanhem</h1>
						<div class="slogan">Trung Tâm gia sư</div>
					</div>

				</div>
				<div class="signup-form ">
					<div class="wrapper-2">
						<div class="form-title">Thông tin tài khoản</div>
						<div class="form">
							<form action="#">
								<p class="content-item">
									<label>Tên tài khoản </label> <label class="content">nghia</label>
								</p>

								<p class="content-item">
									<label>Email </label> <label class="content">trungnghiaazd@gmail.com</label>
								</p>

								<p class="content-item password disable">

									<label>Mật khẩu </label> <input class="content input-password "
										type="password" value="****" name="psw" required>
									<svg xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
										class="edit">
                                        <path stroke-linecap="round"
											stroke-linejoin="round"
											d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10" />
                                    </svg>
									<small></small> <span></span>

								</p>

								<p class="content-item open-cfpassword hidden">
									<label>Nhập lại mật khẩu </label> <input
										class="content input-cfpassword" type="password" value=""
										name="cfpsw"> <small></small> <span></span>
								</p>


								<button type="submit" class="save">Lưu thay đổi</button>
							</form>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>



	<script src="resources/assets/js/import/user_information.js"></script>
</body>

</html>