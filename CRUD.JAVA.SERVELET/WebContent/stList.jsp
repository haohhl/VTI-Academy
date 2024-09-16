<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>stList</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<div>
		<a href="<%=request.getContextPath()%>/insert">Add new user</a>
	</div>
	<br>
	<table class="table table-striped">
	    <thead>
	      <tr>
	      	<th>ID</th>
	        <th>First Name</th>
	        <th>Last Name</th>
	        <th>Email</th>
	        <th>Action</th>
	      </tr>
	    </thead>
	    <tbody>
		    <c:forEach var="stu" items="${studentsList }">
		      <tr>
		        <td><c:out value="${stu.id}"></c:out></td>
		        <td><c:out value="${stu.firstName }"></c:out></td>
		        <td><c:out value="${stu.lastName }"></c:out></td>
		        <td><c:out value="${stu.email }"></c:out></td>
		        <td><a href="edit?id=<c:out value='${stu.id }'/>">EDIT</a>&nbsp&nbsp&nbsp<a href="delete?id=<c:out value='${stu.id }'/>">DELETE</a></td>
		      </tr>
		    </c:forEach>
	    </tbody>
  	</table>
</body>
</html>