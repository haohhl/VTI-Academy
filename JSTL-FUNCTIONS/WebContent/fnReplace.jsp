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
	<p>fn:replace() thay thế tất cả sự xuất hiện của một chuỗi bằng một
	chuỗi chuỗi khác. Nó tìm kiếm trong một chuỗi đầu vào và thay thế
	nó bằng chuỗi được cung cấp.</p><hr>
	
	<c:set var="author" value="Ramesh Kumar"/>  
	<c:set var="string" value="pqr xyz abc PQR"/>  
	${fn:replace(author, "Ramesh", "Suresh")}  
	${fn:replace(string, "pqr", "hello")}  
</body>
</html>