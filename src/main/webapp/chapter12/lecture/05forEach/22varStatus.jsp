<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<%
pageContext.setAttribute("list1", new String[] {"cap", "iron", "hulk", "thor"});
%>

<%--
getCount() : loop가 몇번째 돌고 있는지 알고 싶을때
 --%>

<c:forEach items="${list1 }" var="item" varStatus="status">
	<p>${status.count } : ${item }</p>
</c:forEach>

<hr>

<c:forEach items="${list1 }" var="item" varStatus="status">
	<c:choose>
		<c:when test="${status.count == 2}">
		<p class = "text-danger">${status.count } : ${item }</p>
		</c:when>
		<c:otherwise>
	<p class= "${status.first? 'text-primary' : ''}">${status.count } : ${item }</p>
		</c:otherwise>
	</c:choose>
</c:forEach>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>