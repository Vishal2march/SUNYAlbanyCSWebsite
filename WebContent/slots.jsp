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
<form method="post" action="Reserveservlet">
<table border="2">
<tr>
<th>Available slots</th>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/mydb";
String username="root";
String password="root";
String query="select * from bookingslots";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next())
{
	%>
	 <td><input type="radio" name="slots" value="<%=(rs.getString("slots"))%>"><%=rs.getString("slots") %></td>
     </tr>
        <%

}
%>
    </table>
     <%
    rs.close();
    stmt.close();
    conn.close(); 
    
    
    RequestDispatcher rd=request.getRequestDispatcher("Reserveresources.jsp");  
    rd.include(request, response);
 }catch(Exception e){}
%>
</form>
</body>
</html>