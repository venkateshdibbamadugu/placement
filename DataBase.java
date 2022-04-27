package com.venkat;

import java.sql.*;
import java.util.*;

public class DataBase {
	
	Connection con=null;
	public Connection getCon()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","DS");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	}
	
	public int stdRegister(StudentRegisteration std)
	{
		int x=0;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("insert into StudentRegisteration(fname,lname,dob,email,passwd,cnt_no)values(?,?,?,?,?,?)");
			ps.setString(1,std.getfName());
			ps.setString(2,std.getlName());
			ps.setString(3,std.getDob());
			ps.setString(4,std.geteMail());
			ps.setString(5,std.getPasswd());
			ps.setString(6,std.getCnt_No());
			x=ps.executeUpdate();
			System.out.println("vekat");	  		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int cpyRegister(CompanyRegister cp)
	{
		int x=0;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("insert into CompanyRegister(cname,cmail,caddr,cusername,cpass,cpno)values(?,?,?,?,?,?)");
			ps.setString(1,cp.getcName());
			ps.setString(2,cp.getcMail());
			ps.setString(3,cp.getcAddr());
			ps.setString(4,cp.getcUserName());
			ps.setString(5,cp.getcPass());
			ps.setString(6,cp.getcPNo());
			
			x=ps.executeUpdate();
			System.out.println("vekates");	  		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public boolean getCmpLogin(String uMail,String pass)
	{
		boolean result=false;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select cmail,cpass from CompanyRegister where cmail=? and cpass=?");
			ps.setString(1, uMail);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				result=true;
			}
		}
		catch(Exception e)
		{
			
		}
		
		return result;
	}
	
