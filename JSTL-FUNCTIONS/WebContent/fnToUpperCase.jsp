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
	<p>fn:toUpperCase() chuyển đổi tất cả các ký tự của chuỗi thành chữ hoa.
	Nó được sử dụng để thay thế bất kỳ ký tự chữ thường nào trong chuỗi
	đầu vào bằng ký tự chữ hoa tương ứng.</p><hr>
	
	<c:set var="site" value="javatpoint.com"/>  
	<c:set var="author" value="Sonoo Jaiswal"/>  
	Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.
</body>
</html>