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
<title>TUYỂN DỤNG</title>

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
	<div class="container-fluid">
		<div class="row flex-nowrap"style="margin-top:60px">
			<%@include file="/WEB-INF/views/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">TUYỂN
						DỤNG GIA SƯ ANH EM</span>
				</div>
				<div class="content-temp" style="width: 100%;">
					<c:forEach var="item" items="${listRecruitment}">
						<h1 class="title highlight" itemprop="name">${item.title}</h1>
						<h3>${item.body }</h3>
						<hr>
					</c:forEach>

					<!-- <p>
							<span style="background-color: #3366ff;"><br></span>
						</p>
						<p>
							<strong>TRUNG TÂM GIA SƯ ANH EM tuyển 10 nhân viên <span
								class="highlight">trực điện thoại</span></strong>
						</p>
						<p>
							<strong>Làm việc tại : 109 ĐƯỜNG TÂN LẬP 2 P, HIỆP PHÚ
								THÀNH PHỐ THỦ ĐỨC HCM</strong>
						</p>
						<p>
							<strong>Nộp hồ sơ từ ngày 10/6/2022</strong>
						</p>
						<p>
							<strong>Ca sáng : 8h30 đến 11h30</strong>
						</p>
						<p>
							<strong>Ca chiều : 14h đến 17h30</strong>
						</p>
						<p>
							<strong>Liên hệ : 0972383848 lương thỏa thuận</strong>
						</p>
						<p>
							<span style="color: #ff0000;"> Trung tâm gia sư anh em cần
								tuyển giáo viên và sinh viên dạy kèm tại nhà khắp thành phố HCM</span>
						</p>
						<p>Giáo viên các bộ môn Toán, Lý, Hóa, Sinh, anh văn, văn ...</p>
						<p>Giáo viên ngoại ngữ, tin học, đàn, vẽ</p>
						<p>Sinh viên có kỹ năng sư phạm, khả năng truyền đạt tốt</p>
						<p>
							VP1: ĐIỆN BIÊN PHỦ F22 BÌNH THẠNH<br>VP 2: 109 TÂN LẬP 2 F
							HIỆP PHÚ QUẬN 9<br>VP3: 294 HÒA HƯNG F12 QUẬN 10<br>ĐT:
							028.35.39.18.19 -- 0972.38.38.48
						</p>
						<p>
							<a title="gia sư anh em" href="/TrungTamGiaSu/trang-chu">www.giasuanhem.com</a>
						</p>
						<h2>
							<span style="color: #ff0000;"><span
								style="text-decoration: underline;"><strong> CẦN
										HỢP TÁC CÙNG NHỮNG TRUNG TÂM GIA SƯ KHÁC</strong></span></span>
						</h2>
						<h3>Hiện nay trung tâm gia sư and em đang có nhu cầu hợp tác
							cùng những trung tâm gia sư khác, nếu những trung tâm gia sư nào
							có những lớp ở xa văn phòng hoặc lớp cần giao gấp, lớp khó khi
							hợp tác cùng trung tâm gia sư anh em, chúng tôi sẽ gởi 50% hoa
							hồng trên mỗi lớp tương đương 20% phí ( phí được đưa trực tiếp
							hoặc chuyển khoản sau 10 ngày đưa lớp) . Trung tâm gia sư nào có
							nhu cầu Liên hệ: 0972383848 Bà Nguyễn Minh Chiến</h3>
						<p>
							<span style="color: #ff0000;"> <span
								style="font-size: medium;">TUYỂN NHÂN VIÊN PHÁT TỜ RƠI</span></span><strong><span
								style="font-size: small;"> </span></strong>
						</p>
						<p>
							<span style="font-size: x-small;"> </span><span
								style="font-size: medium;"><span
								style="font-size: x-small;">THÔNG BÁO TUYỂN DỤNG GẤP </span><br></span>
						</p>
						<p>
							<strong><span style="font-size: small;">Hiện tại
									trung tâm gia sư anh em đang cần tuyển </span></strong>
						</p>
						<p>
							<strong><span style="font-size: small;">- 5 nhân
									viên phát tờ rơi tại quận 12 và gò vấp</span></strong>
						</p>
						<p>
							<strong><span style="font-size: small;">- 7 nhân
									viên phát tờ rơi tại quận 4 và quận 7, 8</span></strong>
						</p>
						<p>
							<span style="font-size: x-small;"><strong><span
									style="font-size: small;">- 2 nhân viên phát tờ rơi tại
										quận tân phú, bình tân</span></strong></span>
						</p>
						<p>
							<span style="font-size: small;"><strong> Thời
									gian làm việc từ ngày 15/8/2014 đến 15/10/2014, liên hệ vp:
									điện biên phủ p,22 quận bình thạnh, khi đến vp mang theo thẻ
									sv, cmnd pho to.</strong></span>
						</p>
						<p>
							<strong><span style="font-size: small;"> <span
									style="font-size: medium;">Trung tâm gia sư anh em tuyển
										15 nhân viên phát tờ rơi khắp các quận( từ ngày 1/8/2014 đến
										30/8/2014), liên hệ: 0987927505 để nhận tờ rơi, lương trả theo
										giời.</span></span></strong>
						</p>
						<p>
							<strong> <span style="color: #ff0000;"> <span
									style="font-size: small;"> TUYỂN NHÂN VIÊN</span></span></strong>
						</p>
						<p>
							<span style="color: #ff0000;"> </span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>TRUNG TÂM
									GIA SƯ ANH EM , CÔNG TY TNHH MỘT THÀNH VIÊN TUYỂN 10 NHÂN VIÊN
									TRỰC ĐIỆN THOẠI, LÀM VIỆC TẠI 109 TÂN LẬP 2 P, HIỆP PHÚ QUẬN 9</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>THỜI GIAN
									LÀM VIỆC: CHỌN 1 TRONG 3 CA, CÓ THẾ XOAY CA<br>
							</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>CA SÁNG:
									8H30 ĐẾN 11H30</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>CA CHIỀU:
									14H ĐẾN 17H30</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>CA TỐI :
									18H ĐẾN 21H</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>LƯƠNG THỎA
									THUẬN, NỘP HỒ SƠ TẠI: 109 TÂN LẬP 2 P, HIỆP PHÚ QUẬN 9, HỒ SƠ
									GỒM (ĐƠN XIN VIỆC, SƠ YẾU LÝ LỊCH, CHỨNG MINH NHÂN DÂN) PHO TO
							</strong></span>
						</p>
						<p>
							<span style="color: #ff0000;"><strong>ĐT:
									0972383848 </strong></span>
						</p>
						<p>
							<strong>TUYỂN NHÂN VIÊN PHÁT TỜ RƠI</strong><br> TRUNG TÂM
							GIA SƯ ANH EM TUYỂN NHÂN VIÊN PHÁT TỜ RƠI KHẮP THÀNH PHỐ HCM,THỜI
							GIAN TỪ 20/02/2014 ĐẾN 20/03/2014, THỜI GIAN LÀM VIỆC SÁNG TỪ 8H
							SÁNG ĐẾN 11H, CHIỀU 15H ĐẾN 17H, LƯƠNG THỎA THUẬN<br> <br>LIÊN
							HỆ:<br> ĐIỆN BIÊN PHỦ P,22 QUẬN BÌNH THẠNH<br>109 TÂN
							LẬP 2 P, HIỆP PHÚ QUẬN 9<br>ĐT: 028 35391819, 0972383848
						</p>
						<p>
							<strong>TUYỂN GIA SƯ</strong><br> TUYỂN NHIỀU GV,SV DẠY KÈM
							TẠI NHÀ, CÁC LỚP 1 -- 12 LTDH, CÁC LỚP ĐÀN, VẼ, TIN HỌC NGOẠI
							NGỮ.....<br>LUÔN CÓ LỚP MỚI MỖI NGÀY,ĐẶC BIỆT CÓ LỚP LƯƠNG
							CAO DÀNH CHO GIÁO VIÊN <br>VP1:&nbsp; ĐIỆN BIÊN PHỦ F22 BÌNH
							THẠNH<br>VP 2: 109 TÂN LẬP 2 F HIỆP PHÚ QUẬN 9<br>VP3:
							294 HÒA HƯNG F12 QUẬN 10<br>ĐT: 028.35.39.18.19 --
							0972.38.38.48<br> <br> <br> <br> <strong>TUYỂN
								NHÂN VIÊN </strong><br>CÔNG TY TNHH MỘT THÀNH VIÊN,TUYỂN NV TRỰC
							ĐIỆN THOẠI,LÀM VIỆC TẠI CÔNG TY. THỜI GIAN LÀM VIỆC LINH ĐỘNG,
							CHỌN CA CỐ ĐỊNH HOẶC XOAY CA. NỘP HỒ SƠ TẠI VP: 109 ĐƯỜNG TÂN LẬP
							2 P. HIỆP PHÚ QUẬN 9<br> <br>LÀM VIỆC TẠI 109 TÂN LẬP
							2&nbsp; F HIỆP PHÚ QUẬN 9<br>CA SÁNG : 8H30 ĐẾN 11H30<br>CA
							CHIỀU : 14H ĐẾN 17H30<br>CA TỐI : 18H ĐẾN 21H<br>LƯƠNG
							THỎA THUẬN . MỌI CHI TIẾT XIN LIÊN HỆ : 109 TÂN LẬP 2&nbsp; F
							HIỆP PHÚ Q9<br>ĐT: 028.35.39.18.19<br>DĐ :
							0972.38.38.48
						</p>
						<div class="clearb"></div>
						<div class="mxh clearfix">
							<div style="float: left; margin-left: 20px;">
								<iframe
									src="//www.facebook.com/plugins/like.php?href=http://giasunhanvan.com/gia-su-nhan-van-tuyen-dung.html&amp;send=false&amp;layout=button_count&amp;width=80&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21"
									scrolling="no" frameborder="0"
									style="border: none; overflow: hidden; width: 80px; height: 21px;"
									allowtransparency="true"></iframe>
								<div id="___plusone_0"
									style="position: absolute; width: 450px; left: -10000px;">
									<iframe ng-non-bindable="" frameborder="0" hspace="0"
										marginheight="0" marginwidth="0" scrolling="no"
										style="position: absolute; top: -10000px; width: 450px; margin: 0px; border-style: none"
										tabindex="0" vspace="0" width="100%" id="I0_1666424608948"
										name="I0_1666424608948"
										src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;origin=https%3A%2F%2Fgiasunhanvan.com&amp;url=http%3A%2F%2Fgiasunhanvan.com%2Fgia-su-nhan-van-tuyen-dung.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fabc-static%2F_%2Fjs%2Fk%3Dgapi.lb.en.z9QjrzsHcOc.O%2Fd%3D1%2Frs%3DAHpOoo8359JQqZQ0dzCVJ5Ui3CZcERHEWA%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1666424608948&amp;_gfid=I0_1666424608948&amp;parent=https%3A%2F%2Fgiasunhanvan.com&amp;pfname=&amp;rpctoken=12372153"
										data-gapiattached="true"></iframe>
								</div>
								<g:plusone size="medium"
									href="http://giasunhanvan.com/gia-su-nhan-van-tuyen-dung.html"
									data-gapiscan="true" data-onload="true" data-gapistub="true"></g:plusone>

							</div>
						</div>
						<p>
							<font size="3"><font color="#FF0000"><strong>Trung
										tâm gia sư anh em</strong></font></font>
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
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br>
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
 -->
				</div>

			</div>

		</div>


		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</div>

</body>

</html>
