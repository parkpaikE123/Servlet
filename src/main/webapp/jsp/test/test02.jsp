<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bmi 수치</title>
</head>
<body>
	<% 
		int tall = Integer.parseInt(request.getParameter("tall"));
		int weight = Integer.parseInt(request.getParameter("weight"));
	%>
	<h2>BMI 측정 결과</h2>
	<div>
		<h2>당신은
	</div>
	<%	
		String result;
		double bmi = weight / (tall/100.0) * (tall/100.0);
		if(bmi <= 30) {
			result = "비만";
		} else if(bmi >= 25) {
			result = "과체중";
		} else if(bmi >= 18.5 ) {
			result = "정상";
		} else {
			result = "저체중";
		}
	%>
	<%= result %>입니다.</h2>
</body>
</html>