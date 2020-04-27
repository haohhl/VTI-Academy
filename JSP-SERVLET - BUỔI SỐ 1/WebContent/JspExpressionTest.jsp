<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jsp Expression Demo</title>
</head>
<body>
	<p>Converting a string to uppercase: <%= new String("vti academy").toUpperCase() %></p>
	<p>2 * 18 = <%= 2*18 %></p>
	<p>32 greater than 17, right? <%= 32 > 17 %></p>
</body>
</html>