
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
    
    body{
    margin:5px;
    padding:10px;
    }
    </style>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.AddInternshipDetails,java.util.*"%>
<%!
  String cName;
%>    
<%
      cName=request.getParameter("cname");
      AddInternshipDetails view=new AddInternshipDetails();
      DataBase db=new DataBase();
 
      // List<AddInternshipDetails> list=new  ArrayList<AddInternshipDetails>();

        AddInternshipDetails v=db.viewMoreInternshipDetails(view,cName);
     // for(AddInternshipDetails v:list)
     // {
    	  out.println("<h3 class='mb-1'>"+v.getjName()+"</h3>");
          out.println("<h6 class='mb-3'>"+v.getcName()+"</h6>");
          out.println("<p class='my-1'><i class='fa fa-house-laptop'>"+v.getjMode()+"</i></p>");
          out.println("<div class='display-inflex float-left my-1 mr-3'>"+v.getInterDur()+"</div>");
          out.println("<div class='display-inflex float-left my-1 mx-3'>"+v.getStipen()+"</div>");
          out.println("<div class='my-2 mx-3'>"+v.getApldt()+"</div>");
          out.println("<p>Internship</p>");
          out.println("<hr>");
          out.println("<h5>About "+v.getcName()+"</h5>");
          out.println("<p>"+v.getAboutCmp()+"</p>");
          out.println("<hr>");
          out.println("<h5>About the Internship</h5>");
          out.println("<p>"+v.getjDscr()+"</p>");
          out.println("<hr>");
          out.println("<h5>Skill(s) required</h5>");
          out.println("<p>"+v.getSkills()+"</p>");
          out.println("<hr>");
          out.println("<h5>Who can apply</h5>");
          out.println("<p>"+v.getWhoCanApply()+"</p>");
          out.println("<hr>");
          out.println("<p>Number of opening</p>");
          out.println("<p>"+v.getNo_Vacancy()+"</p>");
          
    //  }
      
    
      
%>

    <form action="./InternshipAppl.jsp" method="post">
    <input type="text" value="<%= v.getcName()%>" name="cname" hidden>
     <center><a><button class="my-5  btn bg-info">Apply</button></a></center>
    </form>
    
    
    
     <!-- Bootstrap Js files -->
       <script src="jquery.js"></script>
       <script src="popper.min.js"></script>
       <script src="jquery.min.js"></script>
       <script src="bootstrap.js"></script>
       <script src="mdb.js"></script>
</body>
</html>