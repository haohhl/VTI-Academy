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
	<p>fn:toLowerCase() trả về tập hợp con của chuỗi. Nó được sử dụng
	để trả về chuỗi con của chuỗi đầu vào đã cho theo vị trí bắt đầu và
	kết thúc đã chỉ định.</p><hr>
	
	<c:set var="string" value="This is the first string."/>  
	${fn:substring(string, 5, 17)}  
</body>
</html>