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
<title>Trang liên hệ</title>

<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/newclass.css"/>"
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
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>


<body>
	<%@include file="/WEB-INF/views/users/layout/header.jsp"%>
	<div class="container-fluid" style="margin-top: 60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/users/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">THÔNG
						TIN LIÊN HỆ</span>
				</div>
				<div class="content-temp" style="width: 100%;">
					<div class="row" style="margin-top: 10px">
						<h2>
							<a href="https://www.facebook.com/tranhuynhtanphat.852" target="_blank"><i
								class="fa-brands fa-facebook" ></i> Trần Huỳnh Tấn Phát</a>
						</h2>
					</div>
					<div class="row" style="margin-top: 10px">
						<h2>
							<a href="https://www.facebook.com/mch1en" target="_blank"><i
								class="fa-brands fa-facebook"></i> Nguyễn Minh Chiến</a>
						</h2>
					</div>
					<div class="row" style="margin-top: 10px">
						<h2>
							<a href="https://www.facebook.com/phamtrungnghia23" target="_blank"><i
								class="fa-brands fa-facebook"></i> Phạm Trung Nghĩa</a>
						</h2>
					</div>
					<div class="row" style="margin-top: 10px">
						<h2>
							<a href="https://www.facebook.com/haidang210202" target="_blank"><i
								class="fa-brands fa-facebook"></i> Mai Hải Đăng</a>
						</h2>
					</div>

				</div>
			</div>
		</div>

		<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>
	</div>

</body>
<!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "108568898772191");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v15.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
</html>
