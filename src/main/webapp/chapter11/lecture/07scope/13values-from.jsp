<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="13values-to.jsp">
		<p1>주문일자 :</p1>
		<input type="date" name = "date"><br>
		<select name="prod" id="" multiple size = 5>
			<option value="shirts">셔츠</option>
			<option value="shoes">신발</option>
			<option value="pants">바지</option>
			<option value="eyeglass">안경</option>
			<option value="cap">모자</option>
		</select>
		<input type="submit" value="추가">
	</form>
</body>
</html>