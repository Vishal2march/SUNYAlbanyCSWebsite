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

<h1>Successfull Post office Job</h1>
<%
    Object value = request.getAttribute("JobType");
%>
<p><%=value%></p>

<%
    Object valuex = request.getAttribute("Jobid");
%>
<p><%=valuex%></p>
<%
    Object value1 = request.getAttribute("Companyname");
%>
<p><%=value1%></p>
<%
    Object value2 = request.getAttribute("Jobtitle");
%>
<p><%=value2%></p>
<%
Object value3 = request.getAttribute("Wage");
%>
<p><%=value3%></p>
<%
Object value4 = request.getAttribute("Category");
%>
<p><%=value4%></p>
<%
Object value5 = request.getAttribute("Eligibility");
%>
<p><%=value5%></p>
<%
Object value6 = request.getAttribute("Upload");
%>
<p><%=value6%></p><br><br>
<a href='otherjobs.jsp'>Other posted Jobs</a><br><br>
</body>
</html>