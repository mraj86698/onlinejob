package com.niit.Credentials.dao;

import java.sql.*;

import com.niit.SqlConnect.SqlConnection;

public class CompanyLoginDao {
	String query = "select * from companies where mail=? and passwd=?";
	Connection con = null;

	public boolean validate(String mail, String passwd) {
		try {
			con = SqlConnection.dbConnector();
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, mail);
			st.setString(2, passwd);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;

	}
}
