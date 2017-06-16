<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href='Home.jsp'>Home</a><br><br>
Welcome <%=session.getAttribute("userid")%>
<%
    Object value = request.getAttribute("Day");
%>
<p><%=value%></p>
<%
    Object value1 = request.getAttribute("Timings");
%>
<p><%=value1%></p>
<%
    Object value2 = request.getAttribute("Venue");
%>
<p><%=value2%></p>
</body>
</html>