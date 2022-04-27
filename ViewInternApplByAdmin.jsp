<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
.ed{
display:none;
}
</style>

</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.InternshipAppl,java.util.*"%>
    <%!
    String cname;
    String mail;
    %>
   <%
      cname=request.getParameter("cname");
      System.out.println("welcom="+cname);
      
      InternshipAppl apl=new InternshipAppl();
      DataBase db=new DataBase();
      if(mail!=null)
      {
   	  db.delInternApl(mail); 
      }
      mail=null;
      ArrayList<InternshipAppl> list=db.ViewInternAppl(apl);
    		  
      out.println("<center><h4>List of Applied Students</h4></center>");
      out.println("<center>");
      out.println("<table border=1>");
      out.println("<thead>");
      out.println("<tr>");
      out.println("<th>First Name</th>");
      out.println("<th>Last Name</th>");
      out.println("<th>Gender</th>");
      out.println("<th>Date of Birth</th>");
      out.println("<th>E-mail</th>");
      out.println("<th>Mobile-No</th>");
      out.println("<th>Curren Location</th>");
      out.println("<th>UG Degree</th>");
      out.println("<th>UG Stream</th>");
      out.println("<th>Pass-Out</th>");
      out.println("<th>Company</th>");
      out.println("<th>Status</th>");
      out.println("<th>Delete</th>");
     
      out.println("</tr>");
      out.println("</thead>");
     for(InternshipAppl appl:list)
     {
      out.println("<tr>");
      out.println("<td>"+appl.getfName()+"</td>");
      out.println("<td>"+appl.getlName()+"</td>");
      out.println("<td>"+appl.getGender()+"</td>");
      out.println("<td>"+appl.getDateOfBirth()+"</td>");
      out.println("<td>"+appl.geteMail()+"</td>");
      out.println("<td>"+appl.getMobileNo()+"</td>");
      out.println("<td>"+appl.getCrnLoc()+"</td>");
      out.println("<td>"+appl.getUgDegree()+"</td>");
      out.println("<td>"+appl.getUgStream()+"</td>");
      out.println("<td>"+appl.getPassOut()+"</td>");
      out.println("<td>"+appl.getcName()+"</td>");
      out.println("<td>"+appl.getStatus()+"</td>");
      out.println("<td><form action='./ViewInternApplByAdmin.jsp' method='post'><input type='text' value='"+appl.geteMail()+"' name='email' hidden><button type='submit'>Delete</button></form></td>");
     // out.println("<td><form action='./Status.jsp' method='post'><input type='text' value='"+cname+"' name='cname' hidden><input type='text' value='"+appl.geteMail()+"' name='email' hidden><input type='text' value='Rejected' name='status' hidden><button type='submit'>reject</button></form></td>");
      
      out.println("</tr>");
     }
      out.println("</table>");
      out.println("</center>");
   %>

</body>
</html>