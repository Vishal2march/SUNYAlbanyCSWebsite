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
<form method="post" action="syllabusrepost.jsp">
<a href='Home.jsp'>Home</a><br>
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
    <td><input type="radio" name="syllabustoview" value="<%=rs.getString("courseid")%>"><%=rs.getString("courseid") %></td>
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
<br> <input type="submit" value="Edit">

</form>
</body>
</html>