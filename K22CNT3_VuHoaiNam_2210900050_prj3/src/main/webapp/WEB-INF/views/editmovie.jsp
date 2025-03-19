<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Phim</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome để thêm icon -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            color: #343a40;
            margin-bottom: 30px;
            text-align: center;
        }
        .form-label {
            font-weight: 500;
            color: #495057;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            border: none;
            padding: 10px 20px;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
        .required {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2><i class="fas fa-edit me-2"></i>Sửa Phim</h2>
        <form method="post" action="/movies/edit">
            <input type="hidden" name="id" value="${movie.id}">
            <div class="mb-3">
                <label for="title" class="form-label">Tên phim <span class="required">*</span></label>
                <input type="text" class="form-control" id="title" name="title" value="${movie.title}" maxlength="100" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Mô tả</label>
                <textarea class="form-control" id="description" name="description" rows="4">${movie.description}</textarea>
            </div>
            <div class="mb-3">
                <label for="duration" class="form-label">Thời lượng (phút) <span class="required">*</span></label>
                <input type="number" class="form-control" id="duration" name="duration" value="${movie.duration}" min="1" required>
            </div>
            <div class="mb-3">
                <label for="genre" class="form-label">Thể loại</label>
                <input type="text" class="form-control" id="genre" name="genre" value="${movie.genre}" maxlength="50">
            </div>
            <div class="mb-3">
                <label for="releaseDate" class="form-label">Ngày phát hành</label>
                <input type="date" class="form-control" id="releaseDate" name="releaseDate" value="${movie.releaseDate}">
            </div>
            <div class="mb-3">
                <label for="posterUrl" class="form-label">URL Poster</label>
                <input type="text" class="form-control" id="posterUrl" name="posterUrl" value="${movie.posterUrl}" maxlength="255">
            </div>
            <div class="d-flex justify-content-center gap-3">
                <button type="submit" class="btn btn-primary"><i class="fas fa-save me-2"></i>Cập nhật</button>
                <a href="/movies" class="btn btn-secondary"><i class="fas fa-arrow-left me-2"></i>Quay lại</a>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>