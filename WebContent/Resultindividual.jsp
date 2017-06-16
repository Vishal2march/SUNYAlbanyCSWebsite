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
<form method="post" action="">
<%String userid= (String)session.getAttribute("userid");%>
<%String Role= (String)session.getAttribute("role"); 
if(Role.equals("student")){
%>
<a href='studenthome.jsp'>Home</a><br><br>
<%

}
else{

%>

<a href='Home.jsp'>Home</a><br><br>
<% }%>
<table border="2">
<tr>
<th>Exam Name</th>
<th>User ID</th>
<th>Exam Result</th>
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
String query="select t1.examname, t1.userid, t2.examresult from examregister t1 JOIN examresulttab t2 ON t1.examname=t2.Examname where t1.userid='"+userid+"'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next())
{
%>
    <tr><%//if(rs.getString("id").equals(session.getAttribute("userid"))){ %>
    <td><input type="radio" name="del" value="<%=(rs.getString("examname"))%>"><%=rs.getString("examname") %></td>
    <%//} %>
     <td><%=rs.getString("userid") %></td>
    <td><%=rs.getString("examresult") %></td>    
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
</form>
<br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>