<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table Sinh Vien</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>firstName</th>
			<th>lastName</th>
			<th>email</th>
			<th>Action</th>
		</tr>

		<c:forEach var="listSt" items="${todolist}">
			<tr>
				<td><c:out value="${listSt.id}" /></td>
				<td><c:out value="${listSt.firstName}" /></td>
				<td><c:out value="${listSt.lastName}" /></td>
				<td><c:out value="${listSt.email}" /></td>
				<td><a href="delete?id=<c:out value='${listSt.id}' />">Delete</a> <a href="exitSt?id=<c:out value='${listSt.id}' />">Edit</a></td>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="5"> <a href="addSt">Add</a></td>
		</tr>

	</table>
</body>
</html>