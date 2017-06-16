<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dd.css"/>
<style type="text/css" media="screen">
#horizontalmenu ul {
padding:1; 
margin:2; 
list-style:none;
}
#horizontalmenu li {
float:left; 
position:relative; 
padding-right:60; 
display:block;
border:2px solid #FF0000;
border-style:outset;
}
#horizontalmenu li ul {
    display:none;
position:absolute;
}
#horizontalmenu li:hover ul{
    display:block;
    background:#F9F2FF;
    height:auto; width:14em;
}
#horizontalmenu li ul li{
clear:both;
border-style:none;
}
</style>

</head>
<body BACKGROUND="${pageContext.request.contextPath}/image/newone.jpg"/>
<p align="center"><i><strong>Welcome to SUNY Albany Computer Science Department</strong></i></p>

<h1 align="center" style="color:purple;">Faculty home page</h1>

<strong>Welcome</strong> <%=session.getAttribute("userid")%><br><br>
<a style="color:black;" href='logout.jsp'><input type="submit" value="Logout" /></a>
<br>
   <jsp:include page="menu.jsp" />
</body>
</html>