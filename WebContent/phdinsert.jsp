<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["netid"].value;
	if(z==null || z=="") {
		alert("Name must be filled out");
		return false; }	
	var c = document.forms["MYForm"] ["phdstatus"].value;
	if(c==null || c=="") {
		alert("phdstatus must be filled out");
		return false; }	
	var r = document.forms["MYForm"] ["semesters"].value;
	if(r==null || r=="") {
		alert("semesters must be filled out");
		return false; }	
	}
	</script>
<form name="MYForm" method="post" action="phdstatusinsert" onsubmit="return validateForm()">
<% HttpSession session2 = request.getSession(); %>
Hello <%=session.getAttribute("userid") %>
<%String idd= request.getParameter("lilly");
System.out.println(idd);
%>
<input type="hidden" name="lilly" value="<%=idd%>">
 <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Post New Exam Offering</h1></th>
                    </tr>
                </thead>
                <body>
                 <tr>
                        <td>Net ID</td>
                        <td><input type="text" name="netid" value="" /></td>
                    </tr>
               <tr>
                        <td>PHD Status</td>
                        <td><input type="text" name="phdstatus" value="" /></td>
                    </tr>
                    <tr>
                        <td>Semesters</td>
                        <td><input type="text" name="semesters" value="" /></td>
                    </tr>
                  
                     
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                   </table>
                   </center>
                   </form>
                   
                 
</body>
</html>