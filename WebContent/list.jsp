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
	   var btns = form.courseidtoview;
	   for (var i=0; el=btns[i]; i++) {
	     if (el.checked) return true;
	   }
	   alert('Please select a radio button');
	   return false;
	}
</script>
<a href='Home.jsp'>Home</a><br><br>
<jsp:include page="menu.jsp" /><br><br>
<form method="post" action="Taid" id="f0" onsubmit="return checkRadios(this);">
<table border="2" align="center">
<tr>
<th>Course ID</th>
<th>Course Name</th>
<th>Credits</th>
<th>Course Career</th>
<th>Faculty name</th>
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
    <tr><td><input type="radio" id="one" name="courseidtoview" value="<%=rs.getString("courseid")%>"><%=rs.getString("courseid") %></td>
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
<br> <input type="submit" value="Post Information" >

</form>
<br><br/>
<div class="footer">All Rights Reserved Copyright © SUNY ALBANY</div>
</body>
</html>