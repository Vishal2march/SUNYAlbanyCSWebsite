<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="" id="f0" onsubmit="return checkRadios(this);">

<table border="2">
<tr>
<th>Course ID</th>
<th>Course Name</th>
<th>Credits</th>
<th>Course Career</th>
<th>Faculty Name</th>

</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
//String query="select t1.courseid AS 'Course ID', t1.coursename AS 'Course Name',t1.credits AS 'Credits',t1.career AS 'Career',t1.facultyname AS 'Faculty Name',t2.coursesyll AS 'Course syllabus', t2.officehrs AS 'Office hours', t2.tainfor AS 'TA info'from listcourses t1 INNER JOIN  t2 ON t1.courseid=t2.courseid";

String query="select * from listcourses";

Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getString("courseid")%></td>
    <td><%=rs.getString("coursename") %></td>
    <td><%=rs.getString("credits") %></td>
    <td><%=rs.getString("career") %></td>
    <td><%=rs.getString("facultyname") %></td>
    
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
<br><br><br>

<table border="2" align="center">
<tr>
<th>Course Syllabus</th>
<th>Office Hours</th>
<th>TA Information</th>
<th>Course ID</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from posttainfo";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
%>
    <tr><td><%=rs.getString("coursesyll") %></td>
    <td><%=rs.getString("officehrs") %></td>
    <td><%=rs.getString("tainfor") %></td>
    <td><%=rs.getString("courseid")%></td>
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

<h1>Students kindly view it</h1>
</form>
</body>
</html>