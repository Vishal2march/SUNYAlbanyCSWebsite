<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<marquee>Resource reservation is successfull.</marquee><br>
<h1 style="color:purple;">Your reserve resource information is:</h1>
<form action="<%=request.getContextPath() %>/Viewresource"></form>
<%
    Object value = request.getAttribute("Resourcename");
%>
<p><%=value%></p>
<%
    Object value1 = request.getAttribute("Days");
%>
<p><%=value1%></p>
<%
    Object value2 = request.getAttribute("Timings");
%>
<p><%=value2%></p>
<%
    Object value3 = request.getAttribute("Duration");
%>
<p><%=value3%></p>

<%
    Object value4 = request.getAttribute("Date");
%>
<p><%=value4%></p><br>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>