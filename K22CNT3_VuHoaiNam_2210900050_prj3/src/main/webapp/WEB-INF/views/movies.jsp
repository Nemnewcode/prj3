 <%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Phim</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%@ include file="/layout/header.jsp" %>
<p>Chào ${user.username}, vai trò: ${user.role}</p> <!-- Truy xuất từ user.role -->

    <c:set var="isAdmin" value="${user.role eq 'ADMIN'}" />
    <c:set var="isUser" value="${user.role eq 'USER'}" />

<div class="container mt-4">
    <h2 class="text-center mb-4">Danh Sách Phim</h2>

    <c:if test="${isAdmin}">
        <a href="${pageContext.request.contextPath}/movies/add" class="btn btn-success mb-3">Thêm Phim</a>
    </c:if>

    <div class="row">
    <c:forEach var="movie" items="${movies}">
        <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
                <img src="${pageContext.request.contextPath}/images/${movie.posterUrl}" class="card-img-top" alt="${movie.title}">
                <div class="card-body">
                    <h5 class="card-title">${movie.title}</h5>
                    <p class="card-text">${movie.description}</p>
                    <a href="<c:url value='/movie/${movie.id}' />" class="btn btn-primary">Xem chi tiết</a>
                    <c:if test="${isUser}">
                        <a href="${pageContext.request.contextPath}/book-ticket?movieId=${movie.id}" class="btn btn-info btn-sm ms-2">
                            <i class="fas fa-ticket-alt me-2"></i>Đặt vé
                        </a>
                    </c:if>

                    <c:if test="${isAdmin}">
                        <div class="mt-2">
                            <a href="${pageContext.request.contextPath}/movies/edit?id=${movie.id}" class="btn btn-warning btn-sm">Sửa</a>
                            <form action="${pageContext.request.contextPath}/movies/delete" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${movie.id}">
                                <button type="submit" class="btn btn-danger btn-sm" 
                                        onclick="return confirm('Bạn có chắc muốn xóa phim ${movie.title}?')">
                                    <i class="fas fa-trash-alt me-2"></i>Xóa
                                </button>
                            </form>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</div>

</body>
</html>
 