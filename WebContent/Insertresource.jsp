<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp" /><br>
<form name="myForm" method="post" action="Examresultservlet" onsubmit="return validateForm()">

<a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
            <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Staff Add Resource Page</h1></th>
                    </tr>
                </thead>
               
               <tr>
                        <td>Resource ID</td>
                        <td><input type="text" name="rid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Resource Name</td>
                        <td><input type="text" name="resname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Resource Description</td>
                        <td><input type="text" name="resdesc" value="" /></td>
                    </tr>
                    </tr>
                     <tr>
                        <td><input type="submit" value="Post" /></td>
                    </tr>
                    </table>
         
</body>
</html>