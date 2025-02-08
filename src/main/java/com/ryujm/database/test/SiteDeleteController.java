package com.ryujm.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ryujm.common.MysqlService;

@WebServlet("/db/site/delete")
public class SiteDeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		mysqlService.update("DELETE FROM `site_address` WHERE `id` =" + id + ";");
		
		response.sendRedirect("/db/site/SiteList.jsp");
		
	}
	
}
