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
<link rel="shortcut icon" type="image/png" href="resources/assets/images/favicon-96x96.png"/>
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
	<div class="container-fluid" style="margin-top:60px">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/users/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">THÔNG
						TIN LIÊN HỆ</span>
				</div>
				<div class="content-temp" style="width: 100%;">
					<h1 class="title" itemprop="name">Mức phí gia sư</h1>
					<p>
						<strong> <span style="color: #ff0000;"><span
								style="text-decoration: underline;">LỆ PHÍ NHẬN LỚP</span></span></strong>
					</p>
					<p>
						<strong> PHÍ NHẬN LỚP CỦA GIÁO VIÊN LÀ 40% ( Các lớp từ
							lớp lá đến lớp 12)</strong>
					</p>
					<p>
						<strong> PHÍ NHẬN LỚP CỦA SINH VIÊN LÀ 40% ( Các lớp từ
							lớp lá đến lớp 12)</strong>
					</p>
					<p>
						<strong> CÁC LỚP TIN HỌC, ĐÀN,VẼ, ANH VĂN GIAO TIẾP, PHÍ
							LÀ 30%</strong>
					</p>
					<ul>
						<li><strong>Sinh viên, giáo viên có hoàn cảnh khó
								khăn:30%</strong></li>
						<li><strong>Sinh viên, giáo viên có hoàn cảnh rất
								khó khăn : Miễn phí lớp dạy</strong></li>
					</ul>
					<p>
						<strong>HOÀN PHÍ 100% KHI KHÔNG NHẬN ĐƯỢC LỚP</strong>
					</p>
					<p>
						<span style="color: #ff0000;"><span
							style="text-decoration: underline;"><strong>CHỈ
									ĐÓNG 1 LẦN TRÊN 1 LỚP DẠY </strong></span></span>
					</p>
					<h1 class="title">Quy trình nhận lớp</h1>
					<p>
						<span style="font-size: medium;">Giáo viên và sinh viên sau
							khi thấy lớp phù hợp ở mục lớp dạy cần gia sư thì vui lòng liên
							hệ:</span>
					</p>
					<ul>
						<li><span style="font-size: medium;"><strong>Gia
									sư gọi: 0972383848<span style="color: #ff0000;"> <br></span>
							</strong></span></li>
					</ul>
					<ul>
						<li><span style="font-size: medium;">Khi tới trung tâm
								nhận lớp, sinh viên vui lòng mang theo:<span
								style="color: #3366ff;"> thẻ sinh viên + CMND.</span>Đối với
								giáo viên: <span style="color: #3366ff;">bằng tốt nghiệp
									+ thẻ giáo viên + CMND</span>
						</span></li>
					</ul>
					<p>
						<span style="font-size: medium;"><strong><span
								style="color: #3366ff;"><span
									style="text-decoration: underline;"><br>LỆ PHÍ NHẬN
										LỚP:</span> </span></strong></span>
					</p>
					<ul>
						<li><span style="font-size: medium;">Phí nhận lớp của
								giáo viên:40%( các lớp từ lớp lá đến lớp 12)<br>
						</span></li>
					</ul>
					<ul>
						<li><span style="font-size: medium;">Phí nhận lớp của
								sinh viên:40%( các lớp từ lớp lá đến lớp 12)</span></li>
						<li><span style="font-size: medium;">Các lớp tin học,
								đàn,vẽ,anh văn giao tiếp,, luyện thi đại học là : 30%</span></li>
					</ul>
					<ul>
						<li><span style="font-size: medium;">Sinh viên, giáo
								viên có hoàn cảnh khó khăn:30%</span></li>
						<li><span style="font-size: medium;">Sinh viên, giáo
								viên có hoàn cảnh rất khó khăn : Miễn phí lớp dạy</span></li>
					</ul>
					<p>
						<em><span style="color: #ff0000; font-size: medium;">Trung
								tâm chỉ thu phí 1 tháng đầu tiên.</span></em>
					</p>
					<p>
						<span style="color: #ff0000; font-size: small;"><em>TK1
								: BÙI CÔNG ĐIỆP ngân hàng techcombank chi nhánh tp hcm :
								19028306383011</em></span>
					</p>
					<p>
						<span style="color: #ff0000; font-size: small;"><em>TK
								2: BÙI CÔNG ĐIỆP ngân hàng BIDV chi nhánh tp hcm :
								31410003332170</em></span>
					</p>
					<p>
						<span style="color: #ff0000; font-size: small;"><em>TK
								3 : BÙI CÔNG ĐIỆPngân hàng sacombank chi nhánh tp hcm :
								060128731477</em></span>
					</p>
					<p>
						<span style="color: #ff0000; font-size: small;"><em>TK
								4 : BÙI CÔNG ĐIỆP ngân hàng MB BANK chi nhánh tp hcm&:
								606668687979</em></span>
					</p>
					<p>
						<span style="color: #ff0000; font-size: small;"><em>TK
								5: ĐINH THỊ OANH ngân hàng vietinbank chi nhánh tp hcm :
								100874769903 </em></span>
					</p>
					<p>
						Xem thêm: <a title="gia sư nhân văn" href="/">gia su</a> , <a
							title="gia sư nhân văn" href="/">gia sư</a> , <a
							title="gia su nhan van" href="/">trung tam gia su</a> , <a
							title="gia sư nhân văn" href="/">trung tâm gia sư</a> , <a
							title="gia su nhan van" href="/">gia sư uy tin</a> , <a
							title="gia sư nhân văn" href="/">gia sư uy tín </a>
					</p>
					<div class="clearb"></div>
					<div class="mxh clearfix">
						<div style="float: left; margin-left: 20px;">
							<iframe
								src="//www.facebook.com/plugins/like.php?href=http://giasunhanvan.com/muc-phi-gia-su.html&amp;send=false&amp;layout=button_count&amp;width=80&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21"
								scrolling="no" frameborder="0"
								style="border: none; overflow: hidden; width: 80px; height: 21px;"
								allowtransparency="true"></iframe>
							<div id="___plusone_0"
								style="position: absolute; width: 450px; left: -10000px;">
								<iframe ng-non-bindable="" frameborder="0" hspace="0"
									marginheight="0" marginwidth="0" scrolling="no"
									style="position: absolute; top: -10000px; width: 450px; margin: 0px; border-style: none"
									tabindex="0" vspace="0" width="100%" id="I0_1666447233478"
									name="I0_1666447233478"
									src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;origin=https%3A%2F%2Fgiasunhanvan.com&amp;url=http%3A%2F%2Fgiasunhanvan.com%2Fmuc-phi-gia-su.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fabc-static%2F_%2Fjs%2Fk%3Dgapi.lb.en.z9QjrzsHcOc.O%2Fd%3D1%2Frs%3DAHpOoo8359JQqZQ0dzCVJ5Ui3CZcERHEWA%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1666447233478&amp;_gfid=I0_1666447233478&amp;parent=https%3A%2F%2Fgiasunhanvan.com&amp;pfname=&amp;rpctoken=42957224"
									data-gapiattached="true"></iframe>
							</div>
							<g:plusone size="medium"
								href="http://giasunhanvan.com/muc-phi-gia-su.html"
								data-gapiscan="true" data-onload="true" data-gapistub="true"></g:plusone>

						</div>
					</div>

					<hr>
					<p>
						<font size="3"><font color="#FF0000"><strong>Trung
									tâm gia sư Nhân Văn</strong></font></font>
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
						<strong>NGÕ 2
							<p>
								<font size="3">Điện Thoại : 028 3539 1819 <br>Di
									Động : 0987 927 505 - 0907 750 044- 0919 138 768 - 0972 383848<br>
									<br></font>
							</p>
						</strong>
					<div id="bg_sp" style="display: none;">
						<div class="homepage"
							style="border-bottom: 1px solid #e7e7e7; padding-top: 3px; margin-top: 5px;">Tin
							khác cùng chủ đề</div>

					</div>

				</div>
			</div>
		</div>

		<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>
	</div>

</body>

</html>
