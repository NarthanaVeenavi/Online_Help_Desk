package com.student.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.DBUtil.StudentDBUtil;
import com.student.model.Student;

@WebServlet("/UpdateStudentDetailsServlet")
public class UpdateStudentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String specialization = request.getParameter("specialization");
		int semester = Integer.parseInt(request.getParameter("semester"));
		
		
		boolean isTrue;
		
		isTrue = StudentDBUtil.updateStudentDetails(id, fname, lname, password, username, email, phone, specialization, semester);
		
		if(isTrue == true) {
			
			List<Student> stuDetails = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("stuDetails", stuDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
		}
		else{
			
			List<Student> stuDetails = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("stuDetails", stuDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response);
			
		}
		
		
	}

}
