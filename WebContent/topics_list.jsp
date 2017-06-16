<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
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
<body style="background-color:#90EE90" BACKGROUND="${pageContext.request.contextPath}/images/lock-1.jpg"/>
<form method="post" action="Topicsdelete">
<%String Role= (String)session.getAttribute("role"); %>
<h1 align="center"><i>KINDLY VIEW TOPICS LIST HERE</i></h1><br>
<img align="right" src="images/albany.png" style="width:450px;height:280px;">
<%ArrayList<String> list = (ArrayList<String>) request.getAttribute("list"); %>
<%for (int i = 0;i<list.size();i++) {%>
<li>Topic Name:</li><input type="radio" name="rido" value="<%=list.get(i)%>">
<a href="ViewServlet?topic=<%=list.get(i)%>"><%=list.get(i)%></a><br><br>
<%} %>

<%String Rolee= (String)session.getAttribute("role");
if(Rolee.equals("faculty")){
%>


<br> <input type="submit" value="Delete"><br><br>
<%}
else if(Rolee.equals("staff")){
	%>
	<br> <input type="submit" value="Delete"><br>
	<% }
else{
	%>
	<h1>student Kindly view it!!!</h1>
<% }%>
<br><a href='discussionhome.jsp'>Go Back</a>
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>