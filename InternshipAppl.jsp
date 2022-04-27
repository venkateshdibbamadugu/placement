<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
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
    %>
           <center><h3 class="mt-5"><%=cname%></h3></center>
           <center><h3>Application Form</h3></center>
           <div style="width: 45%;margin: 0 auto;" class="mt-5">
               <form action="./InternshipApplicationRegister.jsp" method="post">
                    <div class="form-group mt-1">
                    
                        <input type="text" value="<%=cname%>" name="cname" hidden>
                        
                      
                  </div>
                   <div class="form-group">
               <label>First Name</label>
               <input type="text" name="fname" class="form-control" style="border-left: 0;border-top: 0;border-right: 0;border-bottom-width:2px  thin;border-bottom-color: black;border-radius: 0;">
                  </div>
                  <div class="form-group">
                    <label>Last Name</label>
                      <input type="text" name="lname" class="form-control" style="border-left: 0;border-top: 0;border-right: 0; border-bottom-width:2px  thin;border-bottom-color: black;border-radius: 0;">
                  </div>
                    <div class="form-group">
                        <label>Gender</label><br>
                      <input type="radio" name="gender"value="Male" class="mr-3">Male<br>
                        <input type="radio" name="gender" value="Female" class="mr-3">Female
                  </div>
                   <div class="form-group mt-1">
                    <label>Data of birth</label><br>
                      <input type="date" name="dob" class="border" style="border-style: none;">
                  </div>
                  <div class="form-group">
               <label>E-Mail</label>
               <input type="email" name="email" class="form-control" style="border-left: 0;border-top: 0;border-right: 0;border-bottom-width:2px  thin;border-bottom-color: black;border-radius: 0;">
                  </div>
                   <div class="form-group mt-1">
                    <label>Mobile Number</label><br>
                      <input type="text" name="phone" class="border" style="border-left: 0;border-top: 0;border-right: 0;border-style: none;">
                  </div>
                   <div class="form-group mt-2">
                    <label>Current Location</label><br>
                       <input type="text" name="loc" class="form-control" style="border-left: 0;border-top: 0;border-right: 0;border-bottom-width:2px  thin;border-bottom-color: black;border-radius: 0;">
                   </div>
                    <div class="form-group mt-1">
                    <label>UG Degree</label><br><br>
                        <input list="ugdgr" name="ugdegree">
                        <datalist id="ugdgr">
                            <option value="B.Tech">
                            <option value="MCA">
                            <option value="M.Tech">
                        </datalist>
                      
                  </div>
                    <div class="form-group mt-1">
                    <label>UG Stream</label><br><br>
                        <input list="ugstr" name="ugstream">
                        <datalist id="ugstr">
                            <option value="CSE">
                            <option value="Civil">
                            <option value="ECE">
                            <option value="EEE">
                        </datalist>
                      
                  </div>
                    <div class="form-group mt-1">
                    <label>Pass Out</label><br><br>
                        <input list="passout" name="pasout">
                        <datalist id="passout">
                            <option value="2025">
                            <option value="2024">
                            <option value="2023">
                            <option value="2022">
                            <option value="2021">
                            <option value="2020">
                            <option value="2019">
                            <option value="2018">
                            
                        </datalist>
                      
                  </div>
                    <div class="form-group mt-1">
                    <label>Resume</label><br>
                        <input type="file" value="upload">
                        
                      
                  </div>
                    <div class="form-group mt-1">
                  
                        <center><input type="submit" value="Submit" class="btn bg-success"></center>
                        
                      
                  </div>
                   
               </form>
           </div>
        
        
           <!-- Bootstrap Js files -->
       <script src="jquery.js"></script>
       <script src="popper.min.js"></script>
       <script src="bootstrap.js"></script>
       <script src="mdb.js"></script>
    </body>
</html>