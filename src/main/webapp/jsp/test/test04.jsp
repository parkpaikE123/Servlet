<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙 연산</title>
</head>
<body>

	<div class="container">
		<h2>계산 결과</h2>
		<%
			request.getParameter("number1");
			request.getParameter("number2");
		%>
	</div>

</body>
</html>