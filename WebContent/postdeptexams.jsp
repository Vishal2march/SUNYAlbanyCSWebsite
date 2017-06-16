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
	var z = document.forms["MYForm"] ["examname"].value;
	if(z==null || z=="") {
		alert("Name must be filled out");
		return false; }
	var x = document.forms["MYForm"] ["examdate"].value;
	if(x==null || x=="") {
		alert("Date must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["link"].value;
	if(y==null || y=="") {
		alert("link must be filled out");
		return false; }
}
</script>
<form name="MYForm" method="post" action="Postexam" onsubmit="return validateForm()">
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
Welcome <%=session.getAttribute("userid")%>
            <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Post New Exam Offering</h1></th>
                    </tr>
                </thead>
                <body>
               <tr>
                        <td>Name of Exam</td>
                        <td><input type="text" name="examname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date of Exam</td>
                        <td><input type="text" name="examdate" value="" /></td>
                    </tr>
                  
                     <tr>
                        <td>Extra Links</td>
                        <td><input type="text" name="link" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                   </table>
                   </center>
                   </form>
                   
                   <a href='Examview.jsp'>Other exams posted</a>
                   <br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>