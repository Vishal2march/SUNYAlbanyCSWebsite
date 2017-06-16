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
	   var btns = form.eventsstodel;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<form method="post" action="Eventsnewsdelete" id="f0" onsubmit="return checkRadios(this);">
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
<table border="2">
<tr>
<th>>-<>-><-><-><->Announced Content<-><->-<-><-></th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from eventstab";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

    <tr><td><input type="radio" name="eventsstodel" value="<%=rs.getString("content")%>"><%=rs.getString("content") %></td>
        <%

}
%>
    </tr></table>
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
<br> <input type="submit" value="Edit" name="concept">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" value="Delete" name="concept">
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>