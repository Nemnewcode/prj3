<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<html>
<head>
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <h2 class="text-center">Đăng Nhập</h2>
    <form action="login" method="post" class="w-50 mx-auto">
        <div class="mb-3">
                <label class="form-label">Tên đăng nhập:</label>
                <input type="text" class="form-control" name="username" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Mật khẩu:</label>
                <input type="password" class="form-control" name="password" required>
            </div>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert alert-danger"><%= request.getAttribute("error") %></div>
        <% } %>
        <button type="submit" class="btn btn-primary w-100">Đăng Nhập</button>
        <p class="text-center mt-3">Chưa có tài khoản? <a href="register">Đăng ký</a></p>
    </form>
</body>
</html>
