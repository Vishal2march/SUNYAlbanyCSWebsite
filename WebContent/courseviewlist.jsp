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

<h1>New Course successfully created</h1>
<%
    Object value = request.getAttribute("courseid");
%>
<p><%=value%></p>

<%
    Object valuex = request.getAttribute("coursename");
%>
<p><%=valuex%></p>
<%
    Object valuey = request.getAttribute("credits");
%>
<p><%=valuey%></p>
<%
    Object valuez = request.getAttribute("career");
%>
<p><%=valuez%></p>
<%
    Object valuezs = request.getAttribute("facultyname");
%>
<p><%=valuezs%></p>
<br><br><a href='othercourses.jsp'>Other Courses list</a>
</body>
</html>