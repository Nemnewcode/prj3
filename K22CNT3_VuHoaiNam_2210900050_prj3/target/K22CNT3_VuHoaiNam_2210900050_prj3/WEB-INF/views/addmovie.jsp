<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Phim</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%@ include file="/layout/header.jsp" %>

<div class="container mt-4">
    <h2 class="text-center mb-4">Thêm Phim Mới</h2>
    <form action="addMovie" method="post">
        <div class="mb-3">
            <label class="form-label">Tên phim</label>
            <input type="text" name="title" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <textarea name="description" class="form-control" required></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Ảnh poster (URL)</label>
            <input type="text" name="posterUrl" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success">Thêm Phim</button>
        <a href="movie.jsp" class="btn btn-secondary">Quay lại</a>
    </form>
</div>



</body>
</html>
