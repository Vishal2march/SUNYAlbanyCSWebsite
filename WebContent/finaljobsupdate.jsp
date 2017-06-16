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
HttpSession sessions=request.getSession();
<a href='Home.jsp'>Home</a><br>
Welcome <%=session.getAttribute("userid")%>
<% String asdd = (String)request.getAttribute("jobidtodel");
%> 
<%

String jobidi=request.getParameter("jobidi");
String JobTypei=request.getParameter("JobTypei");
String Companynamei=request.getParameter("Companynamei");
String Jobtitlei=request.getParameter("Jobtitlei");
String Wagei=request.getParameter("Wagei");
String Categoryi=request.getParameter("Categoryi");
String Eligibilityi=request.getParameter("Eligibilityi");
String Uploadi=request.getParameter("Uploadi");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root", "root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update offjob set jobid='"+jobidi+"', JobType='"+JobTypei+"', Companyname='"+Companynamei+"', Jobtitle='"+Jobtitlei+"',Wage='"+Wagei+"',Category='"+Categoryi+"', Eligibility='"+Eligibilityi+"', Upload='"+Uploadi+"' where jobid='"+asdd+"'");
response.sendRedirect("otherjobs.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>
</body>
</html>