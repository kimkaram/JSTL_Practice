<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testFunctions</title>
</head>
<body>
	<h1>jstl functions library test</h1>
		<h2>문자열 관련 함수 태그임.</h2>
			el 안에서 사용하거나, value 속성에 처리된 결과를 대입함 <br>
		<c:set var="str" value="How are you?" />
			str : ${str } <br>
			모두 대문자로 : ${fn:toUpperCase(str) } <br>
			모두 소문자로 : ${fn:toLowerCase(str) } <br>
			are 의 위치는 : ${fn:indexOf(str, "are") } <br>
			are 를 were로 바꿈 : ${fn:replace(str, "are", "were") } <br>
			문자열 길이(글자갯수) : ${fn:length(str) } <br>
			are 분리 추출 : ${fn:substring(str, 4, 7) } <br>





<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
