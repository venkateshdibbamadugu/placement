
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="mdb.css">
    <style>
    .intr{
        
        background-color:aliceblue;
        margin-bottom:5px;
    }
    .br{
      border-radius:5px;
    }
    .btn{
        background-color:gainsboro;
    }
    </style>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.AddInternshipDetails,java.util.*"%>
    
    <%
    AddInternshipDetails view=new AddInternshipDetails();
    DataBase db=new DataBase();
     
   // List<AddInternshipDetails> list=new  ArrayList<AddInternshipDetails>();
    
    ArrayList<AddInternshipDetails> list=db.viewInternship(view);
    out.println("<center><h3 style='background-color:lightgray' class='p-3'>Internship Details</h3></center>");
    for(AddInternshipDetails v:list)
    { 
    	//out.println("<button type='submit' style='border:none;background-color:aliceblue'>");
    
        out.println("<div class='intr p-3'>");
    	out.println("<form action='./ViewMoreInternshipDetails.jsp' method='post' target='_blank'>");
        out.println("<h3 class='mb-2'>"+v.getjName()+"</h3>");
        out.println("<h6 class='mb-3'>"+v.getcName()+"</h6>");
        out.println("<input type='text' value='"+v.getcName()+"' name='cname' hidden>");
        out.println("<p class='my-1'><i class='fa fa-house-laptop'>"+v.getjMode()+"</i></p>");
        out.println("<div class='display-inflex float-left my-1 mr-3'>"+v.getInterDur()+"</div>");
        out.println("<div class='display-inflex float-left my-1 mx-3'>"+v.getStipen()+"</div>");
        out.println("<div class='my-2 mx-3'>"+v.getApldt()+"</div>");
       // out.println("<h5>Skills</h5>");
        //out.println("<p class='my-2'>"+v.getSkills()+"</p>");
       // out.println("<h5>Job Dscription</h5>");
       // out.println("<p class='my-2'>"+v.getjDscr()+"</p>");
        out.println("<center><button type='submit' class='btn br mt-5'>View More</button></center>");
       // out.println("</button>");
        out.println("</form");
        
        out.println("</div>");
        out.println("<hr>");
    }
    
   
    %>
    
    
        <!-- Bootstrap Js files -->
       <script src="jquery.js"></script>
       <script src="popper.min.js"></script>
       <script src="jquery.min.js"></script>
       <script src="bootstrap.js"></script>
       <script src="mdb.js"></script>
</body>
</html>