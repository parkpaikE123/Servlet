package com.ryujm.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ryujm.common.MysqlService;

@WebServlet("/db/site/siteDelete")
public class SiteDeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "DELETE FROM `site_address` WHERE `name`=" + name + ";";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/site/SiteList.jsp");
		
	}
	
}
