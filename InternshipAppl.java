package com.venkat;

public class InternshipAppl {
	
	private String fName;
	private String lName;
	private String gender;
	private String dateOfBirth;
	private String eMail;
	private String mobileNo;
	private String crnLoc;
	private String ugDegree;
	private String ugStream;
	private int passOut;
	private String cName;
	private String type;
	private String status;
	private String appldate;
	
	
	
	
	
	
	

	
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getCrnLoc() {
		return crnLoc;
	}
	public void setCrnLoc(String crnLoc) {
		this.crnLoc = crnLoc;
	}
	public String getUgDegree() {
		return ugDegree;
	}
	public void setUgDegree(String ugDegree) {
		this.ugDegree = ugDegree;
	}
	public String getUgStream() {
		return ugStream;
	}
	public void setUgStream(String ugStream) {
		this.ugStream = ugStream;
	}
	public int getPassOut() {
		return passOut;
	}
	public void setPassOut(int passOut) {
		this.passOut = passOut;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAppldate() {
		return appldate;
	}
	public void setAppldate(String appldate) {
		this.appldate = appldate;
	}

	//create table InternshipAppl(fName varchar(30),lName varchar(30),gender varchar(6),dateOfBirth varchar(12),email varchar(40),mobileNo varchar(12),crnLoc varchar(100),ugDegree varchar(10),ugStream varchar(10),passOut int,cName varchar(50),appl Date default sysdate,status varchar(15) default 'updating');
	
	

}
