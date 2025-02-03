<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<title>IPTV 채널 목록</title>
</head>
<body>

<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    String category = request.getParameter("category");
%>

	<div class="container bg-light">
			<div class="title text-center text-danger">
				<h2>Sk broadband IPTV</h2>
			</div>
		</header>
		<nav class="main-menu bg-danger d-flex align-items-center">
            <ul class="nav nav-fill w-100 font-weight-bold">
                <li class="nav-item"><a href="/jsp/test/test09.jsp" class="nav-link text-white">전체</a></li>
                <li class="nav-item"><a href="/jsp/test/test09.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
                <li class="nav-item"><a href="/jsp/test/test09.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
                <li class="nav-item"><a href="/jsp/test/test09.jsp?category=예능" class="nav-link text-white">예능</a></li>
                <li class="nav-item"><a href="/jsp/test/test09.jsp?category=영화" class="nav-link text-white">영화</a></li>
                <li class="nav-item"><a href="/jsp/test/test09.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
            </ul>
        </nav>
		<table class="table">
			<thead class="text-center">
				<th>채널</th>
				<th>채널명</th>
				<th>카테고리</th>
			</thead>
			<tbody class="text-center">
			<%for(Map<String, String> tvPro:list) {%>
				<%if(category == null || tvPro.get("category").equals(category)) {%>		
				<tr>
					<td><%= tvPro.get("ch")%></td>
					<td><%= tvPro.get("name") %></td>
					<td><%= tvPro.get("category") %></td>
				</tr>
				<%}%>							
			<%} %>
			</tbody>
		</table>
		<footer class="text-center">
			<b>Copyright 2021. marondal All Rights Reserved.</b>
		</footer>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>