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
	 이름 : <input type="text" name = "name">
	 <hr>
	<br>	 
	 배송지 선택하기 : 
	 <br>
	 <input type="radio" name="location" value="home"> 집 <br>
	 <input type="radio" name="location" value="work"> 직장 <br>
	 <input type="radio" name="location" value="other"> 다른 곳 <br>
	 
	 결제 수단 선택하기 :
	 <br>
	 <input type="radio" name="pay" value = "현금"> 현금 
	 <br>
	 <input type="radio" name="pay" value="카드"> 카드
	 <br>
	 <input type="radio" name="pay" value="무통장 입금"> 무통장 입금
	 <br>
	 
	 <input type="submit" value="전송"> 
	 
	</form>
	
	<hr>
	
	<%
	String name = request.getParameter("name");
	String loc = request.getParameter("location");
	String pay = request.getParameter("pay");
	%>
	
	<p>
	<%=name %> 님의 배송지는 <%=loc %> 입니다.
	<br>
	결제 수단은 <%=pay %> 입니다.
	</p>
</body>
</html>