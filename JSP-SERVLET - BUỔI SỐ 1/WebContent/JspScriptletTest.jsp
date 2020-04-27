<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Scriptlets Test</title>
</head>
<body>
	<h1>Jsp Scriptlet Demo</h1>
	<%
		String str = "Nguyen Viet Anh"; //java variable 
		for (int i = 1; i <= 5; i++) {
			out.println("</br>i = " + i);
		}
		
	%>
	
	<h1>JSP Scriptlet: <% new java.util.Date(); %></h1>
	<h1>JSP Expression: <%= new java.util.Date() %></h1>
	
	<!-- JSP Declaration: Được sử dụng để khai báo java method và variable trong file JSP  --> 
	<%!
		String str = "Nguyen Viet Anh"; //java variable 
		String makeItLowerCase(String data) {
			return data.toLowerCase();
		}
	%>
	<p>Lower case of HELLO WORLD: <%= makeItLowerCase("HELLO WORLD") %></p>
</body>
</html>