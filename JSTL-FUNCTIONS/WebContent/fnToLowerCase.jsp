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
	<p>fn:toLowerCase() chuyển đổi tất cả các ký tự của chuỗi thành chữ thường.
	Nó được sử dụng để thay thế bất kỳ ký tự chữ hoa nào trong chuỗi đầu vào
	bằng ký tự chữ thường tương ứng.</p><hr>
	
	<c:set var="string" value="Welcome to JSP Programming"/>  
	${fn:toLowerCase("HELLO,")}  
	${fn:toLowerCase(string)} 
</body>
</html>