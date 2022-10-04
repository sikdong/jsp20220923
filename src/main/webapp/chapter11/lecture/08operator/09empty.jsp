<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>empty 연산자</h3>
	<p>빈 문자열, null, 길이가 0인 배열/리스트/SET/Map 일때 true</p>
	<%
	pageContext.setAttribute("attr1", "");
	pageContext.setAttribute("attr2", new String[] {});
	pageContext.setAttribute("attr4", Set.of());
	pageContext.setAttribute("attr5", Map.of());
	%>
	
	<p>${empty attr1 }</p>
	<p>${empty attr2 }</p>
	<p>${empty attr3 }</p> <%-- 존재하지않는 값(null) 이기 때문  --%>
	<p>${empty attr4 }</p>
	<p>${empty attr5 }</p>
</body>
</html>