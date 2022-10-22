<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./resources/assets/css/bootstrap/bootstrap.min.css">
    <title>GIA SƯ ANH EM</title>
    <script type="module" src="/resources/assets/js/main.js"></script>
    <link href="<c:url value="resources/assets/css/import/header.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="resources/assets/css/import/footer.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/newclass.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/sidebar.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/style.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/wage.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/home.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/assets/css/import/tutor.css"/>" rel="stylesheet">
    <script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>" type="text/javascript"></script>
    <script src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>" type="text/javascript"></script>
    <script src="<c:url value="resources/assets/js/main.js"/>" type="text/javascript"></script>
</head>

<body>

    <div id="base-header-footer">
        <video autoplay loop muted plays-inline class="back-video" width="100%" height="auto">
            <source src="<c:url value="resources/assets/images/banner.mp4"/>" type="video/mp4">
        </video>
        <div id="menu-top">
            <div class="ddsmoothmenu" id="smoothmenu1">
                <ul>
                    <li><a href="/TrungTamGiaSu/trang-chu" >Trang chủ</a></li>
                    <li style="z-index: 100;"><a href="/TrungTamGiaSu/gioi-thieu">Giới thiệu</a></li>
                    <li style="z-index: 100;"><a href="/TrungTamGiaSu/lop-moi" >Lớp mới</a></li>
                    <li style="z-index: 100;"><a href="/TrungTamGiaSu/bang-luong">Bảng lương</a>
                    </li>
                    <li style="z-index: 100;" class="nav-giasu nav-item dropdown">
                        <a href="/TrungTamGiaSu/gia-su">Gia sư<img class="downarrowclass"></a>
                        <ul class="nav-menu dropdown-menu fade-up">
                            <li><a href="#" class="dropdown-item">Đăng ký làm gia sư</a></li>
                            <li><a href="#" class="dropdown-item">Quy trình nhận lớp</a></li>
                            <li><a href="#" class="dropdown-item">Trung tâm gia sư uy tín</a></li>
                        </ul>
                    </li>
                    <li style="z-index: 100;"><a href="/TrungTamGiaSu/tuyen-dung">Tuyển dụng</a></li>
                    <li style="z-index: 100;"><a href="/TrungTamGiaSu/muc-phi-gia-su">Mức phí gia sư</a></li>
                    <li style="background:none"><a href="/TrungTamGiaSu/lien-he">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="./resources/assets/js/bootstrap.min.js"></script>
</body>

</html>