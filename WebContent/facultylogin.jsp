<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
</head>
<head>
<style>
body {background-color: lightgrey;}
h1   {color: blue;}
p    {color: green;}
</style>
<style type ="text/css" >
   .footer{ 
       position: fixed;     
       text-align: center;    
       bottom: 0px; 
       width: 100%;
   }  
</style>
</head>
<body style="background-color:#800080">
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["id"].value;
	if(z==null || z=="") {
		alert("Net id must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["pass"].value;
	if(y==null || y=="") {
		alert("Password must be filled out");
		return false; }
	var x = document.forms["MYForm"] ["role"].value;
	if(x==null || x=="") {
		alert("Role must be filled out");
		return false; }
}
</script>
<h1 align="center"><i>SUNY ALBANY USER LOGIN PAGE</i></h1><br>
<img align="middle" src="image/fac.jpg" style="width:680px;height:228px;"><!--

--><img align="left" src="image/roo.jpg" style="width:170px;height:150px;">
<img align="right" src="image/seal.jpg" style="width:170px;height:150px;">
<form name="MYForm" method="post" action="NewLogin" onsubmit="return validateForm()">

            <center>
            <table border="3" width="50%" cellpadding="5" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Net-ID</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                     <tr>
                        <td>Role</td>
                        <td><input type="text" name="role" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="Register.jsp"><font color="red">Faculty Register Here &nbsp || &nbsp<a href="Studentregister.jsp"><font color="red">Students Register Here</font></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>