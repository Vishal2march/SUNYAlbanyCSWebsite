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
<body class="menu" BACKGROUND="${pageContext.request.contextPath}/image/back.jpg"/no-repeat-y>
<p align="center"><i><strong>Welcome to SUNY Albany Computer Science Department</strong></i></p>

<h1 align="center" style="color:purple;">Staff home page</h1>

<strong>Welcome</strong> <%=session.getAttribute("userid")%><br><br>
<a style="color:black;" href='logout.jsp'><input type="submit" value="Logout" /></a>
<br>
<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
  <tr>
    <td colspan="4" >
    <div id="horizontalmenu">
  
  <ul>
        <li> <a style="color:black;" href="http://www.albany.edu/"><mark>About us</mark></a></li>
        <li> <a style="color:black;" href="Updateregister.jsp"><mark>Edit user profile</mark></a></li>
<li><a  style="color:black;" href=announcejob.jsp><mark>Announce Jobs</mark></a></li>
<li><a  style="color:black;" href=announceevents.jsp><mark>Announce Events & News</mark></a></li>
<li><a style="color:black;" href=discussionhome.jsp><mark>Faculty/Staff Discussion forum</mark></a></li>
<li><a style="color:white;" href=phdlist.jsp><mark>View PHD Students status</mark></a></li>
<li><a style="color:white;" href=addresources.jsp><mark>Add Resources</mark></a></li>
<li><a style="color:white;" href=Reserveresources.jsp><mark>Reserve Resources</mark></a></li>
<li><a style="color:white;" href=alumnistudent.jsp><mark>Post Alumni Information</mark></a></li>
<li><a style="color:white;" href=postdeptexams.jsp><mark>Post new Exam offering</mark></a></li>
<li><a style="color:black;" href=viewdeptexams.jsp><mark>Post Deptexams Results</mark></a></li>
<li><a style="color:black;" href=otherexamresultview.jsp><mark>View deptexams Results</mark></a></li>
</ul>
</div>
</td>
</tr>
</table>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>