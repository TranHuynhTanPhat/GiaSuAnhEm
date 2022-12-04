<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!----======== CSS ======== -->
<link rel="stylesheet" href="style.css">

<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>GIA SƯ ANH EM</title>
<script type="module" src="/resources/assets/js/main.js"></script>
<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/newclass.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/sidebar.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/style.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/editor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/wage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/dashboard.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/import/admin/login.css"/>"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">


<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
<body>
	<nav class="sidebar close">
		<header>
			<div class="image-text">
				<span class="image"> <img
					src="resources/assets/images/icon.png" alt="">
				</span>

				<div class="text logo-text">
					<span class="name">ADMIN</span> <span class="profession">Quản
						lý gia sư</span>
				</div>
			</div>

			<i class='bx bx-chevron-right toggle'></i>
		</header>

		<div class="menu-bar">
			<div class="menu">
				<!-- <div id="sidebarAdmin">
	<ul class="danhmucAdmin">
		<h3>
			<a href="admin" title="Thống kê"><span
				class="jsn-moduleiconAdmin">ADMIN</span></a>
		</h3>
		<li><a href="admin" title="Thống kê">Thống kê</a></li>
		<li><a href="admin-introduction" title="Giới thiệu">Giới
				thiệu</a></li>
		<li><a href="quanlygiasu" title="Quản lý gia sư">Quản lý gia
				sư</a></li>
		<li><a href="quanlykhoahoc" title="Quản lý khóa học">Quản lý
				khóa học</a></li>
		<li><a href="quanlyluong" title="Quản lý bảng lương">Quản lý
				bảng lương</a></li>
		<li><a href="quanlytuyendung" title="Tuyển dụng">Tuyển dụng</a></li>

		<li><a href="quanlylophoc" title="Quản lý lớp học">Quản lý
				lớp học</a></li>
		<li><a href="quanlymonhoc" title="Quản lý môn học">Quản lý
				môn học</a></li>
		<li><a href="quanlydanhmuc" title="Quản lý danh mục">Quản lý
				danh mục</a></li>

		<li><form action="./logout" method="GET">
				<div id="Button ">
					<button value="logout" type="submit">Đăng xuất</button>
				</div>
			</form></li>
	</ul>
</div> -->

				<ul class="menu-links">
					<li class="nav-link"><a href="admin"> <i
							class='bx bx-home-alt icon'></i> <span class="text nav-text">Thống
								kê</span>
					</a></li>

					<li class="nav-item dropdown" id="myDropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
							class="fa-solid fa-blog icon"></i><span class="text nav-text">Quản
								lý bài đăng</span></a>
						<ul class="dropdown-menu">
							<li class="nav-link"><a href="admin-introduction"> <i
									class="fa-regular fa-pen-to-square icon"></i> <span
									class="text nav-text">Giới thiệu</span></a></li>
							<li class="nav-link"><a href="quanlytuyendung"><i
									class="fa-regular fa-pen-to-square icon"></i> <span
									class="text nav-text">Tuyển dụng</span></a></li>
						</ul></li>

					<li class="nav-link"><a href="quanlygiasu"><i
							class="fa-solid fa-chalkboard-user icon"></i> <span
							class="text nav-text">Quản lý gia sư</span> </a></li>

					<li class="nav-link"><a href="quanlykhoahoc"><i
							class="fa-solid fa-school icon"></i> <span class="text nav-text">Quản
								lý khóa học</span> </a></li>

					<li class="nav-link"><a href="quanlyluong"> <i
							class="fa-solid fa-hand-holding-dollar icon"></i> <span
							class="text nav-text">Quản ly lương</span>
					</a></li>

					<li class="nav-link"><a href="#"> <i
							class="fa-solid fa-users icon"></i><span class="text nav-text">Quản
								lý tài khoản</span>
					</a></li>

					<li class="nav-item dropdown" id="myDropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
							class="fa-solid fa-book icon"></i><span class="text nav-text">Quản
								lý hệ thống</span></a>
						<ul class="dropdown-menu">
							<li class="nav-link"><a href="#"> <i
									class="fa-regular fa-pen-to-square icon"></i> <span
									class="text nav-text">Quản lý lớp học</span>
							</a></li>

							<li class="nav-link"><a href="#"> <i
									class="fa-regular fa-pen-to-square icon"></i> <span
									class="text nav-text">Quản lý môn học</span>
							</a></li>
						</ul></li>

					<li class="nav-link"><a href="#"> <i
							class="fa-solid fa-receipt icon"></i><span class="text nav-text">Quản
								lý lịch sử giao dịch</span>
					</a></li>


				</ul>
			</div>

			<div class="bottom-content">
				<li class=""><a href="./logout"> <i
						class='bx bx-log-out icon'></i> <span class="text nav-text">Đăng
							xuất</span>
				</a></li>



			</div>
		</div>

	</nav>


	<script>
        const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      searchBtn = body.querySelector(".search-box"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
    sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
    body.classList.toggle("dark");
    
    if(body.classList.contains("dark")){
        modeText.innerText = "Light mode";
    }else{
        modeText.innerText = "Dark mode";
        
    }
});
    </script>


</body>
</html>
