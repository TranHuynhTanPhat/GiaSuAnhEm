<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<nav class="sidebar close">
	<header>
		<div class="image-text">
			<span class="image"> <img
				src="resources/assets/images/icon.png" alt="">
			</span>

			<div class="text logo-text">
				<span class="name">ADMIN</span> <span class="profession">Quản
					lý trung tâm gia sư</span>
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

