<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	<input type="text" name="scores" value = "100">
	<br>
	<input type="text" name="scores" value = "90">
	<br>
	<input type="text" name="scores" value = "80">
	<br>
	<input type="submit" value="평균 점수 구하기">
</form>

<hr>

<%
String[] sArr = request.getParameterValues("scores");
	
if(sArr != null){
	Integer s1 = Integer.valueOf(sArr[0]);
	Integer s2 = Integer.valueOf(sArr[1]);
	Integer s3 = Integer.valueOf(sArr[2]);
	

double avg = (s1 + s2 + s3) / 3.0;
%>
<p>평균은 <%=avg %> 점입니다</p> 

<% 
}
%>

</body>
</html>