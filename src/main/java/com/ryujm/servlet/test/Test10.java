package com.ryujm.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10 extends HttpServlet{

	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}		
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println(""
				+ "<html>"
				+ "		<head><title>사용자 정보 확인</title></head>"
				+ "		<body>");
		
		String checkId = userMap.get(id);
		String checkPw = userMap.get(password);
		String name = userMap.get("김인규");
		
		// 요건 다시해보자
		
		
		out.println("	</body>"
				+ "	</html>");
		
	}
	
}
