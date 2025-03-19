<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Vé</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome để thêm icon -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <!-- Header -->
    <%@ include file="/layout/header.jsp" %>

    <!-- Form đặt vé -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0"><i class="fas fa-ticket-alt me-2"></i>Đặt Vé</h4>
                    </div>
                    <div class="card-body">
                        <!-- Thông tin phim -->
                        <div class="alert alert-info">
                            <h5 class="mb-1">${movie.title}</h5>
                            <p class="mb-1"><strong>Thời lượng:</strong> ${movie.duration} phút</p>
                            <p class="mb-0"><strong>Thể loại:</strong> ${movie.genre}</p>
                        </div>

                        <!-- Form đặt vé -->
                        <form method="post" action="${pageContext.request.contextPath}/book-ticket">
                            <input type="hidden" name="movieId" value="${movie.id}">
                            <div class="mb-3">
                                <label for="quantity" class="form-label">Số lượng vé <span class="text-danger">*</span></label>
                                <input type="number" class="form-control" id="quantity" name="quantity" min="1" max="10" required>
                            </div>
                            <div class="d-flex justify-content-center gap-3">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fas fa-ticket-alt me-2"></i>Đặt Vé
                                </button>
                                <a href="${pageContext.request.contextPath}/movie/${movie.id}" class="btn btn-secondary">
                                    <i class="fas fa-arrow-left me-2"></i>Quay lại
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>