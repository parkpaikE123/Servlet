<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>test03</title>
</head>
<body>

	<%
		Date date = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("H시 m분 s초");
		
		String dateString = "오늘 날짜 " + dateFormatter.format(date);
		String timeString = "현재 시간 " + timeFormatter.format(date);
		
		// 어떤 정보를 전달받고 싶은지 전달 받는다.
		// 시간을 보여줄지, 날짜를 보여줄지 
		// what = date - 날짜, time - 시간
		String what = request.getParameter("what");
		
		String result = null; 
		if(what.equals("date")){
			// 날짜를 선택
			result = dateString;
		} else {
			// 시간을 선택
			result = timeString;
		}
		
	%>

	<div class="container">
		
		<div class="display-3"><%=result %></div>
		
		
	</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>