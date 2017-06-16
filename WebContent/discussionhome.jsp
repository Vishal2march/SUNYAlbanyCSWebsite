<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type ="text/css" >
   .footer{ 
       position: fixed;     
       text-align: center;    
       bottom: 0px; 
       width: 100%;
   }  
</style>
</head>
<body>
<body>
<%String Role= (String)session.getAttribute("role"); 
if(Role.equals("staff")){
%>
<a href='staffhome.jsp'>Home</a><br><br>
<%

}
else if(Role.equals("faculty")){

%>
<a href='Home.jsp'>Home</a><br><br>
<% }
else{
	%>
	<a href='studenthome.jsp'>Home</a><br><br>
<% }%>

<h1 align="center"><i>WELCOME TO THE DISCUSSION FORUM PAGE</i></h1><br>

<strong>Welcome</strong> <%=session.getAttribute("userid")%><br><br>
<a style="color:black;" href='logout.jsp'><input type="submit" value="Logout" /></a>
<br>
<img align="center" src="image/gp6.jpg" style="width:340px;height:200px;">
<img align="left" src="image/gp4.jpg" style="width:250px;height:200px;">
<img align="left" src="image/gp5.jpg" style="width:250px;height:200px;">
<form action="Dissservlet" method="post"><br>
<a href="topiccreate.jsp">CREATE DISCUSSION TOPICS</a><br><br>
<input type="submit" value = "Existing discussion topics"><br><br>
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>