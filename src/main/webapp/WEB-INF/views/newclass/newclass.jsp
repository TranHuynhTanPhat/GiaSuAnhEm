<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
	<script type="text/javascript">
		function insertText(x,y) {
			document.getElementById(x).innerHTML = "0";
		}
	</script>
	<table>
		<tr>
			<td id="td-top"><%@include
					file="/WEB-INF/views/layout/sidebar.jsp"%></td>
			<td id="td-top">
				<div id="page-main">
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">LỚP
							MỚI GIA SƯ ANH EM</span>
					</div>
					<div class="lop-day">
						<table border="0" width="100%">
							<tbody>
								<tr align="center">
									<td colspan="9"><strong> <font color="red"
											size="3"><u>LỚP NGÀY 21/10/2022</u></font>
									</strong> <br>
										<p>
											<b><img
												src="<c:url value="resources/assets/images/mauxanh.jpg"/>">
												Lớp chưa giao - <img
												src=<c:url value="resources/assets/images/maudo.jpg"/>>Lớp
												đã giao</b>
										</p></td>
								</tr>
								<tr>
									<td><strong>MS </strong><br></td>
									<td><strong> Lớp</strong></td>
									<td><strong>Môn học </strong><br></td>
									<td><strong>Đường Phường </strong><br></td>
									<td><strong>Quận </strong><br></td>
									<td><strong>Buổi</strong></td>
									<td><strong>Thời gian</strong></td>
									<td><strong>Lương </strong><br></td>
									<td><strong>Yêu cầu </strong><br></td>
								</tr>
								<c:forEach var="item" items="${ listNewClass }">
									<tr class="row0">
										<td>${ item.id }</td>
										<td><c:forEach var="cl" items="${item.classes }">
											${ cl.name },
										</c:forEach></td>
										<td><c:forEach var="subject" items="${item.subjects }">
											${ subject.name },
										</c:forEach></td>
										<td>${ item.address }</td>
										<td>${ item.district }<br></td>
										<td>${ item.sobuoi }</td>
										<td>${ item.time }</td>
										<td align="right" >	${item.salary}</td>
										<td>${ item.require }</td>
									</tr>
								</c:forEach>


							</tbody>
						</table>
						<p>
							<font size="2"><em><strong>Đối với Giáo
										viên, Sinh Viên: Liên hệ 0972.383848 - 0987.927.505 - 0907 750
										044 - 0919 138 768&nbsp; hoặc <a
										href="/dang-ky-lam-gia-su.html" title="Đăng ký làm gia sư">Đăng
											ký</a> <br>Đối với Phụ huynh: Liên hệ tư vấn 0283539 1819 -
										0972 383848 - 0907 75 00 44
								</strong></em></font>
						</p>
						<p>&nbsp;</p>
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
						<p>&nbsp;</p>
					</div>
				</div>
			</td>
		</tr>
	</table>

	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</div>