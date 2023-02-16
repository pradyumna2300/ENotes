package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	public static Connection getConn()
	{
		Connection conn=null;
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SUDHIR","SUDHIR");
	
	} catch (Exception e) {
		System.out.println("Error "+e);
	}
	return conn;
	}


}
