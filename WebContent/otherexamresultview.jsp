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
	   var btns = form.del;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<form method="post" action="Examresultdelete" id="f0" onsubmit="return checkRadios(this);">
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
<th>Exam Name</th>
<th>Exam Result</th>
<th>Net ID</th>
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
String query="select * from examresulttab";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next())
{

%>


    <tr><%//if(rs.getString("id").equals(session.getAttribute("userid"))){ %>
    <td><input type="radio" name="del" value="<%=(rs.getString("Examname"))%>"><%=rs.getString("Examname") %></td>
    <%//} %>
    <td><%=rs.getString("examresult") %></td>
    <td><%=rs.getString("Userid") %></td>
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
if(Role.equals("faculty")){
%>

<br> <input type="submit" name="mbutton" value="Delete">&nbsp&nbsp&nbsp&nbsp&nbsp <input type="submit" name="mbutton" value="Edit">
<%}
else if(Rolee.equals("staff")){
	%>
	<h1>staff Kindly view it!!!</h1>
	<% }
else{
	%>
	<h1>student Kindly view it!!!</h1>
<% }%>
</form>
<br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>