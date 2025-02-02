<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>책 목록</title>
</head>
<body>
	<%
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>() {
		    { 
		        put("id", 1000);
		        put("title", "아몬드"); 
		        put("author", "손원평"); 
		        put("publisher", "창비");
		        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788936456788.jpg");
		    } 
		};
		list.add(map);
		
		map = new HashMap<String, Object>() {
		    { 
		        put("id", 1001);
		        put("title", "사피엔스"); 
		        put("author", "유발 하라리"); 
		        put("publisher", "김영사");
		        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
		    } 
		};
		list.add(map);
		
		map = new HashMap<String, Object>() {
		    { 
		        put("id", 1002);
		        put("title", "코스모스"); 
		        put("author", "칼 세이건"); 
		        put("publisher", "사이언스북");
		        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
		    } 
		};
		list.add(map);
		
		map = new HashMap<String, Object>() {
		    { 
		        put("id", 1003);
		        put("title", "나미야 잡화점의 기적"); 
		        put("author", "히가시노 게이고"); 
		        put("publisher", "현대문학");
		        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791167901484.jpg");
		    } 
		};
		list.add(map);
	%>
<div class="container">
	<h1 class="text-center">책 목록</h1>
	<table class="table">
		<thead>
			<tr>
				<td>id</td>
				<td>표지</td>
				<td>제목</td>
			</tr>
		</thead>
		<tbody>
		<% for(Map<String, Object> bookInfo:list) { %>
		<form metod="get" action="/jsp/test/test08-info.jsp?bookId=<%=bookInfo.get("id") %>">
			<tr>
				<td name="bookId"><%=bookInfo.get("id") %></td>
				<td><img alt="책 표지" class="w-25" src="<%=bookInfo.get("image") %>" href="<%=bookInfo.get("image")%>"></td>
				<td><a name="book" type="submit" href="./jsp/test/test08-info.jsp"><%=bookInfo.get("title") %></a></td>
			</tr>
		<% }%> 
		</tbody>
		</form>
	</table>
</div>











<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>