<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ - Quản Lý Vé Xem Phim</title>

    <!-- ✅ Thêm Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<%@ include file="layout/header.jsp" %>

    <div class="container mt-4">
        <div class="jumbotron bg-primary text-white text-center py-5">
            <h1>Chào mừng đến với hệ thống đặt vé xem phim!</h1>
            <p>Đặt vé nhanh chóng, dễ dàng và tiện lợi.</p>
            <a href="<c:url value='/movies' />" class="btn btn-warning btn-lg">Xem phim ngay</a>
        </div>
    </div>

    <div class="container mt-4">
    <h2 class="text-center mb-4">Phim Nổi Bật</h2>
    <div class="image-container">
    <img src="${pageContext.request.contextPath}/images/anh2.jpg" alt="Ảnh 2">
    <img src="${pageContext.request.contextPath}/images/anh3.jpg" alt="Ảnh 3">
    <img src="${pageContext.request.contextPath}/images/anh4.jpg" alt="Ảnh 4">
    <img src="${pageContext.request.contextPath}/images/download.jpg" alt="Ảnh 5">
</div>

</div>

<%@ include file="layout/foter.jsp" %>

</body>
</html>
