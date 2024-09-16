<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.vti.demo.jsp.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Student Table</title>
</head>
<body>
	<div class="container">
		<h2>Student List</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Age</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Phone</th>
					<th>School</th>
					<th>Address</th>
				</tr>
			</thead>
			
			<tbody>
				<%
					
					for(int i=0; i<Students.createList().size(); i++){
						out.println("<tr>");
						out.println("<td>"+ Students.createList().get(i).getId()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getAge()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getName()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getGender()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getPhone()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getSchool()+"</td>");
						out.println("<td>"+ Students.createList().get(i).getAddress()+"</td>");
						out.println("</tr>");
					}
				%>
			
			
			
				<c:forEach items="<%=Students.createList()%>" var="test">
					<tr>
						<td><c:out value="${test.getId()}" /></td>     
						<td><c:out value="${test.getAge()}" /></td>
						<td><c:out value="${test.getName()}" /></td>
						<td><c:out value="${test.getGender()}" /></td>
						<td><c:out value="${test.getPhone()}" /></td>
						<td><c:out value="${test.getSchool()}" /></td>
						<td><c:out value="${test.getAddress()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>