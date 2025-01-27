<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<div class="container">
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] calculate = request.getParameterValues("calculate");
		
		double result = 0;
		String stringResult = "";
		for(int i = 0; i < calculate.length; i++){
			if(calculate[i].equals("yard")) {
				result = length * 1.09361;
				stringResult += result + "yd <br>";
			} else if(calculate[i].equals("feet")){
				result = length * 3.28084;
				stringResult += result + "ft <br>";
			} else if(calculate[i].equals("inch")) {
				result = length * 39.3701;
				stringResult += result + "in <br>";
			} else if(calculate[i].equals("meter")){
				result = length * 0.01;
				stringResult += result + "m <br>";
			}
		}
		String[] lastResult = stringResult.split(" ");
		
	%>
	<h3>변환결과</h3>
	<b>	<%=length%>cm 
		<hr>
		<%=stringResult%>
	</b>
		
	</div>

</body>
</html>