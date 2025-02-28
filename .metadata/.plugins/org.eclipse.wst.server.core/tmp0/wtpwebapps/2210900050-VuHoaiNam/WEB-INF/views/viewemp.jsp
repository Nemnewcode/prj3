<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<div class="container mt-5">
    <h1 class="text-center mb-4">Danh sach sinh vien</h1>
    <table class="table table-bordered table-striped">
        <thead class="table-primary">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Lop</th>
                <th>Ngaysinh</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${list}">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.lop}</td>
                    <td>${emp.ngaysinh}</td>
                    <td>
                        <a href="editemp/${emp.id}" class="btn btn-warning btn-sm">Edit</a>
                    </td>
                    <td>
                        <a href="deleteemp/${emp.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="text-center mt-3">
        <a href="empform" class="btn btn-success">Them moi sinh vien</a>
    </div>
</div>
