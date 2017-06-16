<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="middle"> <font color="red">Post Course Syllabus:</font></h1>
<form method="post" action="Uploadsyllabus">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br>
Welcome <%=session.getAttribute("userid")%><br><br>
<table>
        <tr><td>Course Name:</td>
        <td><input type="text" name="coursename" /></td>
        <tr><td>Course Code:</td>
        <td><input type="text" name="coursecode" /></td>
        <tr><td>Syllabus Pdf</td>
            <td><input type="file" name="file" id="file" /> </td>
        </tr>
        <tr>
        <td colspan="2">
            <input type="submit" value="Upload" name="upload" id="upload" /> </td>
        </tr>
   </table>  
</form>
</body>
</html>


