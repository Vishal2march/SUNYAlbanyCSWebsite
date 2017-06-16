
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
      <%@ page import="java.util.*" %>
    
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
<script>
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
</script>
<script src="jquery.tableCheckbox.js"></script>
<script>
$(this).append('<input type="checkbox"/>');            
$("#great").append(this.outerHTML);
</script>
</head>
<body>
<script type="text/javascript">
function checkRadios(form) {
	   var btns = form.jobidtodel;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<form method="post" action="" id="f0" onsubmit="return checkRadios(this);">
<%String Role= (String)session.getAttribute("role"); 
if(Role.equals("staff")){
%>
<a href='staffhome.jsp'>Home</a><br><br>
<%
}
else if(Role.equals("faculty")){
%>
<a href='Home.jsp'>Home</a><br><br>
<% }
else{
	%>
	<a href='studenthome.jsp'>Home</a><br>
<% }%>
<table border="2">
<tr>
<th>JobId</th>
<th>JobType</th>
<th>Companyname</th>
<th>Jobtitle</th>
<th>Wage</th>
<th>Category</th>
<th>Eligibility</th>
<th>Upload</th>
<th>Apply link</th>
</tr>
   <% HttpSession session2 = request.getSession(); %>
Hello <%=session.getAttribute("userid") %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from offjob";
String uid=(String)session.getAttribute("userid");
String query1="select * from jobapply where Userid='"+uid+"'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
Statement stmt2=conn.createStatement();
ResultSet rs2=stmt2.executeQuery(query1);

ArrayList<String> a = new ArrayList<String>();
while(rs2.next()){
	
	a.add(rs2.getString("jobid"));}
while(rs.next())
{

%>


    <tr><%//if(rs.getString("id").equals(session.getAttribute("userid"))){ %>
    <td><input type="radio" name="jobidtodel" value="<%=(rs.getString("jobid"))%>"><%=rs.getString("jobid") %></td>
    <%//} %>
    <td><%=rs.getString("JobType") %></td>
    <td><%=rs.getString("Companyname") %></td>
    <td><%=rs.getString("Jobtitle") %></td>
    <td><%=rs.getString("Wage") %></td>
    <td><%=rs.getString("Category") %></td>
    <td><%=rs.getString("Eligibility") %></td>
    <td><%=rs.getString("Upload") %></td>
   
   <%String Rolee= (String)session.getAttribute("role");
   if(Rolee.equals("student")){
	   
   if(!a.contains(rs.getString("jobid"))){
   %>
   
   <td><a href="JobApply?jobidtoapply=<%=rs.getString("jobid")%>">Apply</a></td><%}}%>
    </tr>
        <%

}
%>
    </table>
    
    
    
    
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
<%String Rolee= (String)session.getAttribute("role");
if(Rolee.equals("faculty")){
%>
<br> <input type="submit" name="merabutton" value="Delete">&nbsp&nbsp&nbsp&nbsp&nbsp <input type="submit" name="merabutton" value="Edit">
<%}
else if(Rolee.equals("staff")){
	%>
	<br> <input type="submit" value="Delete"><br>
	<% }
%>



</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>