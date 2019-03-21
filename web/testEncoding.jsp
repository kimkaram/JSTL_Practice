<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testEncoding</title>
</head>
<body>
	<h1>testFmt.jsp 에서 전송한 test 값 조회</h1>
		<%-- <%
			request.setCharacterEncoding("utf-8");
			String value = request.getParameter("test");
		%>
		전송받은 값 : <%= value %> <br> --%>
		<fmt:requestEncoding value="utf-8" />
			<c:set var="value" value="${param.test }" /> <!-- param이 request.getParameter임  -->
				전송받은 값 : ${value } <br>
		
	




<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
