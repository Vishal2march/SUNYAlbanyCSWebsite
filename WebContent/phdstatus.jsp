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
<a href='Home.jsp'>Home</a><br><br>
<form method="post" action="">

<table border="2">
<tr>
<th>Status</th>
<th>No. of Semesters</th>
<th>Net ID</th>
</tr>
   <% HttpSession session2 = request.getSession(); %>
Hello <%=session.getAttribute("userid") %>
<%String idd= request.getParameter("lilly"); %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from phddetail where netid='"+idd+"'";
System.out.println(idd);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next())
{

%>


  
    
    
  <tr>  <td><%=rs.getString("phdstatus") %></td>
    <td><%=rs.getString("semesters") %></td>
    <td><%=rs.getString("netid") %></td>
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

<br>
</form>

</body>
</html>