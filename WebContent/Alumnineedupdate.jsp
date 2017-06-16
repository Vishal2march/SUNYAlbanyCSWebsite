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
<form method="post" action="updatealumnis.jsp">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
<%String blanket=request.getParameter("blanket");
%>
<center>
            <table border="1" width="50%" cellpadding="7" bgcolor="#FFFF00">
                <thead>
                    <tr>
                        <th colspan="2"><h1 style="color:red;">Update Alumni Information</h1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name of Alumni:</td>
                        <td><input type="text" name="fnameu" value="" /></td>
                    </tr>
                    <tr>
                        <td>Name of Degree Completed</td>
                        <td><input type="text" name="degreeu" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="emailu" value="" /></td>
                    </tr>
                    <tr>
                        <td>Current Company</td>
                        <td><input type="text" name="companyu" value="" /></td>
                    </tr>
                    <tr>
                        <td>Passout Year</td>
                        <td><input type="text" name="passoutu" value="" /></td>
                    </tr>
                </tbody>
            </table>
            </center><br><br>
       

<input type="hidden" name="blanket" value="<%=blanket %>">
<input type="submit" value="Update"><br><br>
</form>
</body>
</html>