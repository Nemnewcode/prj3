<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">🎬 Quản Lý Vé Xem Phim</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
                     
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/movies">Phim</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/tickets">Vé của tôi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Liên hệ</a>
                        
                    </li>
                    <li>
                        <a class="nav-link" href="/login.jsp">Đăng nhập</a>
                    </li>
                </ul>
            </div>
        </div>
        
    </nav>
</header>
