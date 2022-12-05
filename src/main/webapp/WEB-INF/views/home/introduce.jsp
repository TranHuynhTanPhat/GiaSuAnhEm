<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>GIỚI THIỆU</title>

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
<link href="<c:url value="resources/assets/css/import/wage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Slab:wght@200;500;800&display=swap"
	rel="stylesheet">


<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<!-- <script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script type="module" src="/resources/assets/js/main.js"></script> 
<script src="./resources/assets/js/bootstrap.min.js"></script>-->
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>

</head>

<body>
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
	<div class="container-fluid" style="margin-top:60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">GIỚI
						THIỆU GIA SƯ ANH EM</span>
				</div>

				<div class="content-temp" style="width: 100%;">
					<h1 class="title" itemprop="name">Giới thiệu gia sư Anh Em</h1>
					<h1
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 1.6em"
						align="center">
						<span style="color: #ff0000"><strong
							style="font-weight: bold; font-size: 24pt">TRUNG TÂM GIA
								SƯ ANH EM</strong></span>
					</h1>
					<h2
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 1.4em"
						align="center">
						<span style="font-size: 18pt; color: #ff0000">${listIntroductionPost[0].title }</span>
					</h2>
					<div align="left">
						<p>
							<font size="3" color="#FF0000"><strong>KHI CHỌN
									ĐƯỢC LỚP DẠY PHÙ HỢP, GIÁO VIÊN VÀ SINH VIÊN</strong></font>
						</p>
						<p>
							<font size="3" color="#FF0000"><strong>HÃY LIÊN
									HỆ SỐ ĐIỆN THOẠI: 0975897636<br>
							</strong></font>
						</p>
						<p>
							<font size="3"><strong> </strong></font><br>
						</p>
					</div>
					<h2
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 1.4em">
						<span style="color: #0000ff">${listIntroductionPost[0].body}</span>
					</h2>


					<h3
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: #cc0000; text-rendering: optimizelegibility; font-size: 24px">
						<span style="color: #ff0000">Chúng tôi chuyên:</span>
					</h3>
					<h3
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: #cc0000; text-rendering: optimizelegibility; font-size: 18px">+
						Tư vấn , hỗ trợ giáo dục</h3>
					<h3
						style="margin: 0.5em 0px; font-family: Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: #cc0000; text-rendering: optimizelegibility; font-size: 18px">+
						Dạy kèm tại nhà</h3>
					<h3
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: #cc0000; text-rendering: optimizelegibility; font-size: 18px">+
						Tư vấn du học</h3>
					<h3
						style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: #cc0000; text-rendering: optimizelegibility; font-size: 18px">
						+ Cung cấp<span
							style="text-decoration: none; outline: medium none"><strong
							style="font-weight: bold"> giáo viên giỏi</strong></span>, uy tín từ các
						quận huyện trong thành phố
					</h3>




					<hr>
					<p>
						<font size="3"><font color="#FF0000"><strong>Trung
									tâm gia sư Anh Em</strong></font></font>
					</p>
					<p>
						<font size="3">VP : THÀNH PHỐ HỒ CHÍ MINH</font>
					</p>
					<p>
						<font size="3">VP 1 : 109 TÂN LẬP 2 , P.HIỆP PHÚ, QUẬN 9<br>VP
							2 :294 HÒA HƯNG, P.13, QUẬN 10
						</font>
					</p>
					<p>
						<font size="3">VP 3 : ĐIỆN BIÊN PHỦ, P.22, Q.BÌNH THẠNH</font>
					</p>
					<p>
						<font size="3">VP 4: 453/94 NGUYỄN THỊ MINH KHAI KP 3 P,
							PHÚ HÒA BÌNH DƯƠNG(ĐỐI DIỆN TRƯỜNG TIỂU HỌC PHÚ HÒA 3)</font>
					</p>
					<p>
						<strong>VP : HÀ NỘI </strong>
					</p>
					<p>
						<strong>NGÕ 22 TÔN THẤT TÙNG ĐỐNG ĐA HÀ NỘI </strong>
					</p>
					<p>
						<font size="3">Điện Thoại : 028 3539 1819 <br>Di Động
							: 0987 927 505 - 0907 750 044- 0919 138 768 - 0972 383848<br>
							<br></font>
					</p>


					<div id="bg_sp" style="display: none;">
						<div class="homepage"
							style="border-bottom: 1px solid #e7e7e7; padding-top: 3px; margin-top: 5px;">Tin
							khác cùng chủ đề</div>
						<ul>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>
</body>

</html>
