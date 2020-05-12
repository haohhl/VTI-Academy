<%@page import="com.vti.demo.jsp.DemoUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo Utils</title>
</head>
<body>
	<jsp:include page="common/header.html"></jsp:include>
	<%= DemoUtils.makeItUpperCase("do tien anh") %>
	<jsp:include page="common/footer.html"></jsp:include>
</body>
</html>