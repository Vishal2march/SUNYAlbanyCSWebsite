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
String  asd=(String) sessions.getAttribute("courseid");
String ide=request.getParameter("syllabustoview");
//int num=Integer.parseInt(ide);
String contentt=request.getParameter("coursesyllgy");
String contentu=request.getParameter("officehrsgy");
String contentic=request.getParameter("tainforgy");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root", "root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update posttainfo set coursesyll='"+contentt+"', officehrs='"+contentu+"', tainfor='"+contentic+"' where courseid='"+ide+"'");
response.sendRedirect("showsyllabus.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>
</body>
</html>