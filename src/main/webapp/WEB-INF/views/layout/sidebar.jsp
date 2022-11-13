<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="sidebar">
    <ul class="danhmuc">
        <h3 class="jsn-moduletitle"><span class="jsn-moduleicon">Lớp cần gia sư</span></h3>
		<c:forEach var="item" items="${ listCategoryClass }">
			<li><a href="#" title="Gia sư cấp 1">${ item.name }</a></li>
		</c:forEach>
    </ul>
    <ul class="danhmuc">
        <h3 class="jsn-moduletitle"><span class="jsn-moduleicon">Gia sư theo quận</span></h3>
		<c:forEach var="item" items="${ listCategoryDistrict }">
			<li><a href="#" title="Gia sư cấp 1">${ item.name }</a></li>
		</c:forEach>
    </ul>
    <ul class="danhmuc">
        <h3 class="jsn-moduletitle"><span class="jsn-moduleicon">Cần biết</span></h3>
        <li><a href="#" title="Gia sư cần biết">Gia sư cần biết</a></li>
        <li><a href="#" title="Phụ huynh cần biết">Phụ huynh cần biết</a></li>
        <li><a href="#" title="Kỹ năng sống">Kỹ năng sống</a></li>
        <li><a href="#" title="Truyện cười học đường">Truyện cười học đường</a></li>
        <li><a href="#" title="Tìm Gia Sư Giỏi Cho con">Tìm Gia Sư Giỏi Cho con</a></li>
        <li><a href="#" title="Gia Sư Dạy Kèm Tại Nhà">Gia Sư Dạy Kèm Tại Nhà</a></li>
        <li><a href="#" title="Tìm gia sư dạy tiếng việt cho người nước ngoài">Tìm gia sư dạy tiếng việt cho người nước
                ngoài</a></li>
        <li><a href="#" title="Trung Tâm Gia Sư Giỏi">Trung Tâm Gia Sư Giỏi</a></li>
        <li><a href="#" title="Gia sư Môn Toán">Gia sư Môn Toán</a></li>
        <li><a href="#" title="Gia sư Môn Lý">Gia sư Môn Lý</a></li>
        <li><a href="#" title="Gia sư Môn Hóa">Gia sư Môn Hóa</a></li>
        <li><a href="#" title="Gia sư Môn Văn">Gia sư Môn Văn</a></li>
        <li><a href="#" title="Gia sư Tiếng Anh">Gia sư Tiếng Anh</a></li>
        <li><a href="#" title="Gia Sư Tiếng Trung">Gia Sư Tiếng Trung</a></li>
        <li><a href="#" title="Dạy Kèm Tiếng Nhật">Dạy Kèm Tiếng Nhật</a></li>
        <li><a href="#" title="Dạy Kèm Tiếng Hàn">Dạy Kèm Tiếng Hàn</a></li>
        <li><a href="#" title="Dạy Kèm Tiếng Pháp">Dạy Kèm Tiếng Pháp</a></li>
        <li><a href="#" title="Kinh Nghiệm Gia sư">Kinh Nghiệm Gia sư</a></li>
        <li><a href="#" title="Dạy Kèm Tại Nhà">Dạy Kèm Tại Nhà</a></li>
        <li><a href="#" title="Anh Văn Thiếu Nhi">Anh Văn Thiếu Nhi</a></li>
        <li><a href="#" title="Gia Sư đàn organ,ghita">Gia Sư đàn organ,ghita</a></li>
        <li><a href="#" title="Tìm gia sư tiếng anh">Tìm gia sư tiếng anh</a></li>
        <li><a href="#" title="Tìm gia sư môn Vẽ">Tìm gia sư môn Vẽ</a></li>
        <li><a href="#" title="Tìm Gia Sư đàn Piano">Tìm Gia Sư đàn Piano</a></li>
        <li><a href="#" title="Tìm gia sư luyện thi đại học">Tìm gia sư luyện thi đại học</a></li>
        <li><a href="#" title="Du học">Du học</a></li>
        <li><a href="#" title="Dạy Kèm Đàn ghita">Dạy Kèm Đàn ghita</a></li>
        <li><a href="#" title="Tìm Gia sư lớp lá">Tìm Gia sư lớp lá</a></li>
        <li><a href="#" title="Nên chọn ngành học nào ?">Nên chọn ngành học nào?</a></li>
        <li><a href="#" title="Gia sư sư phạm">Gia sư sư phạm</a></li>
        <li><a href="#" title="Gia sư bách khoa">Gia sư bách khoa</a></li>
        <li><a href="#" title="Giáo viên kinh nghiệm">Giáo viên kinh nghiệm</a></li>
        <li><a href="#" title="ĐÀN VIOLON">Đàn Violon</a></li>
    </ul>
</div>