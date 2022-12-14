<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang quản lý tuyển dụng</title>
<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->

<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">

<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<script type="text/javascript">
		function confirmDelete() {
			var result = confirm("Bạn chắc chưa?");
			if (result) {
				return true;
			} else
				return false;
		}
		
		function getPage(page){
			return ""
		}
	</script>
	<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
	<section class="home">
		<div class="row">
			<div class="container-fluid">
				<!-- Page Heading -->
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4 title">
					<strong>Quản lý tuyển dụng</strong>
				</div>
				<div style="text-align: center;">
					<table width="100%" class="table mb-0 bg-white"
						style="text-align: left; float: left;">
						<thead class="bg-white">
							<tr>
								<th scope="col">Tiêu đề</th>
								<th scope="col">Nội dung</th>
								<th scope="col" width="2%"></th>
								<th scope="col" width="2%"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="item" items="${ listRecruitPost }">
								<tr>
									<td scope="col">${item.title }</td>
									<td>${item.body }</td>
									<th><a href="./updateRecruitment?id=${item.id}"><i
											class="fa-regular fa-pen-to-square text-warning icon"></i></a></th>
									<th><a href="./deleteRecruitment?id=${item.id }"
										onclick="return confirmDelete()"><i
											class="fa-solid fa-trash text-danger icon"></i></a></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
				<div id="num-order-wp" style="float:right">
					<a title="" href="quanlytuyendung?page=${ page - 1 }" id="minus"><i class="fa fa-minus"></i></a>
					<input style="width: 30px;"type="button" value="${page}" id="num-order"> 
					<c:if test="${listRecruitPost.size() == pagesize }">
						<a title="" href="quanlytuyendung?page=${ page + 1 }" id="plus"><i class="fa fa-plus"></i></a>
					</c:if>
				</div>
			<div class="row">
				<div class="container-fluid">
					<div id="page-main-Admin"
						style="text-align: center; margin-bottom: 10px; margin-top: 100px">
						<form action="./createRecruitment" method="post">
							<div class="form-group">
								<label style="float: left"><strong>Tiêu đề:</strong> </label>
								<div class="col-7" style="width: 100%">
									<input type="text" name="title" class="form-control"
										style="border: 2px solid #001c44;" value=""> <input
										type="hidden" name="image" class="form-control"
										style="border: 2px solid #001c44;" value="">
								</div>
							</div>

							<div class="form-group">
								<label style="float: left"><strong>Nội dung: </strong></label>

								<textarea name="content" rows="50"
									style="width: 100%; height: 500px; display: inline-block; border: 2px solid #001c44; border-radius: 5px; padding: 10px">${listIntroductionPost[0].body }</textarea>
							</div>
							<canvas width="1000" height="10"></canvas>

							<div id="fixedButtonAdd">
								<button class="btn btn-primary btn-block mb-4" type="submit">
									<i class="fa-solid fa-plus icon"></i> Thêm tin
								</button>
							</div>


						</form>
					</div>
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</section>
</body>