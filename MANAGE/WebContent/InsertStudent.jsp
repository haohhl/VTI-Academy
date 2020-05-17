<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Student</title>
</head>
<body>
	<div style="text-align: center">
		<h1>INSERT STUDENT</h1>
	</div>
	
	<form action="ListStudent.jsp">
		FirstName:
		<input type="text" name="firstname"/>
		<br><br>
		
		LastName:
		<input type="text" name="firstname"/>
		<br><br>
		
		Email: 
		<input type="text" name="email"/>
		<br><br>
		
		<input type="submit" name="submit" value="Insert"/>
	</form>
</body>
</html>