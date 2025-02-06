<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ryujm.common.MysqlService" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>목록 출력하기</title>
</head>
<body>
	
<% 
	MysqlService mysqlService = new MysqlService();
	
	mysqlService.connect();
	
	ResultSet resultSet = mysqlService.select("SELECT `name`, `url` FROM `site_address` ORDER BY `id` DESC;");
	
%>
	
	
	<div class="container">
		<h2 class="text-center">즐겨찾기</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>edit</th>
				</tr>
			</thead>
			<tbody>
			
			<%while(resultSet.next()) {%>
				<tr>
					<td><%= resultSet.getString("name")%></td>
					<td><a href="<%= resultSet.getString("url")%>" target="_blank"><%= resultSet.getString("url") %></a></td>
					<td><a href="/db/site/siteDelete">삭제</a></td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>	




    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script> 
</body>
</html>