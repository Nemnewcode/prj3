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

<div class="container mt-4">
    <h2 class="text-center mb-4">Danh Sách Phim</h2>
    <div class="row">
        <c:forEach var="movie" items="${movies}">
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                    <img src="${pageContext.request.contextPath}/images/${movie.posterUrl}" class="card-img-top" alt="${movie.title}">
                    <div class="card-body">
                        <h5 class="card-title">${movie.title}</h5>
                        <p class="card-text">${movie.description}</p>
                        <a href="<c:url value='/movie/${movie.id}' />" class="btn btn-primary">Xem chi tiết</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>



</body>
</html>
