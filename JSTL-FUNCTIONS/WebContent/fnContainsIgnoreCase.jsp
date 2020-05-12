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
	<p>fn:containsIgnoreCase() được sử dụng để kiểm tra xem một chuỗi đầu vào có chứa chuỗi con được chỉ định
	như một cách không phân biệt chữ hoa chữ thường. Trong khi tìm kiếm chuỗi con được chỉ định, nó bỏ qua trường hợp.</p><hr>

	<c:set var="String" value="Welcome to javatpoint"/>
	  
	<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
		<p>Found javatpoint string<p>
	</c:if>
	  
	<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string<p>
	</c:if>
</body>
</html>