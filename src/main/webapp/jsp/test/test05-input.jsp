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
		<form method="post" action="/jsp/test/test05.jsp">
			<h2>길이 변환</h2>
			<input type="text" class="form-control" name="length">cm
			<div>
				<label >인치</label><input type="checkbox" name="calculate" value="inch">
				<label >야드</label><input type="checkbox" name="calculate" value="yard">
				<label >피트</label><input type="checkbox" name="calculate" value="feet">
				<label >미터</label><input type="checkbox" name="calculate" value="meter">
			</div>
			<button type="submit">변환</button>
		</form>
	</div>

</body>
</html>