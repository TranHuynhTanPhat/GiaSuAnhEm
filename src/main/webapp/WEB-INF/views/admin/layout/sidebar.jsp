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

			<ul class="menu-links">


				<li class="nav-link"><a href="admin"> <i
						class="fa-solid fa-chart-simple icon"></i> <span
						class="text nav-text">Thống kê</span>
				</a></li>

				<li class="nav-item dropdown" id="myDropdown"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
					href="admin-introduction"><i
						class="fa-regular fa-newspaper icon"></i><span
						class="text nav-text">Quản lý bài đăng</span></a>
					<ul class="dropdown-menu dropdown dropright">
						<li class="nav-link"><a href="admin-introduction"> <i
								class="fa-solid fa-blog icon"></i> <span class="text nav-text">Giới
									thiệu</span></a></li>
						<li class="nav-link"><a href="quanlytuyendung"><i
								class="fa-solid fa-blog icon"></i> <span class="text nav-text">Tuyển
									dụng</span></a></li>
					</ul></li>

				<li class="nav-link"><a href="quanlygiasu"><i
						class="fa-solid fa-chalkboard-user icon"></i> <span
						class="text nav-text">Quản lý gia sư</span> </a></li>

				<li class="nav-link"><a href="quanlykhoahoc"><i
						class="fa-solid fa-school icon"></i> <span class="text nav-text">Quản
							lý khóa học</span> </a></li>

				<li class="nav-link"><a href="quanlyluong"> <i
						class="fa-solid fa-sack-dollar icon"></i> <span
						class="text nav-text">Quản lý lương</span>
				</a></li>

				<li class="nav-link"><a href="quanlytaikhoan"> <i
						class="fa-solid fa-users icon"></i><span class="text nav-text">Quản
							lý tài khoản</span>
				</a></li>

				<li class="nav-item dropdown" id="myDropdown"><a
					href="quanlydanhmuc" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"><i class="fa-solid fa-database icon"></i><span
						class="text nav-text">Quản lý hệ thống</span></a>
					<ul class="dropdown-menu">
						<li class="nav-link"><a href="quanlylophoc"> <i
								class="fa-solid fa-circle-info icon"></i> <span
								class="text nav-text">Quản lý lớp học</span>
						</a></li>

						<li class="nav-link"><a href="quanlymonhoc"> <i
								class="fa-solid fa-circle-info icon"></i> <span
								class="text nav-text">Quản lý môn học</span>
						</a></li>

						<li class="nav-link"><a href="quanlydanhmuc"> <i
								class="fa-solid fa-circle-info icon"></i> <span
								class="text nav-text">Quản lý danh mục</span>
						</a></li>
					</ul></li>

				<li class="nav-link"><a href="quanlylichsugiaodich"> <i
						class="fa-solid fa-file-invoice icon"></i><span
						class="text nav-text">Quản lý lịch sử giao dịch</span>
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
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
});

    </script>

