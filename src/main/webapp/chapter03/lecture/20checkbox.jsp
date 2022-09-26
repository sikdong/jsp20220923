<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 적절한 html 코드를 작성 --%>
<h1>영웅 뽑기</h1>
<hr>
<form action="" >
	<input type="text" name = "name" value ="이름">
	<br>
	<br>
	<input type="checkbox" name = "heroes" value = "캡틴아메리카"> 캡틴아메리카
	<input type="checkbox" name = "heroes" value = "아이언맨"> 아이언맨
	<input type="checkbox" name = "heroes" value = "스파이더맨"> 스파이더맨
	<input type="checkbox" name = "heroes" value = "헐크"> 헐크
	<input type="checkbox" name = "heroes" value = "블랙 위도우"> 블랙 위도우 <br>
	<input type="submit" value="전송">
</form>
<%
String name = request.getParameter("name");
String[] heroes = request.getParameterValues("heroes");

if(heroes != null){
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은 "); 	
	for (String hero : heroes){
		out.print(hero + " ");
	}
	out.print("</p>"); 
}
%>
</body>
</html>