package com.ryujm.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test07")
public class Test07 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		if(address.contains("서울시")) {
			
		} else {
			out.println("배달 불가 지역입니다");
			return;
		}
		if(card.contains("신한카드")) {
			out.println("결제 불가 카드입니다");
			return;
		}
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title></title></head>\n"
				+ "		<body>\n");
		
		out.println(address + "로 배달 준비중\n"
				+ "<hr> 결제 금액 : " + price + "원\n");
		
		out.println(""
				+ "		</body>\n"
				+ "</html>");
		
	}
}
