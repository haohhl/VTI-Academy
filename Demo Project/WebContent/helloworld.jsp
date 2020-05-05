<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="com.vti.demo.jsp.ArrayListExample2"%>
<%@ page import="com.vti.demo.jsp.DemoUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>hello world</h1>
	<div>
		<c:forEach items="<%=ArrayListExample2.getList()%>"  var="test">
			<c:out value ="${test.name()}"/>
		</c:forEach>
	</div>
	  
</body>
</html>