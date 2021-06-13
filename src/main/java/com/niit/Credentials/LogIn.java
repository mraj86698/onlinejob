package com.niit.Credentials;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Credentials.dao.LoginDao;

@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String pass = request.getParameter("passwd");
		HttpSession session = request.getSession();
		System.out.println("Mail id "+email);
		System.out.println("Password "+pass);
		 
		LoginDao dao = new LoginDao();
                session.setAttribute("status", false);
		if (dao.validate(email, pass)) {
			
			//Session Creation
			 
			session.setAttribute("username", email);
			
			//role-check
			if (email.equals("admin23@gmail.com")&&pass.equals("123456")) {
				RequestDispatcher dd = request.getRequestDispatcher("Admin.jsp");
				dd.forward(request, response);

			} else {
				response.sendRedirect("ApplicantPage.jsp");
			}

		} else if (email == "" && pass == "") {
			
            request.setAttribute("errorValue", "False");
            RequestDispatcher rd = request.getRequestDispatcher("Error");
            rd.forward(request, response);

		} else {
                    out.println("<script>alert('Login fail.')</script>");
//			RequestDispatcher d = request.getRequestDispatcher("HomePage.html");
//			d.forward(request, response);
		response.setHeader("Refresh","1;HomePage.html");
                }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
}
}