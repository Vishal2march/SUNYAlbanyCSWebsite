<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="list.jsp">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br>
Welcome <%=session.getAttribute("userid")%><br>
<h1 align="center" style="color:Orange;">Post Office Hours/ TA and syllabus information for Students</h1>
<br>
<h1 align="center" style="color:Orange;"> View all Computer Science Courses List!!!!! 
</h1>
<br>
<input type="submit" value="Other Courses List">
</form>
</body>
</html>