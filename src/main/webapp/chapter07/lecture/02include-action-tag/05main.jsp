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
	<div>
	메인 컨텐츠
	</div>
	<p>
	 name : <%=request.getParameter("name") %>
	</p>
	<div>
		<jsp:include page="05sub.jsp"></jsp:include>
	</div>
</body>
</html>