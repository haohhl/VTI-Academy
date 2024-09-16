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
	<c:if test="${student != null }">
		<form action="update" method="post">
	</c:if>
	<c:if test="${student == null }">
		<form action="insert" method="post">
	</c:if>
	
	<c:if test="${student != null }">
		<input type="hidden" name="id" value="<c:out value='${student.id }'/>" />
	</c:if>
				
	<form>
		<fieldset>
				<label>First Name</label>
				<input type="text" value="<c:out value='${student.firstName }' />" name="firstName" required="required"/>
		</fieldset>
		<fieldset>
				<label>Last Email</label>
				<input type="text" value="<c:out value='${student.lastName }' />" name="lastName" required="required"/>
		</fieldset>
		<fieldset>
				<label>Email</label>
				<input type="text" value="<c:out value='${student.email }' />" name="email" required="required"/>
		</fieldset>
		
		<button type="submit">Save</button>
	</form>
	
</body>
</html>