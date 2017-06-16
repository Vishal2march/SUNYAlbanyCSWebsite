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

<body style="background-color:#90EE90" BACKGROUND="${pageContext.request.contextPath}/image/lock-1.jpg"/>
<script>
function validateForm(){
	var z = document.forms["MYForm"] ["name"].value;
	if(z==null || z=="") {
		alert("topic name must be filled out");
		return false; }
}
</script>
<img align="middle" src="image/main.jpg" style="width:1090px;height:100px;"><br><br>
<h1 align="middle"><i>KINDLY CREATE NEW TOPICS HERE</i></h1><br>

<%String bigerror=(String)request.getAttribute("bigerror");
if(null != bigerror)
	out.print(bigerror);

%>
<%
String dell=(String)request.getAttribute("dell");
if(null != dell)
System.out.print(dell);
%>
<form name="MYForm" action="Discussionservlet" method="post" onsubmit="return validateForm()"> 
 
<strong><i>Create a discussion topic:</i></strong><input type="text" placeholder="enter a name here" name="name"/><br/> <br>
 
<input type="submit" value="submit"/><br><br>
<a href='discussionhome.jsp'>Go Back</a>
</form>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>