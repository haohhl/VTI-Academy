<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<c:set var="number" scope="session" value="${9000}"/>
		<p>The number is : <c:out value="${number }"/></p>
		<c:remove var="number"/>
		<p>Remove number : <c:out value="${number}"/></p>
	</div>
	
	<div>
		<c:catch var="catchExc">
			<% int a = 10/0; %>
		</c:catch>
		<p>Exception is : <c:out value="${catchExc }" /></p>
	</div>
	
	<div>
		<c:set var="number" scope="session" value="${5000}"/>
		<c:if test="${number > 100 }">
			<p>The number / 2 = <c:out value="${number/2}"/></p>
		</c:if>
	</div>
	
	<div>
		<c:set var="number" scope="session" value="${10}"/>
		<c:choose>
			<c:when test="${number < 0 }">
				So am
			</c:when>
			<c:when test="${number > 0 }">
				So duong
			</c:when>
			<c:otherwise>
				Khong phai la mot so	
			</c:otherwise>
		</c:choose>
	</div>
	
	<div>
		<c:import var="data" url="https://www.google.com.vn/" />
		<c:out value="${data }"/>
	</div>
	
	<div>
		<c:forEach var="i" begin="0" end="5">
			index <c:out value="${i }"/><br/>
		</c:forEach>
		
		<c:forTokens items="a,b,c,d,e,f,g,h" delims="," var="character">
			<c:out value="${character}"/>
		</c:forTokens>
	</div>
	
	<div>
		<c:url value="test.jsp" var="URL">
			<c:param name="number" value="1009"/>
			<c:param name="letter" value="abcd"/>
		</c:url>
		<c:out value="${URL }"/>
	</div>
</body>	
</html>