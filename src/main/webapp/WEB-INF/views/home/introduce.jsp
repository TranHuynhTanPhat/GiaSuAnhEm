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
						<span class="icon-graduation"></span> <span class="menu-ngang">GIỚI
							THIỆU GIA SƯ ANH EM</span>
					</div>

					<div class="content-temp" style="width: 100%;">
						<h1 class="title" itemprop="name">Giới thiệu gia sư Anh Em</h1>
						<h1
							style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 1.6em"
							align="center">
							<span style="color: #ff0000"><strong
								style="font-weight: bold; font-size: 24pt">TRUNG TÂM
									GIA SƯ ANH EM</strong></span>
						</h1>
						<h2
							style="margin: 0.5em 0px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 1.4em"
							align="center">
							<span style="font-size: 18pt; color: #ff0000">${sessionScope.listIntroductionPost[0].title }</span>
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
							<span style="color: #0000ff">${sessionScope.listIntroductionPost[0].body}</span>
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
								style="font-weight: bold"> giáo viên giỏi</strong></span>, uy tín từ
							các quận huyện trong thành phố
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
						<table border="0" cellspacing="0" cellpadding="0" width="100%"
							height="76" align="center">
							<tbody>
								<tr>
									<td><a href="gia-su-cap-1.html" title="gia su cap 1"><span
											class="linknewstop"> </span> </a> <strong><a
											href="gia-su-cap-1.html" title="gia su cap 1">Gia sư cấp
												1</a> | <a href="gia-su-cap-2.html" title="Gia su cap 2">Gia
												sư cấp 2</a> | <a href="gia-su-cap-3.html" title="Gia su cap 3">Gia
												sư cấp 3</a> | <a href="gia-su-quan-1.html"
											title="Gia su quan 1">Gia sư quận 1</a> | <a
											href="gia-su-quan-2.html" title="gia su quan 2">Gia sư
												quận 2</a> | <a href="gia-su-quan-3.html" title="Gia su quan 3">Gia
												sư quận 3</a> | <a href="gia-su-quan-4.html"
											title="gia su quan 4">Gia sư quận 4</a> | <a
											href="gia-su-quan-5.html" title="Gia su quan 5">Gia sư
												quận 5</a> | <a href="gia-su-quan-6.html" title="Gia su quan 6">Gia
												sư quận 6</a> | <a href="gia-su-quan-7.html"
											title="gia su quan 7">Gia sư quận 7</a> | <a
											href="gia-su-quan-8.html" title="gia su quan 8">Gia sư
												quận 8</a> | <a href="gia-su-quan-9.html" title="Gia su quan 9">Gia
												sư quận 9</a> | <a href="gia-su-quan-10.html"
											title="gia su quan 10">Gia sư quận 10</a> | <a
											href="gia-su-quan-11.html" title="gia su quan 11">Gia sư
												quận 11</a> | <a href="gia-su-quan-12.html"
											title="gia su quan 12">Gia sư quận 12</a> | <a
											href="gia-su-quan-tan-binh.html" title="gia su quan tan binh">Gia
												sư quận Tân Bình</a> | <a href="gia-su-quan-binh-thanh.html"
											title="gia su quan binh thanh">Gia sư quận Bình Thạnh</a> | <a
											href="gia-su-quan-phu-nhuan.html"
											title="gia su quan phu nhuan">Gia sư quận Phú Nhuận</a> | <a
											href="gia-su-quan-thu-duc.html" title="gia su quan thu duc">Gia
												sư quận Thủ Đức</a> | <a href="gia-su-quan-go-vap.html"
											title="gia su quan go vap">Gia sư quận Gò Vấp</a> | <a
											href="gia-su-quan-binh-tan.html" title="gia su quan binh tan">Gia
												sư quận Bình Tân</a> | <a href="gia-su-quan-tan-phu.html"
											title="gia su quan tan phu">Gia sư quận Tân Phú</a> <br></strong></td>
								</tr>
							</tbody>
						</table>
						<br>

						<div id="bg_sp" style="display: none;">
							<div class="homepage"
								style="border-bottom: 1px solid #e7e7e7; padding-top: 3px; margin-top: 5px;">Tin
								khác cùng chủ đề</div>
							<ul>
							</ul>
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>

	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</div>

