<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Puttainfo">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>

<h1 style="color:Orange;">Post TA information - courses syllabus - Office hours</h1>
Course Syllabus: <textarea rows="8" cols="50" wrap="soft" placeholder="put details here..." name="coursesyll" autofocus>
</textarea><br><br>
Office Hours: <input type="text" name="officehrs"><br><br>
TA Information: 
<textarea rows="8" cols="60" wrap="soft" placeholder="put details here..." name="tainfor" autofocus>
</textarea><br>
<input type="submit" value="Post"><br><br>
 <a href='showsyllabus.jsp'>Other information posted</a>
</form>
</body>
</html>