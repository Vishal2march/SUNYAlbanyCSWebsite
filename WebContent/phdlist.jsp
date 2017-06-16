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
	   var btns = form.lilly;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<form method="post" action="phdinsert.jsp" id="f0" onsubmit="return checkRadios(this);">
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

<table border="2">
<tr>
<th>Net ID</th>
<th>Student FName</th>
<th>Student LName</th>
<th>Email ID</th>
<th>Join Year</th>
<th>Program</th>
<th>Major</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select id, fname,email,lname,joinyear,program,major from studentrec where program= 'PHD'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

    <tr><td><input type="radio" name="lilly" value="<%=rs.getString("id")%>"><%=rs.getString("id") %></td>
    <td><%=rs.getString("fname") %></td>
    <td><%=rs.getString("lname") %></td>
    <td><%=rs.getString("email") %></td>
    <td><%=rs.getString("joinyear") %>
    </td><td><%=rs.getString("program") %></td>
    <td><%=rs.getString("major") %></td>
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
<br><br> <input type="submit" value="View Details">
</form>
<br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>