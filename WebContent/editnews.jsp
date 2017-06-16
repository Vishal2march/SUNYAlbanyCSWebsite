<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="updatenews.jsp">
<table border="1">
<tr><th>Announced Content</th></tr>
<%
String eventsstodel=request.getParameter("eventsstodel");
//int no=Integer.parseInt(eventsstodel);
//int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
String query = "select * from eventstab where content='"+eventsstodel+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="content" value="<%=rs.getString("content")%>"></td>
</tr>
<tr>
<td><input type="submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){ e.printStackTrace();
	}
%>
</table>
</form>
</body>
</html>