<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Them moi sinh vien</h1>
<form:form method="POST" action="/2210900050-VuHoaiNam/editsave">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Lop :</td>
			<td><form:input path="lop" /></td>
		</tr>
		<tr>
			<td>Ngaysinh :</td>
			<td><form:input path="ngaysinh" /></td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Edit Save" /></td>
		</tr>
	</table>
</form:form>
