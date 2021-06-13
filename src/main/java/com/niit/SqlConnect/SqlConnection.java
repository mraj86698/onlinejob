package com.niit.SqlConnect;
import java.sql.*;

public class SqlConnection {
	
	Connection conn=null;
	public static Connection dbConnector()
	{
	    try {
	    	
	    	String url = "jdbc:mysql://localhost:3306/skillmap";
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection (url, "root", "");
	    
	    	return conn;
	    	
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    	return null; 	
	    }
	}

}