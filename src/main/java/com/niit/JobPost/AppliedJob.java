package com.niit.JobPost;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.JobBean.Job;
import com.niit.JobBean.dao.JobDao;


@WebServlet("/AppliedJob")
public class AppliedJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String jobpost=request.getParameter("jobpost");
		String mail=request.getParameter("mail");
		System.out.println("jobpost"+jobpost);
		System.out.println("c-mail"+mail);
		try {Job Ajobs =JobDao.applylist(jobpost, mail);
		 request.setAttribute("ApplyJobList",Ajobs);
		 request.getRequestDispatcher("Apply.jsp").forward(request, response);
	}
		catch (SQLException e) {System.out.println(e);}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {doGet(request, response);}

}
