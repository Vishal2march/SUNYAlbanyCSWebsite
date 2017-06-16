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
</head>
<body>
<form method="" action="" id="f0" onsubmit="return checkRadios(this);">
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
<th>Exam</th>
<th>Exam Date</th>
<th>Link</th>
<th>Posted User ID</th>
<th>Exam Register</th>
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
String query="select * from createexam";
String uid=(String)session.getAttribute("userid");
String query1="select * from examregister where userid='"+uid+"'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
Statement stmt2=conn.createStatement();
ResultSet rs2=stmt2.executeQuery(query1);

ArrayList<String> a = new ArrayList<String>();
while(rs2.next()){
	a.add(rs2.getString("examname"));}
while(rs.next())
{
%>
    <tr><%//if(rs.getString("id").equals(session.getAttribute("userid"))){ %>
    <td><input type="radio" name="eexam" value="<%=(rs.getString("examname"))%>"><%=rs.getString("examname") %></td>
    <td><%=rs.getString("examdate") %></td>
    <td><%=rs.getString("link") %></td>
    <td><%=rs.getString("userid") %></td>
    <%String Rolee= (String)session.getAttribute("role");
   if(Rolee.equals("student")){
	   
   if(!a.contains(rs.getString("examname"))){
   %>
    
      <td><a href="Examapplyservlet?eexam=<%=rs.getString("examname")%>">Register</a></td><%}}%>
    </tr>
        <%

}
%>
   </tr> </table>
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
<br> 
    
    
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>