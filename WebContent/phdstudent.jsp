<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center" style="color:Orange;"><mark>Post/view PHD student status</mark> </h1>
<form method="post" action="" id="ttform">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
<bold>Welcome</bold> <%=session.getAttribute("userid")%>
<br><br>

<strong>Name of PHD Student: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="name"><br><br>
<strong>No of years completed: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<input type="text" name="years"><br><br>
<strong>PHD Advisor Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="advisor"><br><br>
<strong>Description of specialized research area: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<textarea rows="8" cols="60" wrap="soft" placeholder="Describe your here..." name="area" autofocus>

</textarea><br><br>
<strong>No of Accepted Research papers:</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="papers"><br><br>
<strong>Any Internships completed:</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="intern"><br><br>
<strong>Other work: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="work"><br><br>
<input type="submit" value="Post">
</form>
</body>
</html>