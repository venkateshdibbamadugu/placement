
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.StudentRegisteration,com.venkat.DataBase,com.venkat.CompanyRegister"%>
    
    
<%!

//Student Properties
String stdfName;
String stdlName;
String stddob;
String stdmail;
String stdpass;
String stdcfnpass;
String stdcnt_No;
String url;

//Company Propertires
 String cName;
 String cMail;
 String cAddr;
 String cUserName;
 String cPass;
 String cPNo;




%>
<%

// getting request parameters from client page to Initializing student properties 
       
      
       
       String url="studentRegister";
    		  url=request.getParameter("url");
       
       System.out.println("url="+url);
       if(url.equals("studentRegister"))
       {
    	   
    	   stdfName=request.getParameter("stdfname");
           stdlName=request.getParameter("stdlname");
           stddob=request.getParameter("stddob");
           stdmail=request.getParameter("stdmail");
           stdpass=request.getParameter("stdpass");
           stdcfnpass=request.getParameter("stdcfnpass");
           stdcnt_No=request.getParameter("stdcnt_No");
           
           
            if(stdpass.equals(stdcfnpass))
            {
    	   
               StudentRegisteration std=new StudentRegisteration();
               std.setfName(stdfName);
               std.setlName(stdlName);
               std.setDob(stddob);
               std.seteMail(stdmail);
               std.setPasswd(stdpass);
               std.setCnt_No(stdcnt_No);
       
        
               DataBase db=new DataBase();
       
               int x=db.stdRegister(std);
               
               if(x>0)
               {
            	   out.println("<div style='background-color:white;'>");
            	   out.println("<center><h1 style='color:green;margin-top:15%;'>Successfully Added Record</h1></center>");
            	   out.println("</div>");
               }
               else
               {
            	   out.println("<div style='background-color:white;'>");
            	   out.println("<center><h1 style='color:green;margin-top:15%;'>Failure Added Record</h1></center>");
            	   out.println("</div>");
               }
            }
            else
            {
    	          out.println("<div style='background-color:white;'>");
    	          out.println("<center><h1 style='color:green;margin-top:15%;'>Failure Added Record</h1></center>");
    	          out.println("</div>");
            }
       
       }  
       else
       {
    	   
    	    cName=request.getParameter("cname");
    	    cMail=request.getParameter("cmail");
    	    cAddr=request.getParameter("caddr");
    	    cUserName=request.getParameter("cusername");
    	    cPass=request.getParameter("cpass");
    	    cPNo=request.getParameter("cPNo");
    	   
    	    CompanyRegister cp=new CompanyRegister();
    	    
    	    cp.setcName(cName);
    	    cp.setcMail(cMail);
    	    cp.setcAddr(cAddr);
    	    cp.setcUserName(cUserName);
    	    cp.setcPass(cPass);
    	    cp.setcPNo(cPNo);
    	   
    	    DataBase db=new DataBase();
    	    int x=db.cpyRegister(cp);
    	   
    	    if(x>0)
    	    	{
    	    	 out.println("<div style='background-color:white;'>");
    	    	   out.println("<center><h1 style='color:green;margin-top:15%;'>success Record</h1></center>");
    	    	   out.println("</div>");
    	    	}
    	    else
    	    {
    	    	 out.println("<div style='background-color:white;'>");
    	    	   out.println("<center><h1 style='color:green;margin-top:15%;'>Failure Record</h1></center>");
    	    	   out.println("</div>");
    	    }
       }
     

     
     

%>

</body>
</html>