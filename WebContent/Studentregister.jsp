<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#800080">
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["id"].value;
	if(z==null || z=="") {
		alert("NET ID must be filled out");
		return false; }
	var y = document.forms["MYForm"] ["fname"].value;
	if(y==null || y=="") {
		alert(" First Name must be filled out");
		return false; }
	var x = document.forms["MYForm"] ["lname"].value;
	if(x==null || x=="") {
		alert("Last name must be filled out");
		return false; }
	var w = document.forms["MYForm"] ["email"].value;
	if(w==null || w=="") {
		alert("Email id must be filled out");
		return false; }
	var ww = document.forms["MYForm"] ["joinedyear"].value;
	if(ww==null || ww=="") {
		alert("Year must be filled out");
		return false; }
	var p = document.forms["MYForm"] ["program"].value;
	if(p==null || p=="") {
		alert("Program must be select");
		return false; }
	var l = document.forms["MYForm"] ["uname"].value;
	if(l==null || l=="") {
		alert("Username must be filled out");
		return false; }
	var o = document.forms["MYForm"] ["pass"].value;
	if(o==null || o=="") {
		alert("Password must be filled out");
		return false; }
	var q = document.forms["MYForm"] ["major"].value;
	if(q==null || q=="") {
		alert("Major must be filled out");
		return false; }
	var d = document.forms["MYForm"] ["rolii"].value;
	if(d==null || d=="") {
		alert("Username must be filled out");
		return false; }
}
</script>

<img align="left" src="image/roo.jpg" style="width:170px;height:100px;">
<img align="right" src="image/tt.png" style="width:170px;height:100px;">
<form name="MYForm" method="post" action="Studentregist" onsubmit="return validateForm()">
            <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Enter Student Information</h1></th>
                    </tr>
                </thead>
                <tbody>
               <tr>
                        <td>NetId</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Joined Year</td>
                        <td><input type="text" name="joinedyear" value="" /></td>
                    </tr>
                    <tr>
                    <td>Program</td>
                        <td> 
                        <select name="program" id="program"> 
                <option value="/select">/select</option>               
                <option value="BS">BS</option>
                <option value="BA">BA</option>
                <option value="MS">MS</option>
                <option value="PHD">PHD</option>
        </select><TD ALIGN="center"></TD>
                        </td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Major</td>
                        <td><input type="text" name="major" value="" /></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>Role</td>
                        <td><input type="text" name="rolii" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="facultylogin.jsp"><font color="red">Login Here</font></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>