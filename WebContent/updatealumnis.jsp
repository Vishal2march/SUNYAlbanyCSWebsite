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
<% 
HttpSession sessions=request.getSession();
String ide=request.getParameter("blanket");

String cot=request.getParameter("fnameu");
String coti=request.getParameter("degreeu");
String cotuu=request.getParameter("emailu");
String cotio=request.getParameter("companyu");
String pissu=request.getParameter("passoutu");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root", "root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update alumnidetail set fname='"+cot+"', degree='"+coti+"', email='"+cotuu+"', company='"+cotio+"', passout='"+pissu+"' where fname='"+ide+"'");
response.sendRedirect("otheralumni.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>
</body>
</html>