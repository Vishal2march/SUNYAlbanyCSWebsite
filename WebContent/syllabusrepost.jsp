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
<form method="post" action="updatesyllabus.jsp">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
<%String syllabustoview=request.getParameter("syllabustoview");
%>
<h1 style="color:Orange;">Post TA information - courses syllabus - Office hours</h1>
Course Syllabus: <textarea rows="8" cols="50" wrap="soft" placeholder="put details here..." name="coursesyllgy" autofocus>
</textarea><br><br>
Office Hours: <input type="text" name="officehrsgy"><br><br>
TA Information: 
<textarea rows="8" cols="60" wrap="soft" placeholder="put details here..." name="tainforgy" autofocus>
</textarea><br>
<input type="hidden" name="syllabustoview" value="<%=syllabustoview %>">
<input type="submit" value="Update"><br><br>


</form>
</body>
</html>