
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.AddInternshipDetails,com.venkat.DataBase"%>
    
<%!
 String cName;
 String jName;
 String jMode;
 String interDur;
 String stipen;
 String apldt;
 String skills;
 String jDscr;
 String aboutcmp;
 String whocanApply;
 int novacancy;
%>    
<%
    cName=request.getParameter("cName");
    jName=request.getParameter("jName");
    jMode=request.getParameter("jMode");
    interDur=request.getParameter("interDur");
    stipen=request.getParameter("stipen");
    apldt=request.getParameter("appDt");
    skills=request.getParameter("skills");
    jDscr=request.getParameter("jDscp");
    aboutcmp=request.getParameter("abcmp");
    whocanApply=request.getParameter("wcapp");
    novacancy=Integer.parseInt(request.getParameter("vacancy"));
    
    AddInternshipDetails add=new AddInternshipDetails();
    add.setcName(cName);
    add.setjName(jName);
    add.setjMode(jMode);
    add.setInterDur(interDur);
    add.setStipen(stipen);
    add.setApldt(apldt);
    add.setSkills(skills);
    add.setjDscr(jDscr);
    add.setAboutCmp(aboutcmp);
    add.setWhoCanApply(whocanApply);
    add.setNo_Vacancy(novacancy);
    
  
    DataBase db=new DataBase();
    int x=db.addInternship(add);
    if(x>0)
    {
    	out.println("SuccessFully added");
    }
    else
    {
    	out.println("SuccessFully not added");
    }
   
%>

</body>
</html>