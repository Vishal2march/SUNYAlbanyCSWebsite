<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses offered</title>
</head>
<body>
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["courseid"].value;
	if(z==null || z=="") {
		alert("Courseid must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["coursename"].value;
	if(y==null || y=="") {
		alert("Coursename must be filled out");
		return false; }
	var t = document.forms["MYForm"] ["credits"].value;
	if(t==null || t=="") {
		alert("Credits must be filled out");
		return false; }
	var e = document.forms["MYForm"] ["carrer"].value;
	if(e==null || e=="") {
		alert("career must be filled out");
		return false; }
	var i = document.forms["MYForm"] ["facultyname"].value;
	if(i==null || i=="") {
		alert("facultyname must be filled out");
		return false; }
}
</script>
<jsp:include page="menu.jsp" />
<form name="MYForm" method="post" action="Courselist" onsubmit="return validateForm()">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>

<h1 style="color:Orange;">Create/View Computer Science Courses offered </h1>
 Course Id: <input type="text" name="courseid"><br><br>
Course Name: <input type="text" name="coursename"><br><br>
  Credits: <input type="text" name="credits"><br><br>
  Course career: <select name="career" size="1" id="career">
  <option value="">Please choose...</option>
<option value="Graduate">Graduate</option>
<option value="Undergraduate">Undergraduate</option>
<option value="Visiting study Abroad">Visiting study Abroad</option>
</select><br><br>
Faculty Name: <input type="text" name="facultyname"><br><br>
  <input type="submit" value="Submit"><br><br>
  <a href='othercourses.jsp'>Other Courses list</a>
</form>
</body>
</html>