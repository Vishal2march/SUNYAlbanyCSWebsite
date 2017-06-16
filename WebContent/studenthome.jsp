<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<body class="menu" BACKGROUND="${pageContext.request.contextPath}/image/back.jpg"/no-repeat-y>
<p align="center"><i><strong>Welcome to SUNY Albany Computer Science Department</strong></i></p>

<h1 align="center" style="color:purple;">Student home page</h1>

<strong>Welcome</strong> <%=session.getAttribute("userid")%><br><br>
<a style="color:black;" href='logout.jsp'><input type="submit" value="Logout" /></a>
<br>
<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
  <tr>
    <td colspan="4" >
    <div id="horizontalmenu">
  
  <ul>
        <li> <a style="color:black;" href="http://www.albany.edu/"><mark>About us</mark></a></li>
        <li> <a style="color:black;" href="Updatestudentregister.jsp"><mark>Edit user profile</mark></a></li>
         <li> <a style="color:black;" href="studentcourses.jsp"><mark>View Course List</mark></a></li>
          <li> <a style="color:black;" href="ExamApply.jsp"><mark>Register for Exams</mark></a></li>
          <li> <a style="color:black;" href="Resultindividual.jsp"><mark>View Dept Exam Results</mark></a></li>
          <li> <a style="color:black;" href="otheralumni.jsp"><mark>View Alumni Information</mark></a></li>
          <li> <a style="color:black;" href="discussionhome.jsp"><mark>Discussion Board</mark></a></li>
          <li> <a style="color:black;" href="otherjobs.jsp"><mark>Apply for Jobs</mark></a></li>
          <li> <a style="color:black;" href="Reserveresources.jsp"><mark>Reserve Resources</mark></a></li>
           <li> <a style="color:black;" href="Degreecourses1.jsp"><mark>Courses for each concentration</mark></a></li>
          <li> <a style="color:black;" href="Viewapplyjobs.jsp"><mark>View Applied Jobs</mark></a></li>
          <li> <a style="color:black;" href="Degreecourses.jsp"><mark>Program Requirements List</mark></a></li>
          <li> <a style="color:black;" href="registerexamview.jsp"><mark>View Registered Exam</mark></a></li>
         <li> <a style="color:black;" href="https://login.microsoftonline.com/#"><mark>Email Faculty/staff</mark></a></li>
         </ul>
</div>
</td>
</tr>
</table>
</body>
</html>