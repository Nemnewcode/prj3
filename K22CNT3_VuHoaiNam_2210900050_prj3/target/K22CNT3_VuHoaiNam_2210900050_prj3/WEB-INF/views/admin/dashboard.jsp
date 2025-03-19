<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%@ include file="/layout/header.jsp" %>

<div class="container mt-4">
    <h2 class="text-center">Admin Dashboard</h2>

    <div class="row">
        <div class="col-md-4">
            <a href="${pageContext.request.contextPath}/movies" class="btn btn-primary w-100">Quản lý phim</a>
        </div>
        <div class="col-md-4">
            <a href="${pageContext.request.contextPath}/theaters" class="btn btn-primary w-100">Quản lý rạp</a>
        </div>
        <div class="col-md-4">
            <a href="${pageContext.request.contextPath}/showtimes" class="btn btn-primary w-100">Quản lý suất chiếu</a>
        </div>
    </div>

</div>

</body>
</html>
