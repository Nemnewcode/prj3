<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<html>
<head>
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <h2 class="text-center">Đăng Ký</h2>
    <form action="register" method="post" class="w-50 mx-auto">
        <div class="mb-3">
            <label class="form-label">Tên đăng nhập:</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Mật khẩu:</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Email:</label>
            <input type="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Số điện thoại:</label>
            <input type="text" name="phone" class="form-control">
        </div>
        <% if (request.getAttribute("error") != null) { %>
            <div class="alert alert-danger"><%= request.getAttribute("error") %></div>
        <% } %>
        <button type="submit" class="btn btn-primary w-100">Đăng Ký</button>
        <p class="text-center mt-3">Đã có tài khoản? <a href="login">Đăng nhập</a></p>
    </form>
</body>
</html>
