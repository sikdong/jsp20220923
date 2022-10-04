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
	<c:if test="${not empty param.name and not empty param.address }" var="nameAddress">
		<p>${param.name }님의 주소는 ${param.address} 입니다</p>
	</c:if>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis suscipit tenetur ex commodi id ratione sit adipisci. Voluptatibus repellendus tempora asperiores amet voluptas temporibus aperiam dignissimos architecto quia natus mollitia?.</p>

	<c:if test="${nameAddress }">
		<p>이름과 주소가 모두 있습니다.</p>
	</c:if>
</body>
</html>