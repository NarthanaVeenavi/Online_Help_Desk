package com.student.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.student.model.Student;

public class StudentDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String username, String password) {
		boolean isSuccess = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from student where username='"+username+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List <Student> getStudent(String username){
		
		ArrayList<Student> cus = new ArrayList<Student>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from student where username='"+username+"'";
			rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String passwordU = rs.getString(4);
				String userU = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				String specialization = rs.getString(8);
				int semester = rs.getInt(9);
				
				Student c = new Student(id, fname, lname, passwordU, userU, email, phone, specialization, semester);
				cus.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace(); 
		}
		
		return cus; 
	}
	
	public static boolean insertStudent(String fname, String lname, String password, String username, String email, String phone, String specialization, int semester) {
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			String sql = "insert into student values (0, '"+fname+"', '"+lname+"', '"+password+"', '"+username+"', '"+email+"', '"+phone+"', '"+specialization+"', '"+semester+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess  = true;
			}
			
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updatePassword(String email, String password) {
		
			boolean isSuccess = false;
		
			try {
			
				con = DBConnect.getConnection();
				stmt = (Statement) con.createStatement();
				String sql = "update student set password='"+password+"'" + "where email='"+email+"'";
			
				int rs = stmt.executeUpdate(sql);
			
				if(rs > 0) {
				isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			
			}
				catch(Exception e) {
					e.printStackTrace();
				}
		
			return isSuccess;
		
	}
	
	public static boolean updateStudentDetails(int id, String fname, String lname, String password, String username, String email, String phone, String specialization, int semester) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update student  set fname='"+fname+"', lname='"+lname+"', password='"+password+"', username='"+username+"', email='"+email+"', phone='"+phone+"', specialization='"+specialization+"', semester='"+semester+"'" + "where id='"+id+"' ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; 
	}
	
	public static List<Student> getStudentDetails(int  Id){
		
		ArrayList<Student> stu = new ArrayList<Student>();
		
		try {
			
	 		con = DBConnect.getConnection();
	 		stmt = con.createStatement();
	 		String sql = "select * from student where id='"+Id+"'"; 
	 		rs = stmt.executeQuery(sql);  
	 		
	 		while(rs.next()) {
	 			
	 			int id = rs.getInt(1);
	 			String fname = rs.getString(2);
	 			String lname = rs.getString(3);
	 			String password = rs.getString(4);
	 			String username = rs.getString(5);
	 			String email = rs.getString(6);
	 			String phone = rs.getString(7);
	 			String specialization = rs.getString(8);
	 			int semester = rs.getInt(9);
	 			
	 			Student st =  new Student(id, fname, lname, password, username, email, phone, specialization, semester);
	 			stu.add(st); 
	 		}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return stu; 
	}
	
	public static boolean  deleteCustomer(int id) {
		boolean isSuccess = false;
		
		 try {
			 
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql =  "delete from student where id='"+id+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 
				 isSuccess = true;
			 }
			 else {
				 isSuccess = false;
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		
		
		return isSuccess;
	}
	
}
