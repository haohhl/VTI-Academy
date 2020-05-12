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
	<p>fn:endsWith() được sử dụng để kiểm tra nếu một chuỗi đầu vào kết thúc
	với hậu tố được chỉ định. Nếu chuỗi kết thúc bằng một hậu tố được chỉ định,
	nó sẽ trả về true nếu không sai.</p><hr>

	<c:set var="String" value="Welcome to javatpoint"/>
	  
	<c:if test="${fn:endsWith(String, 'programming')}">  
		<p>String ends with programming<p>  
	</c:if>  
	
	<c:if test="${fn:endsWith(String, 'JSP')}">  
		<p>String ends with JSP<p>  
	</c:if> 
</body>
</html>