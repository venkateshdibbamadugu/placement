
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="mdb.css">
  <!--  <link rel="stylesheet" href="style.css">-->
    <title>HomePage</title>
    <style>
       
        ul li{
            list-style: none
            
        }
        
        ul li{
          width:150px;
          background-color:darkgrey;
          margin:0 auto;
        }
        
    
        
        ul li:hover{
            background-color: grey;
        }
        .reg{
            background-color: lightblue;
        }
        .border{
         border-style: solid;
         border-color: darkgrey;
       
         background-color:darkgrey;
        
        }
        ul li .border:hover
        {
         background-color: grey;
        }
        .pr{
            
        }
        h5{
            position: sticky;
            top: 0;
        }
       
        
    </style>
    </head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%!
  String cname;
  %>
  <%
      cname=request.getParameter("cname");
      System.out.println("cname="+cname);
  %>
    
     <center><h5 class="reg pt-1 pl-4">Company Menu</h5></center>
        <ul class="mx-auto mt-5">
           <!--<li class="mb-4"> <a class="pr text-dark" href="#" target="manu">My Profile</a></li>-->
            <li class="mb-4" style="outline:none;border:none;">
            <form action="./ViewApplication.jsp" target="_blank" method="post">
            <input type="text" value="<%=cname%>" name="cname" hidden>
             <button class="border" style="border: 2px solid darkgrey; outline:none;">View Applications</button>
             <!--<input type="button" hidden <a>View Application</a>>-->
             </form>
             </li>
             <!-- <li class="mb-4">
            <form action="">
             <button style="border-left-style:  solid darkgrey;background-color:darkgrey;">View Applications</button>
             </form>
             
             </li>
            <li class="mb-4"> <a class="pr text-dark" href="#" target="manu">View Applications</a></li>-->
           <!--  <li class="mb-4"> <a class="pr text-dark" href="#" target="manu">Add Notice</a></li>-->
            <li class="mb-4"><a class="pr text-dark" href="AddInternship.html" target="manu">Add Internship</a></li>
        </ul>
        
        
        
           <!-- Bootstrap Js files -->
       <script src="jquery.js"></script>
       <script src="popper.min.js"></script>
       <script src="bootstrap.js"></script>
       <script src="mdb.js"></script>

</body>
</html>