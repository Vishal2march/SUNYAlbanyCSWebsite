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
<body style="background-color:#800080">
<img align="left" src="image/suny.png" style="width:200px;height:120px;">
<img align="right" src="image/tt.png" style="width:170px;height:100px;">
<form name="myForm" method="post" action="Updatestudentregist" onsubmit="return validateForm()">
<a href='studenthome.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%String userid= (String)session.getAttribute("userid");
              out.print(userid);   %>
            <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Enter Faculty Information</h1></th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                        
                        <td><input type="hidden" name="userid" value="<%=userid %>" /></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email ID</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Joined Year</td>
                        <td><input type="text" name="joinedyear" value="" /></td>
                    </tr>
                    <tr>
                    <td>Program</td>
            <td> 
                        <select name="program" id="program"> 
                <option value="/select">/select</option>               
                <option value="BS">BS</option>
                <option value="BA">BA</option>
                <option value="MS">MS</option>
                <option value="PHD">PHD</option>
        </select><TD ALIGN="center"></TD>
                        </td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Major</td>
                        <td><input type="text" name="major" value="" /></td>
                    </tr>
                     <tr>
                        <td>Advisor Information</td>
                        <td><input type="text" name="advisor" value="" /></td>
                    </tr>
                     <tr>
                        <td>Phone no.</td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                     
                     <tr>
                        <td><input type="submit" value="Update" /></td>
                   
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>