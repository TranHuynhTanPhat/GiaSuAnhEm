<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrapper">
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
	<table>
		<tr>
			<td id="td-top"><%@include
					file="/WEB-INF/views/layout/sidebar.jsp"%></td>
			<td id="td-top">
				<div id="page-main">
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
							HỌC PHÍ 2 BUỔI 1 TUẦN VÀ 3 BUỔI 1 TUẦN</span>
					</div>

					<table border="0" width="100%">
						<tbody>
							<tr>
								<td rowspan="2" width="2%"></td>
								<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
											LỚP</strong></span></td>
								<td colspan="4" style="text-align: center"><strong>
										Sinh viên</strong></td>
							</tr>
							<tr>
								<td><span><strong>2 buổi 1 tuần</strong></span></td>
								<td><span style="color: rgb(255, 0, 0);"><strong>3
											buổi 1 tuần</strong></span></td>
								<td><span><strong>4 buổi 1 tuần</strong></span></td>
								<td><span style="color: rgb(255, 0, 0);"><strong>5
											buổi 1 tuần</strong></span></td>

							</tr>
							<c:forEach var="item" items="${listSST }">
								<tr>
									<td><input type="checkbox" name="checked"
										value="${item._id }"></td>
									<td>${item.grade }</td>
									<td>${item.twoSessions }</td>
									<td>${item.threeSessions }</td>
									<td>${item.fourSessions }</td>
									<td>${item.fiveSessions }</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<hr>
					<div class="title">
						<span class="icon-graduation"></span> <span class="menu-ngang">BẢNG
							HỌC PHÍ 4 BUỔI 1 TUẦN VÀ 5 BUỔI 1 TUẦN</span>
					</div>



					<div class="lop-day">
						<table border="0" width="100%">
							<tbody>
								<tr align="center">
									<td rowspan="2" width="2%"></td>
									<td rowspan="2"><span style="color: rgb(255, 0, 0);"><strong>KHỐI
												LỚP</strong></span></td>
									<td colspan="4" style="text-align: center"><strong>
											Giáo viên</strong></td>
								</tr>
								<tr>
									<td><span><strong>2 buổi 1 tuần</strong></span></td>
									<td><span style="color: rgb(255, 0, 0);"><strong>3
												buổi 1 tuần</strong></span></td>
									<td><span><strong>4 buổi 1 tuần</strong></span></td>
									<td><span style="color: rgb(255, 0, 0);"><strong>5
												buổi 1 tuần</strong></span></td>

								</tr>
								<c:forEach var="item" items="${listSST }">
									<tr>
										<td><input type="checkbox" name="checked"
											value="${item._id }"></td>
										<td>${item.grade }</td>
										<td>${item.twoSessions }</td>
										<td>${item.threeSessions }</td>
										<td>${item.fourSessions }</td>
										<td>${item.fiveSessions }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</td>
		</tr>
	</table>

	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</div>