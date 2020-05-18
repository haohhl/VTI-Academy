<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>JSTL Demo</title>
</head>
<body>
	<!-- c:out -->
	<c:out value="${'Hello Java'}"/>  
	<br>
	
	<!-- c:set -->
	<c:set var="sum" scope="session" value="${200+100}"/>  
	<c:out value="${sum}"/> 
	<br>
	
	<!-- c:remove -->
	<p>Before removing: <c:out value="${sum}"/></p>  
	<c:remove var="sum"/>  
	<p>After removing: <c:out value="${sum}"/></p>  
	<br>
	
	<!-- c:if -->
	<c:set var="sum" scope="session" value="${200+100}"/>
	<c:if test="${sum == 300}">  
   		<p>My sum is: <c:out value="${sum}"/><p>  
	</c:if> 
	<br>
	
	<!-- c:choose -->
	<c:choose>  
	    <c:when test="${sum < 500}">  
	       Sum is smaller than 500. 
	    </c:when>  
	    <c:when test="${sum > 500}">  
	       Sum is greater than 500.  
	    </c:when>  
	    <c:otherwise>  
	       Sum = 500.
	    </c:otherwise>  
	</c:choose> 
	<br>
	
	<!-- c:forEach -->
	<c:forEach var="index" begin="1" end="5">  
   		Index: <c:out value="${index}"/><p>  
	</c:forEach>
	
</body>
</html>