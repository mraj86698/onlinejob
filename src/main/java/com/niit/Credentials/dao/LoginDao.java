package com.niit.Credentials.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.niit.SqlConnect.SqlConnection;

public class LoginDao {

    String query = "select * from employee where email=? and passwd=?";
    Connection con = null;

    public boolean validate(String email, String passwd) {
        boolean status=false;
        try {
            con = SqlConnection.dbConnector();
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, passwd);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                status=true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;

    }

}
