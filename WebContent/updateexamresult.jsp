<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<form method="post" action="finalresult.jsp" onsubmit="return validateForm()">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
<%String del=request.getParameter("del");
%>

   <center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00" align="center">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;"> Posts Result of Departmental Exams</h1></th>
                    </tr>
                </thead>
               
               <tr>
                        <td>Name of Exam</td>
                        <td><input type="text" name="examnameu"/></td>
                    </tr>
                    <tr>
                        <td>Result of Exam</td>
                        <td><textarea rows="6" cols="50" wrap="soft" placeholder="Post here..." name="examresultu" autofocus>

</textarea><br></td></tr>
                      <tr><td><input type="hidden" name="del" value="<%=del %>"></td></tr>

                    <tr>
                        <td><input type="submit" value="Update"/>
                        </td>
                    </tr>
                   </table>
                   
                   </center>
                   </form>       
</body>
</html>