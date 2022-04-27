package com.venkat;

public class AddInternshipDetails {
	
	private String cName;
	private String jName;
	private String jMode;
	private String interDur;
	private String apldt;
	private String skills;
	private String jDscr;
	private String stipen;
	private String aboutCmp;
	private String whoCanApply;
	private int No_Vacancy;
	
	
	
	
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getjName() {
		return jName;
	}
	public void setjName(String jName) {
		this.jName = jName;
	}
	public String getjMode() {
		return jMode;
	}
	public void setjMode(String jMode) {
		this.jMode = jMode;
	}
	public String getInterDur() {
		return interDur;
	}
	public void setInterDur(String interDur) {
		this.interDur = interDur;
	}
	public String getApldt() {
		return apldt;
	}
	public void setApldt(String apldt) {
		this.apldt = apldt;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getjDscr() {
		return jDscr;
	}
	public void setjDscr(String jDscr) {
		this.jDscr = jDscr;
	}
	public String getStipen() {
		return stipen;
	}
	public void setStipen(String stipen) {
		this.stipen = stipen;
	}
	
	public String getAboutCmp() {
		return aboutCmp;
	}
	public void setAboutCmp(String aboutCmp) {
		this.aboutCmp = aboutCmp;
	}
	public String getWhoCanApply() {
		return whoCanApply;
	}
	public void setWhoCanApply(String whoCanApply) {
		this.whoCanApply = whoCanApply;
	}
	public int getNo_Vacancy() {
		return No_Vacancy;
	}
	public void setNo_Vacancy(int no_Vacancy) {
		No_Vacancy = no_Vacancy;
	}
	
	
	
	//create table AddInternshipDetails(cname varchar(50),jname varchar(50),jmode varchar(15),interdur varchar(10),stipen varchar(10),apldt varchar(15),skills varchar(100),jdsc varchar(300),aboutcmp varchar2(400),whocanapply varchar2(300),novacancy int);

}
