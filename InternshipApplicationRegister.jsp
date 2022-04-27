<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.InternshipAppl"%>
    
 <%!
      String fName;
	  String lName;
	  String gender;
	  String dateOfBirth;
	  String email;
	  String mobileNo;
	  String crnLoc;
	  String ugDegree;
	  String ugStream;
	  int passOut;
	  String cName;
 %>   
 <%
    
       fName=request.getParameter("fname");
       lName=request.getParameter("lname");
       gender=request.getParameter("gender");
       dateOfBirth=request.getParameter("dob");
       email=request.getParameter("email");
       mobileNo=request.getParameter("phone");
       crnLoc=request.getParameter("loc");
       ugDegree=request.getParameter("ugdegree");
       ugStream=request.getParameter("ugstream");
       passOut=Integer.parseInt(request.getParameter("pasout"));
       cName=request.getParameter("cname").toUpperCase();
       
       InternshipAppl appl=new InternshipAppl();
       appl.setfName(fName);
       appl.setlName(lName);
       appl.setGender(gender);
       appl.setDateOfBirth(dateOfBirth);
       appl.seteMail(email);
       appl.setMobileNo(mobileNo);
       appl.setCrnLoc(crnLoc);
       appl.setUgDegree(ugDegree);
       appl.setUgStream(ugStream);
       appl.setPassOut(passOut);
       appl.setcName(cName);
       DataBase db=new DataBase();
       
       int x=db.internAppl(appl);
       if(x>0)
       {
    	   out.println("success ghggh");
    	  // System.out.println("success");
       }
       else
       {
    	   out.println("failure");
    	  // System.out.println("success");
       }
 %>

</body>
</html>