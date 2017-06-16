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
<script type="text/javascript">
function checkRadios(form) {
	   var btns = form.courseidtodel;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<a href='Home.jsp'>Home</a><br><br>
<form method="post" action="Coursedelete" id="f0" onsubmit="return checkRadios(this);">

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
String query="select * from listcourses";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><input type="radio" name="courseidtodel" value="<%=rs.getString("courseid")%>"><%=rs.getString("courseid") %></td>
    <td><%=rs.getString("coursename") %></td>
    <td><%=rs.getString("credits") %></td>
    <td><%=rs.getString("career") %></td>
    <td><%=rs.getString("facultyname") %></td>
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
<br> <input type="submit" value="Delete" name="core">
</form>
</body>
</html>