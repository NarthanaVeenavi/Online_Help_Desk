package com.student.model;

public class Student {

	
	private int id;
	private String fname;
	private String lname;
	private String password;
	private String username;
	private String email;
	private String phone;
	private String specialization;
	private int semester;
	
	public Student(int id, String fname, String lname, String password, String username, String email,
			String phone, String specialization, int semester) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.specialization = specialization;
		this.semester = semester;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getPassword() {
		return password;
	}


	public String getUsername() {
		return username;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getSpecialization() {
		return specialization;
	}


	public int getSemester() {
		return semester;
	}

}
