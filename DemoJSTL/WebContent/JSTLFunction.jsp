<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo Jstl Function</title>
</head>
<body>

	<h4>fn:contains example</h4>
	<p>Kiểm tra chuỗi đầu vào có chứa chuỗi cho trước không, ở đây, nếu
		newPass không chứa old pass sẽ return false</p>
	<c:set var="oldPassword" value="HelloPass" />
	<c:set var="newPassword" value="HelloPassa" />
	<c:if test="${fn:contains(newPassword, oldPassword)}">
		<c:out
			value="New Password should not contain old password as substring" />
	</c:if>

	<h4>fn:containsIgnoreCase</h4>
	<p>Giống fn:contains nhưng nó không phân biệt hoa vs thường</p>

	<h4>fn:indexOf</h4>
	<p>Trả về vị trí của ký tự, có phân biệt hoa thường</p>
	${fn:indexOf("Tên tui là Bùi Tiến", "tui")};
	<br> ${fn:indexOf("Tên tui là Bùi Tiến", "Tui")}

	<h4>fn:escapeXml</h4>
	<p>Hiện ngôn ngữ đánh dấu.</p>
	${fn:escapeXml("<b>Tui sinh năm 99 nhé</b><hr><br>")}

	<h4>fn:join</h4>
	<%
		String[] arr = { "Bui", "Van", "Tien" };
		session.setAttribute("name", arr);
	%>
	${fn:join(name," ")}

	<h4>fn:split</h4>
	<c:set var="mes" value="Tui còn đang độc thân lắm..." />
	<c:set var="splitMess" value="${fn:split(mes,' ')}" />
	<c:forEach var="i" begin="0" end="6">
		splitMess.[${i}]:${splitMess[i]} <br>
	</c:forEach>

	<h4>fn:length</h4>
	<c:set var="string1" value="Ai độc thân giống tui hem..." />
	<c:set var="string2" value="Mình ..." />
	${fn:length("string1")}
	<br> ${fn:length("string2")}

	<h4>fn:trim</h4>
	<p>Loại bỏ khoảng trắng giữa 2 ký tự.</p>
	<c:set var="string3" value=" Ahihi, đồ ngốc....    " />
	${fn:trim(string3)}

	<h4>fn:startsWith</h4>
	<p>Kiểm tra sự bắt đầu của chuỗi</p>
	<c:set var="string4" value="This is my phone" />
	Chuỗi bắt đầu bằng từ This: ${fn:startsWith(string4, 'This')}

	<h4>fn:endsWith</h4>
	String ends with ".com": ${fn:endsWith("BeginnersBook.com", "com")}
	<br>String ends with "book.com":
	${fn:endsWith("BeginnersBook.com", "book.com")}
	<br>String ends with "Book.com":
	${fn:endsWith("BeginnersBook.com", "Book.com")}
	<br>String ends with "Book.co": ${fn:endsWith("BeginnersBook.com", "Book.co")}

	<h4>fn:substring; fn:substringAfter; fn:substringBefore</h4>
	<p>Trả về chuỗi con của 1 chuỗi</p>
	<c:set var="string5" value="My phone is IPX" />
	${fn:substring(string5, 3, 8)}
	<br> ${fn:substringAfter(string5, "is")}
	<br> ${fn:substringBefore(string5, "is")}4

	<h4>fn:toUpperCase; fn:toLowerCase</h4>

	<c:set var="string6" value="bui VAN tien" />
	${fn:toUpperCase(string6)}
	<br> ${fn:toLowerCase(string6)}

	<h4>fn:replace</h4>
	<c:set var="author" value="Chaitanya Singh" />
	<c:set var="randomstring" value="abc def abc ghi ABC" />
	${fn:replace(author, "Chaitanya", "Rahul")}
	<br> ${fn:replace(randomstring, "abc", "hello")}

</body>
</html>