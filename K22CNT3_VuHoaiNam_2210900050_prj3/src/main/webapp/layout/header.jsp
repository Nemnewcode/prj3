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
                        <a class="nav-link" href="${pageContext.request.contextPath}/movies">Phim</a>
                    </li>
                    <li class="nav-item">
   						 <a class="nav-link" href="${pageContext.request.contextPath}/theaters">Rạp Chiếu</a>
					</li>
					<li class="nav-item">
   						 <a class="nav-link" href="${pageContext.request.contextPath}/showtimes">Thời gian chiếu</a>
					</li>
					<li class="nav-item">
   						 <a class="nav-link" href="${pageContext.request.contextPath}/seats">Ghế ngồi</a>
					</li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/tickets">Vé của tôi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/contact">Liên hệ</a>
                        
                    </li>
                   <%
    					Object user = session.getAttribute("user");
   						 String role = (user != null) ? ((com.model.User) user).getRole() : "";
					%>
					<li class="nav-item">
    				<c:choose>
        				<c:when test="${not empty user}">
            				<a class="nav-link" href="#">👤 Xin chào, <%= ((com.model.User) user).getUsername() %></a>
            			<c:if test="<%= role.equals(\"admin\") %>">
                			<a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard">🔧 Admin</a>
            			</c:if>
            				<a class="nav-link" href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
        				</c:when>
        				<c:otherwise>
            				<a class="nav-link" href="${pageContext.request.contextPath}/login">Đăng nhập</a>
        				</c:otherwise>
    				</c:choose>
					</li>

                </ul>
            </div>
        </div>
        
    </nav>
</header>
