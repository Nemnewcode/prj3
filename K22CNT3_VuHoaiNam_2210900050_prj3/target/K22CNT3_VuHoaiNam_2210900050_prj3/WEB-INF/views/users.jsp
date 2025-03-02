<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách User</title>
</head>
<body>
    <h2>Danh sách Người Dùng</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Username</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
            </tr>
        </c:forEach>
    </table>

    <h3>Thêm User</h3>
    <form action="addUser" method="post">
        <input type="text" name="username" placeholder="Tên đăng nhập" required>
        <input type="password" name="password" placeholder="Mật khẩu" required>
        <button type="submit">Thêm</button>
    </form>
</body>
</html>
