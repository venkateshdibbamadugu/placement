<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.CompanyRegister,java.util.*"%>
 <%!
      String mail;
  %>
 <%
 
       mail=request.getParameter("cmail");
 
       CompanyRegister cr=new CompanyRegister();
       DataBase db=new DataBase();
       if(mail!=null)
       {
    	  db.delCmp(mail); 
       }
       
       mail=null;
       
      
       ArrayList<CompanyRegister> list=db.companyList(cr);
       
       
       out.println("<center><h4>List of Companies</h4></center>");
       out.println("<center>");
       out.println("<table border=1>");
       out.println("<thead>");
       out.println("<tr>");
       out.println("<th>Company Name</th>");
       out.println("<th>Mail</th>");
       out.println("<th>Address</th>");
       out.println("<th>User Name</th>");
       out.println("<th>Password</th>");
       out.println("<th>Mobile-No</th>");
       out.println("<th>Delete</th>");
       out.println("</tr>");
       out.println("</thead>");
       for(CompanyRegister cl:list)
       {
       out.println("<tr>");
       out.println("<td>"+cl.getcName()+"</td>");
       out.println("<td>"+cl.getcMail()+"</td>");
       out.println("<td>"+cl.getcAddr()+"</td>");
       out.println("<td>"+cl.getcUserName()+"</td>");
       out.println("<td>"+cl.getcPass()+"</td>");
       out.println("<td>"+cl.getcPNo()+"</td>");
       out.println("<td><form action='CompaniesList.jsp' method='post'><input type='text' name='cmail' value='"+cl.getcMail()+"' hidden><button class='submit'>delete</button></form></td>");
       out.println("</tr>");
       }
       
       out.println("</table>");
       out.println("</center>");
 %>
 

</body>
</html>