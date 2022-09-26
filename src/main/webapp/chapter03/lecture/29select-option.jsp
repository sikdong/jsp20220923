<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
	
	<form action="">
		통신사 :
		<select name="tel" id="">
			<option value="sk">sk</option>
			<option value="kt">kt</option>
			<option value="lg">lg</option>
		</select>
			<br>
			<br>
		음식 : 
		<select name="foods" id="" multiple>
			<option value="한식">한식</option>
			<option value="중식">중식</option>
			<option value="양식">양식</option>
		</select>
		<br>
		<br>
			<input type="submit" value="전송">
	</form>
	
	<hr>
	
	<%
	String tel = request.getParameter("tel");
	String[] foods = request.getParameterValues("foods");
	
	if (tel == null){
		tel = "";
	}
	
	if (foods == null){
		foods = new String[]{};
	}
	
	%>
	
	<p>통신사는 <%=tel %> 입니다</p>
	선택한 음식들은 <%=String.join(",", foods) %> 입니다.
</body>
</html>