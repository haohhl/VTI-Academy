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
	<p>fn:startsWith() nếu một chuỗi đầu vào được bắt đầu với chuỗi con được chỉ định.
	Hàm này được sử dụng để trả về giá trị boolean. Nó cho kết quả đúng khi chuỗi
	được bắt đầu với tiền tố đã cho nếu không nó trả về kết quả sai.</p><hr>
	
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
	The string starts with "The": ${fn:startsWith(msg, 'The')}  
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
</body>
</html>