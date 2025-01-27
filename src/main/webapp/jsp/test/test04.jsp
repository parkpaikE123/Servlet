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
		<%
			int number1 = Integer.parseInt(request.getParameter("number1"));
			
			int number2 = Integer.parseInt(request.getParameter("number2"));
			
			String calculate = request.getParameter("calculate");
			
			double result = 0;
			if(calculate.equals("*")) {
				 result = number1 * number2;
			} else if(calculate.equals("+")) {
				result = number1 + number2;
			} else if(calculate.equals("-")) {
				result = number1 - number2;
			} else {
				result = number1 / number2;
			}
		%>
		<h2>계산 결과</h2>
		<div>
			<%=number1%><%=calculate %><%=number2 %> = <%=result%>
		</div>
	</div>

</body>
</html>