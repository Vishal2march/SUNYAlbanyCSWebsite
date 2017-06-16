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
<form name="MYForm" method="" action="viewdatabase.jsp" onsubmit="return validateForm()">
Hello <%=session.getAttribute("userid") %><br><br>
<%String userid= (String)session.getAttribute("userid"); %><br><br>
<a href='studenthome.jsp'>Home</a><br><br>
<% HttpSession sessionn=request.getSession();
//String program= (String)sessionn.setAttribute("program",program); 
String program= (String)sessionn.getAttribute("program"); %>

            <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Enter Degree name</h1></th>
                    </tr>
                </thead>
                <tbody>
               <tr>
           <td>Program</td>
                        <td> 
                        <select name="program" id="program"> 
                <option value="/select">/select</option>               
                <option value="B.S.">B.S.</option>
                <option value="B.A.">B.A.</option>
                <option value="M.S.">M.S.</option>
                <option value="PHD">PHD</option>
        </select><TD ALIGN="center"></TD>
                        </td>
                    </tr>
<tr>
                        <td><input type="submit" value="Submit" /></td></tr>             
                </tbody>
            </table>
            </center>
        </form>
        <div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>