<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>

<%--1. 점수들의 평균 구하기
스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.--%>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	int index = 0;
	double average = 0;
	for(int i = 0; i < scores.length; i++) {
		sum += scores[i];
		index ++;
	}
	average = sum / index;
%>
	<h3>점수 평균은<%= average %>입니다.</h3>
<%--2. 채점 결과 
아래 채점표로 시험점수가 몇점인지 구하세요.--%>
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

	int add = 0;
	for(int i = 0; i < scoreList.length(); i ++) {
		
	}
%>

<%-- 3. 1부터 n까지의 합계를 구하는 함수
jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
만든 함수를 이용해서 50까지의 합의 결과를 출력하세요. --%>
<%-- 4. 나이 구하기
주어진 생년월일을 가진 사람의 나이를 구하세요.
String birthDay = "20010820"; --%>

</body>
</html>