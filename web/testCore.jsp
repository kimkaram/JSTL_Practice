<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testCore</title>
</head>
<body>
	<h1>jstl core library test</h1>
	<hr>
	<h4>c:set 태그 : 변수 만들기</h4>
		<c:set var="num1" value="100" />
		<c:set var="num2" value="200" />
			num1 변수 값 : ${num1 } <br>
			num2 변수 값 : ${num2 } <br>
		<c:set var="sum" value="${num1 + num2 }" scope="session" />
			sum 변수 값 : ${sum } <br>
			<%
			int n1 = 111, n2 = 222;
			%>
		<c:set var="tot" value="<%= n1 + n2 %>" />
			tot 변수 값 : ${tot } <br>
	<hr>
	<h4>c:set 태그 : 배열 만들기</h4>
		<c:set var="array" scope="request">
			red, green, yellow, pink, blue, magenta
		</c:set>
			array 배열 값 : ${array } <br>
	<hr>
	<h4>c:remove 태그 : 변수 삭제하기</h4>
		<c:remove var="sum" scope="session"/>
			제거한 sum 변수 값 확인 : ${sum } <br>
	<hr>
	<h4>c:out 태그: 출력하기</h4>
		그대로 출력 : <c:out value="<h2>태그로 출력하기</h2>" escapeXml="true" />
	<br>
		태그 해석해서 출력 : <c:out value="<h2>태그로 출력하기</h2>" escapeXml="false" />
	<br>
		전송 온 값 출력 : <c:out value="${param.name }" default="손님" /> <br>
	<hr>
	<h4>c:if 태그 : if문과 같음</h4>
		<c:if test="${num1 < num2 }">num2 가 크다.</c:if>
		<c:if test="${num1 >= num2 }">num1 이 크거나 같다.</c:if>
	<br>
	<hr>
	<h4>c:choose 태그 : switch 문과 같은 일을 함.</h4>
		<c:set var="no" value="3" />
			<c:choose>
				<c:when test="${no eq 1 }">반갑습니다.<br></c:when>
				<c:when test="${no eq 2 }">안뇽하세요.<br></c:when>
				<c:when test="${no eq 3 }">환영합니다.<br></c:when>
				<c:otherwise>어서오세요.<br></c:otherwise>
			</c:choose>
	<hr>
	<h4>c:forEach 태그 : for 문과 for each 문과 같은 태그임.</h4>
		<c:forEach begin="1" end="10">
			반복확인<br>
		</c:forEach>
	<hr>
		<c:forEach var="cnt" begin="1" end="10" step="2">
			${cnt } <br>
		</c:forEach>	
	<hr>
		<c:forEach var="size" begin="1" end="7">
			<font size="${size }">글자크기 ${size }</font> <br>
		</c:forEach>
	<hr>
		<c:forEach items="${array }" var="color">
			<font color="${color }">글자색 적용 : ${color }</font>
		</c:forEach>
	<hr>
		<%
			java.util.ArrayList<String> bookList = new java.util.ArrayList<String>();
			bookList.add("java");
			bookList.add("oracle");
			bookList.add("jdbc");
			bookList.add("html5");
			bookList.add("css3");
			bookList.add("javascript");
			bookList.add("jquery");
			bookList.add("servlet");
			bookList.add("jsp");
			bookList.add("spring");
			bookList.add("mybatis");
		%>
		<c:forEach items="<%= bookList %>" var="book" varStatus="status">
			${status.count } : ${book } <br>
		</c:forEach>
	<hr>
		<h4>c:forTokens 태그 : java.utilStringTokenizer 클래스와 같은 기능을 수행하는 태그임.</h4>
			<ul>
				<c:forTokens items="yellow,pink,blue,green,red" delims="," var="clr">
					<li>${clr }</li>
				</c:forTokens>
			</ul>
	<hr>
		<c:forTokens items="core/fmt*sql xml-functions" delims="/* -" var="item">
			${item }<br>
		</c:forTokens>
	<hr>
		<h4>c:url 태그 : 다른 jsp 페이지나 서블릿으로 연결 처리할 때 사용하는 태그임.</h4>
			<a href="testFmt.jsp?no=123">testFmt 로 이동</a><br>
				<c:url var="movetf" value="testFmt.jsp">
					<c:param name="no" value="123" />		
				</c:url>
			<a href="${movetf }">testFmt 로 이동</a>
	<hr>
		<h4>c:import 태그 : jsp include 지시자 또는 표준액션태그인 jsp:include와 같은 기능을 수행하는 태그</h4>
			<c:import url="testImport.jsp" />
			
			
	
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
