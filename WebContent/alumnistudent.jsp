<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type ="text/css" >
   .footer{ 
       position: fixed;     
       text-align: center;    
       bottom: 0px; 
       width: 100%;
   }  
</style>
</head>
<body>
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["fname"].value;
	if(z==null || z=="") {
		alert("Courseid must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["degree"].value;
	if(y==null || y=="") {
		alert("Coursename must be filled out");
		return false; }
	var t = document.forms["MYForm"] ["email"].value;
	if(t==null || t=="") {
		alert("Credits must be filled out");
		return false; }
	var e = document.forms["MYForm"] ["company"].value;
	if(e==null || e=="") {
		alert("career must be filled out");
		return false; }
	var h = document.forms["MYForm"] ["passout"].value;
	if(h==null || h=="") {
		alert("career must be filled out");
		return false; }
}
</script>
<form name="MYForm" method="post" action="Alumniservlet" onsubmit="return validateForm()">

<%String Role= (String)session.getAttribute("role"); 
if(Role.equals("staff")){
%>
<a href='staffhome.jsp'>Home</a><br><br>
<%

}
else{

%>

<a href='Home.jsp'>Home</a><br><br>
<% }%>

<a href='logout.jsp'>Log out</a><br><br>
<bold>Welcome</bold> <%=session.getAttribute("userid")%>
<br><br>
 <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Enter Alumni Information</h1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name of Alumni:</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Name of Degree Completed</td>
                        <td><input type="text" name="degree" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Current Company</td>
                        <td><input type="text" name="company" value="" /></td>
                    </tr>
                    <tr>
                        <td>Passout Year</td>
                        <td><input type="text" name="passout" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Post" /></td>
                   
                    </tr>
                </tbody>
            </table>
            </center><br><br>
            <a href='otheralumni.jsp'>Other posted alumni</a><br><br>
</form>
<br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>