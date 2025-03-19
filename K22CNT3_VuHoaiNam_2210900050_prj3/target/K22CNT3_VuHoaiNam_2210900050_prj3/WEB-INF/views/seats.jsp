<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách ghế</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2 class="text-center">Danh sách ghế</h2>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Rạp</th>
                    <th>Số ghế</th>
                    <th>Loại ghế</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="seat" items="${seats}">
                    <tr>
                        <td>${seat.id}</td>
                        <td>${seat.theaterId}</td>
                        <td>${seat.seatNumber}</td>
                        <td>${seat.type}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="/index.jsp" class="btn btn-primary">Về trang chủ</a>
    </div>
</body>
</html>
