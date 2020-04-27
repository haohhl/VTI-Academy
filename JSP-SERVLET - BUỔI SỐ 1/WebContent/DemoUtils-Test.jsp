<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.vti.demo.jsp.DemoUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="common/header.html"></jsp:include>
	
	<p>Show data lowercase from class: 
		<%= DemoUtils.makeItUpperCase("hello world") %>
	</p>
	
	<jsp:include page="common/footer.html"></jsp:include>
</body>
</html>