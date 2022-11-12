<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapper">
	<%@include file = "/WEB-INF/views/layout/header.jsp" %>
	<table>
		<tr>
			<td id="td-top"><%@include file="/WEB-INF/views/layout/sidebar.jsp"%></td>
			<td id="td-top">
	<div id="page-main">
	    <div class="title">
	        <span class="icon-graduation"></span>
	        <span class="menu-ngang">GIA SƯ</span>	
	    </div>
	<div class="content-temp">
	<c:forEach var="item" items="${ listPost }">
		<div class="tin-tuc-item">
	        <a title="Giáo dục sớm – Chơi một cách khoa học với con trẻ."
	            href="/giao-duc-som-–-choi-mot-cach-khoa-hoc-voi-con-tre..html"><img
	                alt="Giáo dục sớm – Chơi một cách khoa học với con trẻ."
	                src="../upload/hinhanh/thumb/giao-duc-som-–-choi-mot-cach-khoa-hoc-voi-con-tre.253.jpg"></a>
	        <h2><a title="Giáo dục sớm – Chơi một cách khoa học với con trẻ."
	                href="/giao-duc-som-–-choi-mot-cach-khoa-hoc-voi-con-tre..html"> ${ item.title }</a></h2>
	        <p>${ item.body }</p>
	    </div>
	</c:forEach>
	    
	
	    
	    <div class="page">Đầu | 1 | <a href="page-2-gia-su.html">2</a> | <a href="page-3-gia-su.html">3</a> | <a
	            href="page-3-gia-su.html">Cuối</a> </div>
	</div>
	</div>
	</td>
	</tr>
	</table>
	
	<%@include file = "/WEB-INF/views/layout/footer.jsp" %>
</div>

