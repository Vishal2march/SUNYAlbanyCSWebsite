<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
<script type="text/javascript">
function checkRadios(form) {
	   var btns = form.blanket;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<form method="post" action="Alumnineedupdate.jsp" id="f0" onsubmit="return checkRadios(this);">
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
<br>

<table border="2">
<tr>
<th>Name of Alumni</th>
<th>Name of degree Completed</th>
<th>Email ID</th>
<th>Company</th>
<th>Passout Year</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from alumnidetail";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

    <tr><td><input type="radio" name="blanket" value="<%=rs.getString("fname")%>"><%=rs.getString("fname") %></td>
    <td><%=rs.getString("degree") %></td>
    <td><%=rs.getString("email") %></td>
    <td><%=rs.getString("company") %></td>
    <td><%=rs.getString("passout") %></td>
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
if(Role.equals("faculty")){
%>
<br> <input type="submit" value="Edit">
<%}
else if(Rolee.equals("students")){
	%>
	<p>View</p>
	<% }
%>
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>