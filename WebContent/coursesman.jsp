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
<form method="post" action="" id="f0" onsubmit="return checkRadios(this);">
Hello <%=session.getAttribute("userid") %><br><br>
<% HttpSession sessionn=request.getSession();%>
<% String program=(String)session.getAttribute("program"); %>
<%=session.getAttribute("program") %><br>
<% System.out.println("jjjjjjjjj"+program);%>
 <%String programp=request.getParameter("program"); %><br>
<table border="2">
<tr>
<th>Degree Name</th>
<th>Courses name</th>
<th>Credits</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from coursesmen where degreename='"+programp+"'";
//String query="select t1.degreename, t1.Totalcredits, t1.recommendations,t1.Tests,t1.corecourses,t1.proficiencyexam from degreecourses t1 JOIN studentrec t2 ON t1.degreename=t2.program where t2.program='"+program+"'";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getString("degreename")%></td>
    <td><%=rs.getString("coursesname") %></td>
    <td><%=rs.getString("credits") %></td>
    
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
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>