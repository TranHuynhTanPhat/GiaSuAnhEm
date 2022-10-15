<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ISMART STORE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="resources/assets/css/bootstrap/bootstrap-theme.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/css/bootstrap/bootstrap.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/reset.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/css/carousel/owl.carousel.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/css/carousel/owl.theme.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/style.css"/>" type="text/css"/>
        <link href="<c:url value="resources/assets/responsive.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="resources/assets/css/import/header.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/fonts.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/global.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/footer.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/home.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/category_product.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/blog.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/detail_product.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/detail_blog.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/cart.css"/>" rel="stylesheet">
        <link href="<c:url value="resources/assets/css/import/checkout.css"/>" rel="stylesheet">
        
        
        
        <script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>" type="text/javascript"></script>
        <script src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="resources/assets/js/main.js"/>" type="text/javascript"></script>
    </head>

    <body>
        <div id="site">
            <div id="container">
                <div id="header-wp">
                    <div id="head-top" class="clearfix">
                        <div class="wp-inner">
                            <a href="" title="" id="payment-link" class="fl-left">Hình thức thanh toán</a>
                            <div id="main-menu-wp" class="fl-right">
                                <ul id="main-menu" class="clearfix">
                                    <li>
                                        <a href="?page=home" title="">Trang chủ</a>
                                    </li> 
                                    <li>
                                        <a href="?page=category_product" title="">Sản phẩm</a>
                                    </li>
                                    <li>
                                        <a href="?page=blog" title="">Blog</a>
                                    </li>
                                    <li>
                                        <a href="?page=detail_blog" title="">Giới thiệu</a>
                                    </li>
                                    <li>
                                        <a href="?page=detail_blog" title="">Liên hệ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="head-body" class="clearfix">
                        <div class="wp-inner">
                            <a href="?page=home" title="" id="logo" class="fl-left"><img src="resources/assets/images/logo.png"/></a>
                            <div id="search-wp" class="fl-left">
                                <form method="POST" action="">
                                    <input type="text" name="s" id="s" placeholder="Nhập từ khóa tìm kiếm tại đây!">
                                    <button type="submit" id="sm-s">Tìm kiếm</button>
                                </form>
                            </div>
                            <div id="action-wp" class="fl-right">
                                <div id="advisory-wp" class="fl-left">
                                    <span class="title">Tư vấn</span>
                                    <span class="phone">0987.654.321</span>
                                </div>
                                <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                <a href="?page=cart" title="giỏ hàng" id="cart-respon-wp" class="fl-right">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span id="num">2</span>
                                </a>
                                <div id="cart-wp" class="fl-right">
                                    <div id="btn-cart">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        <span id="num">2</span>
                                    </div>
                                    <div id="dropdown">
                                        <p class="desc">Có <span>2 sản phẩm</span> trong giỏ hàng</p>
                                        <ul class="list-cart">
                                            <li class="clearfix">
                                                <a href="" title="" class="thumb fl-left">
                                                    <img src="resources/assets/images/img-pro-11.png" alt="">
                                                </a>
                                                <div class="info fl-right">
                                                    <a href="" title="" class="product-name">Sony Express X6</a>
                                                    <p class="price">6.250.000đ</p>
                                                    <p class="qty">Số lượng: <span>1</span></p>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <a href="" title="" class="thumb fl-left">
                                                    <img src="resources/assets/images/img-pro-23.png" alt="">
                                                </a>
                                                <div class="info fl-right">
                                                    <a href="" title="" class="product-name">Laptop Lenovo 10</a>
                                                    <p class="price">16.250.000đ</p>
                                                    <p class="qty">Số lượng: <span>1</span></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="total-price clearfix">
                                            <p class="title fl-left">Tổng:</p>
                                            <p class="price fl-right">18.500.000đ</p>
                                        </div>
                                        <dic class="action-cart clearfix">
                                            <a href="?page=cart" title="Giỏ hàng" class="view-cart fl-left">Giỏ hàng</a>
                                            <a href="?page=checkout" title="Thanh toán" class="checkout fl-right">Thanh toán</a>
                                        </dic>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>