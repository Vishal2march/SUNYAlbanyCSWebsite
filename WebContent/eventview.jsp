<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>

<h1>Successfull Post Events & News !!!!</h1>
<%
    Object value = request.getAttribute("event");
%>
<p><%=value%></p>
<a href='otherevents.jsp'>Other posted Jobs</a><br>
</body>
</html>