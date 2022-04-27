
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.StudentRegisteration,com.venkat.DataBase,java.util.*"%>
    <%!
      String mail;
  %>
 <%
          mail=request.getParameter("smail");
 
          StudentRegisteration st=new StudentRegisteration();
          DataBase db=new DataBase();
          if(mail!=null)
          {
        	  System.out.println("stdlist="+mail);
        	  db.delstd(mail);
          }
          mail=null;
          ArrayList<StudentRegisteration> list=db.studentList(st);
          
          out.println("<center><h4>List of Students</h4></center>");
          out.println("<center>");
          out.println("<table border=1>");
          out.println("<thead>");
          out.println("<tr>");
          out.println("<th>First Name</th>");
          out.println("<th>Last Name</th>");
          out.println("<th>Date of Birth</th>");
          out.println("<th>Email</th>");
          out.println("<th>Password</th>");
          out.println("<th>Mobile-No</th>");
          out.println("<th>Delete</th>");
          out.println("</tr>");
          out.println("</thead>");
          for(StudentRegisteration sl:list)
          {
          out.println("<tr>");
          out.println("<td>"+sl.getfName()+"</td>");
          out.println("<td>"+sl.getlName()+"</td>");
          out.println("<td>"+sl.getDob()+"</td>");
          out.println("<td>"+sl.geteMail()+"</td>");
          out.println("<td>"+sl.getPasswd()+"</td>");
          out.println("<td>"+sl.getCnt_No()+"</td>");
          out.println("<td><form action='StudentList.jsp' method='post'><input type='text' name='smail' value='"+sl.geteMail()+"' hidden><button class='submit'>delete</button></form></td>");
         
          out.println("</tr>");
          }
          
          out.println("</table>");
          out.println("</center>");
   
 %>   
   
</body>
</html>