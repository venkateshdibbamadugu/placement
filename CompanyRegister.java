package com.venkat;

public class CompanyRegister {
	
	private String cName;
	private String cMail;
	private String cAddr;
	private String cUserName;
	private String cPass;
	private String cPNo;
	
	
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcMail() {
		return cMail;
	}
	public void setcMail(String cMail) {
		this.cMail = cMail;
	}
	public String getcAddr() {
		return cAddr;
	}
	public void setcAddr(String cAddr) {
		this.cAddr = cAddr;
	}
	public String getcUserName() {
		return cUserName;
	}
	public void setcUserName(String cUserName) {
		this.cUserName = cUserName;
	}
	public String getcPass() {
		return cPass;
	}
	public void setcPass(String cPass) {
		this.cPass = cPass;
	}
	public String getcPNo() {
		return cPNo;
	}
	public void setcPNo(String cPNo) {
		this.cPNo = cPNo;
	}
	
	
//create table CompanyRegister(cno number generated always as identity,cname varchar2(20),cmail varchar2(20),caddr varchar2(20),cusername varchar2(20),cpass varchar2(20),cpno varchar(12));

}
