<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSTL DEMO</title>
	</head>
	<body>
		<!-- Thẻ c:out -->
		<div>
			<c:out value="${'Hello World'}"/>
		</div>
		
		
		<!-- Thẻ c:import --> 
		<div>
			<c:import var="data" url="http://localhost:8080/JSP-SERVLET/HelloWorld.jsp"/>
		</div>
		
		<!-- Thẻ c:set --> 
		<div>
			<c:set var="income" scope="session" value="${4000*4}"/>  
			<p>Before Remove Value is: <c:out value="${income}"/></p>  
		</div>
		
		<!-- Thẻ c:remove --> 
		<div>
			<c:remove var="income"/>  
			<p>After Remove Value is: <c:out value="${income}"/></p>  
		</div>
		
		<!-- Thẻ c:catch --> 
		<div>
			<c:catch var ="catchtheException">  
			   <% int x = 2/0;%>  
			</c:catch>  
			  
			<c:if test = "${catchtheException != null}">  
			   <p>The type of exception is : ${catchtheException} <br />  
			   There is an exception: ${catchtheException.message}</p>  
			</c:if>  
		</div>
		
		<!-- Thẻ c:if -->
		<div>
			<c:set var="income" scope="session" value="${4000*4}"/>  
			<c:if test="${income > 10000}">  
			   <p>My income is: <c:out value="${income}"/><p>  
			</c:if>
		</div>
		
		<!-- Thẻ c:choose , c:when , c:otherwise  -->
		<div>
			<c:set var="income" scope="session" value="${2000*4}"/>  
			<p>Your income is : <c:out value="${income}"/></p>  
			<c:choose>  
			    <c:when test="${income <= 1000}">  
			       Income is not good.  
			    </c:when>  
			    <c:when test="${income > 1000}">  
			        Income is very good.  
			    </c:when>  
			    <c:otherwise>  
			       Income is undetermined...  
			    </c:otherwise>  
			</c:choose>
		</div>
		
		<!-- Thẻ c:forEach -->
		<div>
			<c:forEach var="j" begin="1" end="3">  
			   Item <c:out value="${j}"/><p>  
			</c:forEach>
		</div>
		
		<!-- Thẻ c:forTokens -->
		<div>
			<c:forTokens items="Do-Tien-Anh" delims="-" var="name">  
			   <c:out value="${name}"/><p>  
			</c:forTokens>
		</div>
		
		<!-- Thẻ c:param -->
		<div>
			
		</div>
			
		<!-- Thẻ c:redirect -->
		<div>
			<c:set var="url" value="2" scope="request"/>  
			<c:if test="${url<1}">  
				<c:redirect url="http://localhost:8080/JSP-SERVLET/HelloWorld.jsp"/>  
			</c:if>  
			<c:if test="${url>1}">  
				<c:redirect url="http://localhost:8080/JSP-SERVLET/form-demo.jsp"/>  
			</c:if>
		</div>
		
		<!-- Thẻ c:url -->
		<div>
			<c:url value="/from-demo.jsp"/>  
		</div>
		
	</body>
</html>