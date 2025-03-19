<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách vé</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center text-primary">Danh sách vé</h2>

    <table class="table table-striped table-hover text-center mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>User ID</th>
                <th>Showtime ID</th>
                <th>Seat ID</th>
                <th>Status</th>
                <th>Booking Date</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ticket" items="${tickets}">
                <tr>
                    <td>${ticket.id}</td>
                    <td>${ticket.userId}</td>
                    <td>${ticket.showtimeId}</td>
                    <td>${ticket.seatId}</td>
                    <td>
                        <span class="badge ${ticket.status == 'BOOKED' ? 'bg-success' : 'bg-danger'}">
                            ${ticket.status}
                        </span>
                    </td>
                    <td>${ticket.bookingDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h3 class="text-center text-success mt-4">Đặt vé mới</h3>
    <div class="card p-4 shadow-sm mt-3">
        <form action="bookticket" method="post">
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label class="form-label">User ID:</label>
                    <input type="number" name="userId" class="form-control" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label">Showtime ID:</label>
                    <input type="number" name="showtimeId" class="form-control" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label class="form-label">Seat ID:</label>
                    <input type="number" name="seatId" class="form-control" required>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary px-4">Đặt vé</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
