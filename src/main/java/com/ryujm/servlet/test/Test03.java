package com.ryujm.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test03")
public class Test03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>"
				+		"<head><title>test03</title></head>\n"
				+ "<body>"
				+ "<h1>[단독] 고양이가 야옹해</h1>\n"
				+ "기사 입력시간 : 2025/01/20 19:46:30 "
				+ "<hr> 끝"
				+ "</body>\n"
				+	"</html>");
	}
	
}