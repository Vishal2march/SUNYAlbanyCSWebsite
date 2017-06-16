<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img " src="image/suny.png" alt="Mountain View" style="width:400px;height:280px;">
<img align="right" src="image/albany.png" alt="Mountain View" style="width:300px;height:200px;">
<p align="center">Welcome to SUNY Albany Computer Science Department</p>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="facultylogin.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a><br><br>
<a href='Home.jsp'>Home</a>
<%
    }
%>

</body>
</html>