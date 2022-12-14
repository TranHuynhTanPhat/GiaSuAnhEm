<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 sidenav ">
	<div
		class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 min-vh-100 ">
		<ul>
			<li><span>Phân loại lớp theo khối</span></li>
			<c:forEach var="item" items="${ listCategoryClass}">
				<li><a href="./lop-moi?category=${item.id }"
					title="Lớp mới theo ${item.name }">${ item.name }</a></li>
			</c:forEach>

		</ul>
		<ul>
			<li><span>Gia sư theo quận</span></li>
			<c:forEach var="item" items="${ listCategoryDistrict}">
				<li><a href="./gia-su?category=${item.id }"
					title="Gia sư theo ${item.name }">${ item.name }</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
