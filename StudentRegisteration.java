package com.venkat;

public class StudentRegisteration {
	
	private String fName;
	private String lName;
	private String dob;
	private String eMail;
	private String passwd;
	private String cnt_No;
	
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getCnt_No() {
		return cnt_No;
	}
	public void setCnt_No(String cnt_No) {
		this.cnt_No = cnt_No;
	}
	
	
//create table StudentRegisteration(fname varchar(20),lname varchar(20),dob varchar(12),email varchar(30),passwd varchar(10),cnt_no varchar(12));
}
