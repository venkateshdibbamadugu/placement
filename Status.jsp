
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.venkat.DataBase,com.venkat.InternshipAppl"%>
    <%!
    String cname;
    String email;
    String status;
    %>
    <%
        cname=request.getParameter("cname");
        email=request.getParameter("email");
        status=request.getParameter("status");
        
       /* InternshipAppl st=new InternshipAppl();
        st.setcName(cname);
        st.seteMail(email);*/
        DataBase db=new DataBase();
        db.status(cname, email, status);
         
        
        
    %>

</body>
</html>