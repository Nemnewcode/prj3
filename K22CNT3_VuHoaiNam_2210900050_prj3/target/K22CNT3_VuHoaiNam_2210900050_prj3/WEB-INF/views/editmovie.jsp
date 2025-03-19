<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Phim</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%@ include file="/layout/header.jsp" %>

<div class="container mt-4">
    <h2 class="text-center mb-4">Sửa Thông Tin Phim</h2>
    <form action="editMovie" method="post">
        <input type="hidden" name="id" value="${movie.id}">
        
        <div class="mb-3">
            <label class="form-label">Tên phim</label>
            <input type="text" name="title" class="form-control" value="${movie.title}" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <textarea name="description" class="form-control" required>${movie.description}</textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Ảnh poster (URL)</label>
            <input type="text" name="posterUrl" class="form-control" value="${movie.posterUrl}" required>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="movie.jsp" class="btn btn-secondary">Quay lại</a>
    </form>
</div>



</body>
</html>
