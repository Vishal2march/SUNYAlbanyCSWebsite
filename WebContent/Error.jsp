<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
User is already exists please try to create a different user for registration.
Please Login Here <a href='facultylogin.jsp'>Go to Login</a>


<%
    Object value = request.getAttribute("bigerror");
%>
<p><%=value%></p>
</body>
</html>