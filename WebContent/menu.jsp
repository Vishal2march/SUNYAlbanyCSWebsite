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
<style>
.dropbtn {
    background-color: #ffff00;
    padding: 14px;
    font-size: 14px;
    
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #ffff00;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ffff00}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #ffff00;
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
<body class="menu">
<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
  <tr>
    <td colspan="4" >
    <div id="horizontalmenu">
  
  <ul>
        <li> <a style="color:black;" href="http://www.albany.edu/"><mark>About us</mark></a></li>
        <li> <a style="color:black;" href="Updateregister.jsp"><mark>Edit user profile</mark></a></li>
<li><a style="color:black;" href=list.jsp><mark>Postofficehrs/TA/Syllabus</mark></a></li>

<li><a  style="color:black;" href=announcejob.jsp><mark>Announce Jobs</mark></a></li>
<li><a  style="color:black;" href=announceevents.jsp><mark>Announce Events & News</mark></a></li>
<li><a style="color:black;" href=postdeptexams.jsp><mark>Post Dept Exams</mark></a></li>
<li><a style="color:black;" href=viewdeptexams.jsp><mark>Post Deptexams Results</mark></a></li>
<li><a style="color:black;" href=otherexamresultview.jsp><mark>View deptexams Results</mark></a></li>
<li><a style="color:black;" href=courses.jsp><mark>View/Create Courses</mark></a></li>
<li><a style="color:white;" href=phdlist.jsp><mark>View PHD students</mark></a></li>
<li><a style="color:white;" href=alumnistudent.jsp><mark>Post Alumni-Students Information</mark></a></li>
<li><a style="color:black;" href=discussionhome.jsp><mark>Faculty/Staff Discussion forum</mark></a></li>
<li>
<div class="dropdown">
  <a href="#" style="color:black;background-color: #ffff00" class="dropbtn">Manage Resources</a>
  <div class="dropdown-content">
    <a href=Reserveresources.jsp>Reserve Resources</a>
    <a href=Cancelresources.jsp>Cancel Resources</a>
  </div>
</div>
</li>
</ul></div>
</td>
</tr>
<br><br/>
<div class="footer">All Rights Reserved Copyright © SUNY ALBANY</div>
</body>
