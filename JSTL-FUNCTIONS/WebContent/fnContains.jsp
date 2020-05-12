<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>  
<head>  
<meta charset="UTF-8">
<title>Using JSTL Functions</title>  
</head>  
<body>  
	<p>fn:contains() được sử dụng để kiểm tra nếu chuỗi chứa chuỗi con được chỉ định.
	Nếu chuỗi con được chỉ định được tìm thấy trong chuỗi, nó trả về true nếu không sai.</p><hr>
	
	<c:set var="String" value="Welcome to javatpoint"/>  
	
	<c:if test="${fn:contains(String, 'javatpoint')}">  
		<p>Found javatpoint string<p>  
	</c:if>  
	
	<c:if test="${fn:contains(String, 'JAVATPOINT')}">  
		<p>Found JAVATPOINT string<p>  
	</c:if>
</body>  
</html>  