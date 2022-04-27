<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="mdb.css">
 <style type="text/css">
 body{
      background-color:white;
      padding:5px;
 }
 table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
 
 </style>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.InternshipAppl,java.util.*"%>
    
    <%!
      String uMail;
    %>
    <%
       
       uMail=request.getParameter("email");
       System.out.println("umail="+uMail);
       InternshipAppl st=new InternshipAppl();
       DataBase db=new DataBase();
       ArrayList<InternshipAppl> list=db.userStatus(st,uMail);
       
       out.println("<center><h4>My Applicants</h4></center>");
       out.println("<center>");
       out.println("<div>");
       out.println("<table>");
       out.println("<thead style='background-color: #dddddd;'>");
       out.println("<tr>");
       out.println("<th class='py-3 px-3'>Applied Date</th>");
       out.println("<th class='px-3'>Company</th>");
       out.println("<th class='px-3'>Type</th>");
       out.println("<th class='px-3'>Status</th>");
       out.println("<th class='px-3'><center>Message</center></th>");
       out.println("</tr>");
       out.println("</thead>");
       for(InternshipAppl status:list)
       {
       out.println("<tr>");
       out.println("<td class='px-1'>"+status.getAppldate()+"</td>");
       out.println("<td class='px-1'>"+status.getcName()+"</td>");
       out.println("<td class='px-1'>"+status.getType()+"</td>");
       if(status.getStatus().equals("Viewed"))
       {
       out.println("<td class='px-1 text-success'>"+status.getStatus()+"</td>");
       out.println("<td class='px-1'>Greeting from"+" "+status.getcName()+"!!!<br>Thank you for showing interest for internship you will get mail soon for test.</td>");
       }
       else
       {
    	   out.println("<td class='px-1 text-warning'>"+status.getStatus()+"</td>");
           out.println("<td class='px-1'>Thank you for Application.</td>");
           
       }
       
       out.println("</tr>");
       }
       
       out.println("</table>");
       out.println("</div>");
       out.println("</center>");
       
    %>
    
      <!-- Bootstrap Js files -->
       <script src="jquery.js"></script>
       <script src="popper.min.js"></script>
       <script src="bootstrap.js"></script>
       <script src="mdb.js"></script>
</body>
</html>