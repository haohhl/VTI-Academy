<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Data</title>
</head>
<body>
<h4>Insert Data</h4>
	<form action="addSt" method="post">
		<br> <label>FirstName</label> 
		<input type="text" name="firstName" /> <br>
		<label>LastName</label>
		<input type="text" name="lastName" /> <br>
		<label>Email</label>
		<input type="text" name="email" /> <br>
		<button type="submit">Submit</button>
	</form>
</body>
</html>