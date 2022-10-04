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
<title>Insert title here</title>
</head>
<body>
	<h1>jstl core remove : attribute(el variable) 삭제</h1>
	<c:set var="attr1" value="val1"></c:set>
	<p>${attr1 }</p>
	
	<c:remove var="attr1"></c:remove> <%-- 모든 영역의 attribute 삭제 --%>
	<p>${empty attr1 }</p>
	<%-- scope : 특정 영역의 attribute 만 삭제할 때 사용  --%>
	<c:remove var="attr1" scope="page"></c:remove>
	<c:remove var="attr1" scope="request"></c:remove>
	<c:remove var="attr1" scope="session"></c:remove>
	<c:remove var="attr1" scope="application"></c:remove>
</body>
</html>