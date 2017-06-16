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
	var z = document.forms["MYForm"] ["rid"].value;
	if(z==null || z=="") {
		alert("resource id must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["rname"].value;
	if(y==null || y=="") {
		alert("Resource name Name must be filled out");
		return false; }
	var x = document.forms["MYForm"] ["rdesc"].value;
	if(x==null || x=="") {
		alert("description must be filled out");
		return false; }
}
</script>
<form name="MYForm" method="post" action="Createresource" onsubmit="return validateForm()">
<a href='staffhome.jsp'>Home</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
 <center>
 <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
<th colspan="2"><h1 style="color:red;"> Add New Resources</h1></th>
 </tr>
                </thead>
               
               <tr>
 <td>Resource ID:</td><td> <input type="text" name="rid"></td></tr>
<tr>
 <td>Resource Name:</td><td> <input type="text" name="rname"></td></tr>
 <tr>
  <td>Resource Description:</td><td> <input type="text" name="rdesc"></td></tr>
  <tr><td> <input type="submit" value="Submit"></td></tr></table></center>
  </form>
  <div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>