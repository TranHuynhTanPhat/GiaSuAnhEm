<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="line-height: 0;">
	<nav class="navbar navbar-expand-md navbar-light sticky-top">
		<div class="container-fluid">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown" id="myDropdown"><a
					class="navbar-branch nav-link dropdown-toggle" href="#"
					data-bs-toggle="dropdown"> <img
						src="resources/assets/images/icon-people.png" height="40"></a>
					<ul class="dropdown-menu">
						<c:choose>
							<c:when
								test="${sessionScope.role=='tutor' or sessionScope.role=='parent'}">
								<li class="dropdown-item"><a href="#">Thông tin cá
										nhân</a></li>

								<li class="dropdown-item"><a href="./dang-xuat">Đăng
										xuất</a></li>

							</c:when>
							<c:otherwise>
								<li class="dropdown-item"><a href="./dang-nhap">Đăng
										nhập</a></li>

							</c:otherwise>
						</c:choose>
					</ul></li>
			</ul>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="navbar-item active"><a
					href="/TrungTamGiaSu/trang-chu" class="nav-link">Trang chủ</a></li>
				<li class="navbar-item"><a href="/TrungTamGiaSu/gioi-thieu"
					class="nav-link">Giới thiệu</a></li>
				<c:choose>
					<c:when test="${sessionScope.role=='parent' }">
						<li class="nav-item dropdown" id="myDropdown"><a
							class="nav-link dropdown-toggle" href="/TrungTamGiaSu/lop-moi"
							data-bs-toggle="dropdown">Lớp mới</a>

							<ul class="dropdown-menu">
								<li class="dropdown-item"><a
									href="/TrungTamGiaSu/dang-ky-mo-lop"
									style="width: auto; padding: 10px">Đăng ký mở lớp</a></li>
								<li class="dropdown-item"><a href="#"
									style="width: auto; padding: 10px">Quy trình mở lớp</a></li>

							</ul></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link "
							href="/TrungTamGiaSu/lop-moi">Lớp mới</a>
					</c:otherwise>
				</c:choose>
				<li class="navbar-item"><a href="/TrungTamGiaSu/bang-luong"
					class="nav-link">Bảng lương</a></li>

				<c:choose>
					<c:when test="${sessionScope.role=='tutor' }">
						<li class="nav-item dropdown" id="myDropdown"><a
							class="nav-link dropdown-toggle" href="/TrungTamGiaSu/gia-su"
							data-bs-toggle="dropdown"> Gia sư </a>
							<ul class="dropdown-menu">
								<li class="dropdown-item"><a href="them-gia-su"
									style="width: auto; padding: 10px">Đăng ký làm gia sư</a></li>
								<li class="dropdown-item"><a href="quy-trinh-nhan-lop"
									style="width: auto; padding: 10px">Quy trình nhận lớp</a></li>

							</ul></li>

					</c:when>
					<c:otherwise>
						<li class="nav-item dropdown"><a class="nav-link"
							href="/TrungTamGiaSu/gia-su"> Gia sư </a>
					</c:otherwise>
				</c:choose>
				<li class="navbar-item"><a href="/TrungTamGiaSu/tuyen-dung"
					class="nav-link">Tuyển dụng</a></li>
				<li class="navbar-item"><a href="/TrungTamGiaSu/muc-phi-gia-su"
					class="nav-link">Mức phí gia sư</a></li>
				<li class="navbar-item"><a href="/TrungTamGiaSu/lien-he"
					class="nav-link">Liên hệ</a></li>
			</ul>
		</div>
	</nav>

</div>