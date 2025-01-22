package com.ryujm.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test06")
public class Test06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		
		String stringNumber1 = request.getParameter("number1");
		String stringNumber2 = request.getParameter("number2");
		int number1 = Integer.parseInt(stringNumber1);
		int number2 = Integer.parseInt(stringNumber2);
		
		int plus = number1 + number2;
		int minus = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		// {"addition":135, "subtraction":105, "multiplication":1800, "division":8}
		out.println("{\"addition\":" + plus + ",\"subtraction\":" + minus
				+ ",\"multiplication\":" + multi + ",\"division\":" + div + "}");
		
		
	}
	
}
