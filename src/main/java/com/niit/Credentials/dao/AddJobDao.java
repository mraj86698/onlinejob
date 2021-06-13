package com.niit.Credentials.dao;

import java.sql.* ;

import com.niit.SqlConnect.SqlConnection;

public class AddJobDao {
	
	Connection con=null;
	public int update(String loc,String area,String job,String phone,String vac,String skill,String sal,String ivdt,String ivt,String ivp ,String mail) {
		System.out.println("Update Started");
		System.out.println(loc+""+area+""+job+""+phone+""+vac+""+skill+""+sal+""+ivdt+""+ivt+""+ivp+""+mail);
		con=SqlConnection.dbConnector();
		String query="insert into jobpost(loc,area,job,phone,vac,skill,sal,ivdt,ivt,ivp,mail) values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement st= con.prepareStatement(query);
			System.out.println("PST set");
			st.setString(1,loc);
			st.setString(2,area);
			st.setString(3,job);
                        st.setString(4,phone);
			st.setString(5,vac);
                        st.setString(6,skill);
			st.setString(7,sal);
			st.setString(8,ivdt);
			st.setString(9,ivt);
			st.setString(10,ivp);
                        st.setString(11, mail);
			
			
			System.out.println("pst done");
			int i=st.executeUpdate();
			System.out.println("added job::DAo.update");
			return i;
		} catch (SQLException e) {System.out.println(e);System.out.println("something went wrong");}
		return 0;
	}


/*public void AddJobToDB(String loc,String area,String jobpost,String vac,String salary,String ivdt,String ivt,String ivtp,String skill,String mail) {
	System.out.println("AddJobToDB Called");
	System.out.println(loc+""+area+""+jobpost+""+vac+""+salary+""+ivdt+""+ivt+""+skill+""+mail);
	
	String Query="INSERT INTO jobpost (`location`,`FunctionalArea`,`jobpost`,`vacany`,`salary`,`interviewDate`,`interviewTime`,`interviewPlace`,`Skill`,`email`) VALUES (?,?,?,?,?,?,?,?,?,?)";
	
	try {
		PreparedStatement pst=con
		
	}
	catch(SQLException e) {System.out.println(e);	System.out.println("something went wrong");}
	
}*/
}
