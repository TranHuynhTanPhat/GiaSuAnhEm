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
								test="${(sessionScope.role=='tutor' or sessionScope.role=='parent') and sessionScope.state==1}">
								<li class="dropdown-item"><a href="./thong-tin-ca-nhan">Thông
										tin cá nhân</a></li>

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
				<li class="navbar-item active"><a href="./trang-chu"
					class="nav-link">Trang chủ</a></li>
				<li class="navbar-item"><a href="./gioi-thieu" class="nav-link">Giới
						thiệu</a></li>
				<c:choose>
					<c:when test="${sessionScope.role=='parent' and sessionScope.state==1}">
						<li class="nav-item dropdown" id="myDropdown"><a
							class="nav-link dropdown-toggle" href="./lop-moi"
							data-bs-toggle="dropdown">Lớp mới</a>

							<ul class="dropdown-menu">
								<li class="dropdown-item"><a href="./dang-ky-mo-lop"
									style="width: auto; padding: 10px">Đăng ký mở lớp</a></li>
							</ul></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link " href="./lop-moi">Lớp
								mới</a>
					</c:otherwise>
				</c:choose>
				<li class="navbar-item"><a href="./bang-luong" class="nav-link">Bảng
						lương</a></li>

				<c:choose>
					<c:when test="${sessionScope.role=='tutor' and sessionScope.state==1}">
						<li class="nav-item dropdown" id="myDropdown"><a
							class="nav-link dropdown-toggle" href="./gia-su"
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
							href="./gia-su"> Gia sư </a>
					</c:otherwise>
				</c:choose>
				<li class="navbar-item"><a href="./tuyen-dung" class="nav-link">Tuyển
						dụng</a></li>
				<li class="navbar-item"><a href="./muc-phi-gia-su"
					class="nav-link">Mức phí gia sư</a></li>
				<li class="navbar-item"><a href="./lien-he" class="nav-link">Liên
						hệ</a></li>
			</ul>
		</div>
	</nav>

</div>