<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exit view</title>
</head>
<body>

	<h4>Edit Data</h4>
	<form action="update" method="get">
		<input type="hidden" name="id" value="${IDStudent}" />
		<br> <label>FirstName</label> 
		<input type="text" name="firstName" value="${firstNameStudent}"/> <br> 
		<label>LastName</label>
		<input type="text" name="lastName" value="${lastNameStudent}" /> <br>
		<label>Email</label>
		<input type="text" name="email" value="${emailStudent}"/> <br>
		<button type="submit">Submit</button>
	</form>

</body>
</html>
