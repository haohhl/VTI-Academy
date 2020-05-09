<%@ page import="com.vti.demo.jsp.DemoUtils" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Convert a string to upper case: <%= new String("Huong").toUpperCase() %> </p>
	<p>Convert a string to upper case: <%= DemoUtils.makeItUpperCase("Hello") %> </p>
	<p>2*8=<%=2*8 %></p>
	<p>32 greater than 17: <%= 32 > 17 %> </p> 
	

</body>
</html>