	public boolean getstdLogin(String uMail,String pass)
	{
		boolean result=false;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select email,passwd from StudentRegisteration where email=? and passwd=?");
			ps.setString(1, uMail);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				result=true;
				System.out.println("fdsjghgh");
			}
			
		}
		catch(Exception e)
		{
			
		}
		
		return result;
	}
	
	public int addInternship(AddInternshipDetails add)
	{
		int x=0;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("insert into AddInternshipDetails values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,add.getcName());
			ps.setString(2,add.getjName());
			ps.setString(3,add.getjMode());
			ps.setString(4,add.getInterDur());
			ps.setString(5,add.getStipen());
			ps.setString(6,add.getApldt());
			ps.setString(7,add.getSkills());
			ps.setString(8,add.getjDscr());
			ps.setString(9,add.getAboutCmp());
			ps.setString(10,add.getWhoCanApply());
			ps.setInt(11,add.getNo_Vacancy());
			
			x=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public ArrayList<AddInternshipDetails> viewInternship(AddInternshipDetails view)
	{
	    ArrayList<AddInternshipDetails> list=new ArrayList<>();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from AddInternshipDetails");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				view=new AddInternshipDetails();
				view.setcName(rs.getString(1));
				view.setjName(rs.getString(2));
				view.setjMode(rs.getString(3));
				view.setInterDur(rs.getString(4));
				view.setStipen(rs.getString(5));
				view.setApldt(rs.getString(6));
				view.setSkills(rs.getString(7));
				view.setjDscr(rs.getString(8));
				list.add(view);
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return list;
	}
	
	public AddInternshipDetails viewMoreInternshipDetails(AddInternshipDetails view,String cName)
	{
	    ArrayList<AddInternshipDetails> list=new ArrayList<>();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from AddInternshipDetails where cname=?");
			ps.setString(1, cName);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				view=new AddInternshipDetails();
				view.setcName(rs.getString(1));
				view.setjName(rs.getString(2));
				view.setjMode(rs.getString(3));
				view.setInterDur(rs.getString(4));
				view.setStipen(rs.getString(5));
				view.setApldt(rs.getString(6));
				view.setSkills(rs.getString(7));
				view.setjDscr(rs.getString(8));
				view.setAboutCmp(rs.getString(9));
				view.setWhoCanApply(rs.getString(10));
				view.setNo_Vacancy(rs.getInt(11));
				//list.add(view);
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return view;
	}
	public int internAppl(InternshipAppl appl)
	{
		int x=0;
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("insert into InternshipAppl(fName,lName,gender,dateOfBirth,email,mobileNo,crnLoc,ugDegree,ugStream,passOut,cName)values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,appl.getfName());
			ps.setString(2,appl.getlName());
			ps.setString(3,appl.getGender());
			ps.setString(4,appl.getDateOfBirth());
			ps.setString(5,appl.geteMail());
			ps.setString(6,appl.getMobileNo());
			ps.setString(7,appl.getCrnLoc());
			ps.setString(8,appl.getUgDegree());
			ps.setString(9,appl.getUgStream());
			ps.setInt(10,appl.getPassOut());
			ps.setString(11,appl.getcName());
			
			x=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public ArrayList<CompanyRegister> companyList(CompanyRegister view)
	{
	    ArrayList<CompanyRegister> list=new ArrayList<>();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from CompanyRegister");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				view=new CompanyRegister();
				view.setcName(rs.getString(1));
				view.setcMail(rs.getString(2));
				view.setcAddr(rs.getString(3));
				view.setcUserName(rs.getString(4));
				view.setcPass(rs.getString(5));
				
				view.setcPNo(rs.getString(6));
				list.add(view);
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return list;
	}
	
	public ArrayList<StudentRegisteration> studentList(StudentRegisteration view)
	{
	    ArrayList<StudentRegisteration> list=new ArrayList<>();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from StudentRegisteration");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				view=new StudentRegisteration();
				view.setfName(rs.getString(1));
				view.setlName(rs.getString(2));
				view.setDob(rs.getString(3));
				view.seteMail(rs.getString(4));
				view.setPasswd(rs.getString(5));
				
				view.setCnt_No(rs.getString(6));
				list.add(view);
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return list;
	}
	
	public InternshipAppl ViewAppl(String cname)
	{
		InternshipAppl apl=new InternshipAppl();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from InternshipAppl where cname=?");
			ps.setString(1, cname);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				apl.setfName(rs.getString(1));
				apl.setlName(rs.getString(2));
				apl.setGender(rs.getString(3));
				apl.setDateOfBirth(rs.getString(4));
				apl.seteMail(rs.getString(5));
				apl.setMobileNo(rs.getString(6));
				apl.setCrnLoc(rs.getString(7));
				apl.setUgDegree(rs.getString(8));
				apl.setUgStream(rs.getString(9));
				apl.setPassOut(rs.getInt(10));
				apl.setStatus(rs.getString(13));
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return apl;
	}
	
	public  ArrayList<InternshipAppl> userStatus(InternshipAppl st,String uMail)
	{
		
		 ArrayList<InternshipAppl> view=new  ArrayList<InternshipAppl>();
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select appl,cname,status from InternshipAppl where email=?");
			ps.setString(1, uMail);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				st=new InternshipAppl();
				st.setAppldate(rs.getDate(1).toString());
				st.setcName(rs.getString(2));
				st.setType("Internship");
				st.setStatus(rs.getString(3));
				
				view.add(st);
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return view;
	}
	
	public  void  status(String cname,String uMail,String status)
	{
		
		 ArrayList<InternshipAppl> view=new  ArrayList<InternshipAppl>();
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("update InternshipAppl set status=? where cname=? and email=?");
			ps.setString(1, status);
			ps.setString(2, cname);
			ps.setString(3,uMail);
			ps.executeUpdate();
			
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    
	}
	
	public ArrayList<InternshipAppl> ViewInternAppl(InternshipAppl apl)
	{
		ArrayList<InternshipAppl> list=new ArrayList<InternshipAppl>();	
	    try
	    {
	    	DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("select * from InternshipAppl");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				apl=new InternshipAppl();
				apl.setfName(rs.getString(1));
				apl.setlName(rs.getString(2));
				apl.setGender(rs.getString(3));
				apl.setDateOfBirth(rs.getString(4));
				apl.seteMail(rs.getString(5));
				apl.setMobileNo(rs.getString(6));
				apl.setCrnLoc(rs.getString(7));
				apl.setUgDegree(rs.getString(8));
				apl.setUgStream(rs.getString(9));
				apl.setPassOut(rs.getInt(10));
				apl.setcName(rs.getString(11));		
				apl.setStatus(rs.getString(13));
				list.add(apl);
				
			}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return list;
	}
	
	public void delCmp(String mail)
	{
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("delete from CompanyRegister where cmail=?");
			ps.setString(1,mail);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void delstd(String mail)
	{
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("delete from StudentRegisteration where email=?");
			ps.setString(1,mail);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void delInternApl(String mail)
	{
		try
		{
			DataBase db=new DataBase();
			Connection con=db.getCon();
			PreparedStatement ps=con.prepareStatement("delete from InternshipAppl where email=?");
			ps.setString(1, mail);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
