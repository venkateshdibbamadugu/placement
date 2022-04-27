<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

$(document).ready(function(){
	$("button").click(function(){
		$(".slog").hide();
	});
});
</script>
<style>
.slog{
   width:300px;
   height:150px;
   margin:auto auto;
   padding-top:20px;
}
.slog a{
  
  text-decoration: none;
  text-align:center;
  
}
.slog{
     box-shadow:5px 5px 5px black;
}
</style>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase"%>
    
  <%!
   String uMail;
   String pass;
   String type;
  %>
  
  <%
    
   uMail=request.getParameter("usrmail");
   pass=request.getParameter("usrpass");
   type=request.getParameter("type");
   
   
   
   System.out.println(type);
   DataBase db=new DataBase();
   if(type.equals("Admin"))
   {
	   if(uMail.equals("vdibbamaduguv57@gmail.com") && pass.equals("venkat@179"))
	   {
		      out.println("<div style='background-color:white;' class='slog'>");
	   	      out.println("<center><h1 style='color:green;margin-top:15%;'>Successfully loged</h1></center>");
	   	      out.println("<center><a href='AdminMenu.html' target='venka'><button>Ok</button></a></center>");
	   	      out.println("</div>");
	   }
   }
   else if(type.equals("Student"))
   {
	  boolean result=db.getstdLogin(uMail, pass);
	  if(result)
	  {
		  out.println("<div style='background-color:white;' class='slog'>");
   	      out.println("<center><h1 style='color:green;margin-top:15%;'>Successfully loged</h1></center>");
   	      out.println("<form action='./StudentMenu.jsp' method='post' target='venka'>");
	      out.println("<input type='text' value='"+uMail+"' name='umail' hidden>");
	      out.println("<center><button type='submit'>Ok</button></center>");
	      out.println("</form>");
   	      out.println("</div>");
	  }
	  else
	  {
		  out.println("<div style='background-color:white;'>");
   	   out.println("<center><h1 style='color:green;margin-top:15%;'>Failure Record</h1></center>");
   	   out.println("</div>");
	  }
   }
   else
   {
	   boolean result=db.getCmpLogin(uMail, pass);
			   
		  if(result)
		  {
			  String str="";
			  for(int i=0;i<uMail.length();i++)
			  {
				  if(uMail.charAt(i)!='@')
				  {
					 
						  str=str+Character.toUpperCase(uMail.charAt(i));
					  
				  }
				  else
				  {
					  break;
				  }
				  
			  }
			  System.out.println("Company Name="+str);
			  out.println("<div style='background-color:white;' class='slog'>");
	   	      out.println("<center><h1 style='color:green;margin-top:15%;'>Successfully loged</h1></center>");
	   	      out.println("<form action='./CompanyMenu.jsp' method='post' target='venka'>");
	   	      out.println("<input type='text' value='"+str+"' name='cname' hidden>");
	   	      out.println("<center><button type='submit'>Ok</button></center>");
	   	      out.println("</form>");
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