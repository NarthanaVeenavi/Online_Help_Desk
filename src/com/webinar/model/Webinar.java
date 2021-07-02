package com.webinar.model;

public class Webinar {
	
	private int webinarId;
	private String lname;
	private String fname;
	private String semester;
	private String Lemail;
	private String date;
	private String module;
	private String description;
	
	public Webinar(int webinarId, String lname, String fname, String semester, String Lemail, String date,
			String module, String description) {
		super();
		this.webinarId = webinarId;
		this.lname = lname;
		this.fname = fname;
		this.semester = semester;
		this.Lemail = Lemail;
		this.date = date;
		this.module = module;
		this.description = description;
	}

	public int getWebinarId() {
		return webinarId;
	}

	public String getLname() {
		return lname;
	}

	public String getFname() {
		return fname;
	}
	public String getSemester() {
		return semester;
	}

	public String getLemail() {
		return Lemail;
	}
	public String getDate() {
		return date;
	}

	public String getModule() {
		return module;
	}

	public String getDescription() {
		return description;
	}

	
	
	
	
	

}
