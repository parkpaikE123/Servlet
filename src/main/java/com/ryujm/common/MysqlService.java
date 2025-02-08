package com.ryujm.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private Connection connection;
	
	// 클래스를 설계하는 입장에서 
	// 해당 클래스의 객체가 하나 이상 만들어 지지 않도록 한다.
	// 하나의 객체를 공유해서 사용하도록한다.
	// Singleton pattern
	// static 멤버변수 : 객체 생성없이 사용할 수 있는 멤버변수
	private static MysqlService mysqlService = null;
	
	// static 메소드 : 객체 생성없이 호출할 수 있는 메소드
	public static MysqlService getInstance() {
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
			return mysqlService;
	}
	
	
	// 데이터 베이스 접속
	public boolean connect() {
		// database 서버 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 접속 주소, 포트, 사용할 데이터베이스
			String url = "jdbc:mysql://localhost:3306/jumdb";
			// 사용자 이름, 비밀번호 
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			return false;
					}
		return true;				
	}
	
	// 조회 쿼리 수행 기능
	public ResultSet select(String query) {
		try {
			Statement statement = connection.createStatement();
			
			return statement.executeQuery(query);
		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		}
		
	}
	// 저장, 수정, 삭제 쿼리 수행기능
	
	public int update(String query) {
		
		try {
			Statement statement;
			
			statement = connection.createStatement();
			
			return statement.executeUpdate(query);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
		
		
		
	}
	
	
	// 데이터 베이스 접속 끊기
	public boolean disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	
	
}
