package com.student.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.DBUtil.StudentDBUtil;
import com.student.model.Student;

@WebServlet("/DeleteStudentAccountServlet")
public class DeleteStudentAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		boolean isTrue;
		
		isTrue = StudentDBUtil.deleteCustomer(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dis1 = request.getRequestDispatcher("Register.jsp");
			dis1.forward(request, response); 
		}
		
		else {
			
			List<Student> stuDetails = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("stuDetails", stuDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response); 
		}
		
	}

}
