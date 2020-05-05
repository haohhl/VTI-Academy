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
	<p>Converting a string to uppercase: <%= new String("VTIII").toLowerCase() %></p>
	<p>2 * 18 = <%= 2*18 %></p>
	<p>32 greater than 17, right? <%= 32>17 %></p>
	
	<%= DemoUtils.makeItUpperCase("aadadabcd") %> <!-- có thể dùng com.vti.demo.jsp.DemoUtils.makeItUpperCase thay vì import.
	 --> 
	
 <!-- Jsp scriptlet -->
 <% for(int i =0; i<5 ; i++) {
	 out.println("</br>i ="+i);	
 }
 %>
 

</body>
</html>