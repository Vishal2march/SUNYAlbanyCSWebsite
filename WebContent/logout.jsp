<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="logout.jsp">
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("facultylogin.jsp");
%>
<br><br>
University at Albany Logo
Close All Browser Windows

<h1 align="center">Protect your privacy and prevent others from accessing your </h1><br><br>
<h1 align="center">personal information by closing your browser.</h1>
</form>
</body>
</html>