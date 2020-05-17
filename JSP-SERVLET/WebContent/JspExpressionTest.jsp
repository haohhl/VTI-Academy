<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Jsp Expression</title>
	</head>
	<body>
		<h1>Jsp Experession: <%= new java.util.Date() %></h1>
		<p>Converting a string to uppercase: <%= new String("vti academy").toUpperCase() %></p>
		<p>Converting a string to uppercase: <%= new String("VTI ACADEMY").toLowerCase() %></p>
		<p>2 * 18 = <%= 2*18 %></p>
		<p>32 greater than 17, right? <%= 32 > 17 %></p>
		
		<h6>------------------------------------------</h6>
		<h1>Jsp Scriptlet: <% new java.util.Date(); %></h1>
		<%
			for (int i = 1; i<=5; i++) {
				out.println("</br>i = " + i);
			}
		%>
		
		<h6>------------------------------------------</h6>
		<h1>Jsp Declaration: </h1>
		<h5>Được để sử dụng để khai báo java method và variab trong JSP</h5>
		<%!
			String makeItLowerCase(String data) {
				return data.toLowerCase();
			}
		%>
	</body>
</html>