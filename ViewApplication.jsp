
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#accpt").mouseleave(function(){
		$(".ed").toggle();
		function accept()
		{
		    document.getElementByClass("ed").innerHTML="accepted";	
		}
		
	});
});

</script>
<style type="text/css">
.ed{
display:none;
}
</style>

</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.InternshipAppl"%>
    <%!
    String cname;
 
    %>
   <%
      cname=request.getParameter("cname");
      System.out.println("welcom="+cname);
      
      DataBase db=new DataBase();
      InternshipAppl appl=db.ViewAppl(cname);
     // System.out.println("cnamenbnb="+cname);
    		  
       out.println("<center><h4>Applied Students For"+" "+cname+"</h4></center>");
      
       if(appl.getStatus()!=null)
       {
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
      out.println("<th>Accept</th>");
      out.println("<th>Reject</th>");
     
      out.println("</tr>");
      out.println("</thead>");
     
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
      
     
      if(appl.getStatus().equals("updating"))
      {
      out.println("<td><form action='./Status.jsp' method='post'><input type='text' value='"+cname+"' name='cname' hidden><input type='text' value='"+appl.geteMail()+"' name='email' hidden><input type='text' value='Viewed' name='status' hidden><button type='submit' onclick='accept()' id='accpt'>accept<span class='ed'>ed</span></button></form></td>");
      out.println("<td><form action='./Status.jsp' method='post'><input type='text' value='"+cname+"' name='cname' hidden><input type='text' value='"+appl.geteMail()+"' name='email' hidden><input type='text' value='Rejected' name='status' hidden><button type='submit'>reject</button></form></td>");
      
      }
      else if(appl.getStatus().equals("Viewed"))
      {
    	  out.println("<td><input type='submit' value='Viewed' readonly></td>");
    	  out.println("<td><input type='submit' value='Accepted' readonly></td>");
      }
      else
      {
    	  out.println("<td><input type='submit' value='Viewed' readonly></td>");
    	  out.println("<td><input type='submit' value='rejected' readonly></td>");
      }
      
      out.println("</tr>");
      out.println("</table>");
      out.println("</center>");
      }
   %>

</body>
</html>