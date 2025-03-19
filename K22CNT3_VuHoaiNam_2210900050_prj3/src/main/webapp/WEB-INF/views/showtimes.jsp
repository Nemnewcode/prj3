<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách suất chiếu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h2 class="text-center mb-4">Danh sách suất chiếu</h2>
        
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Phim</th>
                    <th>Rạp</th>
                    <th>Thời gian chiếu</th>
                    <th>Giá vé</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="showtime" items="${showtimes}">
                    <tr>
                        <td>${showtime.id}</td>
                        <td>${showtime.movieName}</td>
                        <td>${showtime.theaterName}</td>
                        <td>${showtime.showTime}</td>
                        <td>${showtime.price} VND</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="/index.jsp" class="btn btn-primary">Quay lại trang chủ</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
