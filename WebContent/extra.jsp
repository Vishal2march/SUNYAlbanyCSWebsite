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
<form method="post" action="updatenews.jsp">
<a href='Home.jsp'>Home</a><br><br><a href='logout.jsp'>Log out</a><br><br>
Welcome <%=session.getAttribute("userid")%>
<%String eventsstodel=request.getParameter("eventsstodel");
%>
<h1 style="color:Orange;">Update NEWS & EVENTS  </h1>
<textarea rows="8" cols="60" wrap="soft" placeholder="Describe your here..." name="eventu" autofocus>

</textarea><br><br>
<input type="hidden" name="eventsstodel" value="<%=eventsstodel %>">
<input type="submit" value="Update"><br><br>
</form>
</body>
</html>