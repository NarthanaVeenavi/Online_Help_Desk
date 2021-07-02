package com.webinar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webinar.DBUtil.WebinarDBUtil;

@WebServlet("/WebinarInsert")
public class WebinarInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String semester = request.getParameter("semester");
		String Lemail = request.getParameter("Lemail");
		String date =  request.getParameter("date");
		String module = request.getParameter("module");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = WebinarDBUtil.insertWebinar(fname, lname, semester, Lemail, date, module, description);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("DisplayWebinar.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
