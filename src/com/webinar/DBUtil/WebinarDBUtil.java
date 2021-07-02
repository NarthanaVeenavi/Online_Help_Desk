package com.webinar.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class WebinarDBUtil {
	
	
		private static Connection con = null;
		private static Statement stmt = null;
		 
		
	
		public static boolean insertWebinar(String fname, String lname, String semester, String Lemail, String date, String module, String description) {
		
		boolean isSuccess = false;
		
		
		try
		{
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			String sql = "insert into webinar values (0, '"+fname+"', '"+lname+"', '"+semester+"', '"+Lemail+"', '"+date+"', '"+module+"', '"+description+"')";
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
		
	public static boolean updateWebinar(int webinarid, String fname, String lname, String semester, String Lemail, String date, String module, String description) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			String sql = "update webinar set fname='"+fname+"', lname='"+lname+"', semester='"+semester+"', Lemail='"+Lemail+"', date='"+date+"', module='"+module+"', description='"+description+"'" + "where webinarid='"+webinarid+"'";
			
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
	
public static boolean deleteWebinar(int webinarid) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			String sql = "delete from webinar where webinarid = "+webinarid;
			
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

}
