<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chapter07.*" %>
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
<%-- request에 attribute 추가해서 --%>
<%
Map<String, Book> map= Map.of("book1", new Book("java", 100), "book2", new Book("jsp", 500));
request.setAttribute("books", map);

%>
<jsp:include page="13sub.jsp"></jsp:include>
</body>
</html>