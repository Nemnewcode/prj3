<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Rạp Chiếu Phim</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%@ include file="/layout/header.jsp" %>

<div class="container mt-4">
    <h2 class="text-center mb-4">Danh Sách Rạp Chiếu Phim</h2>

    <table class="table table-bordered text-center">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Tên Rạp</th>
                <th>Địa Chỉ</th>
                <th>Tổng Số Ghế</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="theater" items="${theaters}">
                <tr>
                    <td>${theater.id}</td>
                    <td>${theater.name}</td>
                    <td>${theater.location}</td>
                    <td>${theater.totalSeats}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
