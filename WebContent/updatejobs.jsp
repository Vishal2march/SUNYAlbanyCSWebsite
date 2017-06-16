<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="finaljobsupdate.jsp">
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
<%String asd =(String)request.getAttribute("jobidtodel");
%>
<center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
<th colspan="2"><h1 style="color:red;"> Post Jobs Announcement</h1></th>
 </tr>
                </thead>
               
               <tr>
 <td>Job Id:</td><td> <input type="text" name="jobidi"></td></tr>
<tr>
<td>Type of Job:</td><td> <select name="JobTypei" size="1" id="JobType">
<option value="Please choose...">/select</option>
  <option value="Full Time">Full Time</option>
  <option value="Part Time">Part Time</option>
  <option value="Internship">Internship</option>
  </select>
  </td></tr>
  <tr>
  <td>Company name: </td><td><input type="text" name="Companynamei"></td></tr>
  <tr><td>Job Title: </td>
  <td><select name="Jobtitlei" size="1" id="Jobtitle">
  <option value="">Please choose...</option>
<option value="Project Manager">Project Manager</option>
<option value="Business Analyst">Business Analyst</option>
<option value="Technical Writer">Technical Writer</option>
<option value="Tester">Tester</option>
<option value="Programmer">Programmer</option>
<option value="Specialist">Specialist</option>
<option value="Database Administrator">Database Administrator</option>
<option value="System Administrator">System Administrator</option>
<option value="Technical Architect">Technical Architect</option>
<option value="Technician V">Technician V</option>
<option value="Principal Consultant">Principal Consultant</option>
<option value="Technical Specialist 3">Technical Specialist 3</option>
<option value="Technical Specialist 4">Technical Specialist 4</option>
<option value="Technical Specialist 5">Technical Specialist 5</option>
<option value="Software Architect #1">Software Architect #1</option>
<option value="Software Architect #2">Software Architect #2</option>
<option value="Architectural Specialist I">Architectural Specialist I</option>
<option value="Architectural Specialist II">Architectural Specialist II</option>
<option value="Sr Production Control Operator">Sr Production Control Operator</option>
<option value="Production Control Operator">Production Control Operator</option>
<option value="Sr Equipment Operator">Sr Equipment Operator</option>
<option value="Equipment Operator">Equipment Operator</option>
<option value="Service Delivery Specialist I">Service Delivery Specialist I</option>
<option value="Service Delivery Specialist II">Service Delivery Specialist II</option>
</select>
</td></tr>
  <tr>
  <td>Wage:</td>
  <td> <input type="text" name="Wagei"></td></tr>
  <tr>
  <td>Category:</td>
  <td> <input type="text" name="Categoryi"></td></tr>
  <tr>
  <td>Eligibility: </td>
  <td><input type="text" name="Eligibilityi"></td></tr>
  <tr>
  <td>Documents Upload:</td><td> <input type="text" name="Uploadi"></td></tr> 
  
 <tr><td> <input type="submit" value="Update"></td></tr></table></center><br>
 <input type="hidden" name="asd" value="<%=asd %>">
</form>
</body>
</html>