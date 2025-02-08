package com.ryujm.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ryujm.common.MysqlService;

@WebServlet("/db/site/create")
public class SiteCreateController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `site_address`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "')\r\n"
				+ ";";
				
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/site/SiteList.jsp");
		
	}
	
	
}
