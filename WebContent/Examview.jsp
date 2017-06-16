<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/mydb"
     user="root"  password="root"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from createexam;
</sql:query>
Post Exam details<br><br>
            <table border="1" bgcolor="#FFFF00" align="center">
            <tr>
<th>Exam Name</th>
<th>Exam Date</th>
<th>Extra Links</th>
<th>Net ID</th>
</tr>
                <c:forEach var="row" items="${result.rows}">
                
                <tr>
                
                
          
<td><c:out value="${row.examname}"/></td>
<td><c:out value="${row.examdate}"/></td>
<td><c:out value="${row.link}"/></td>
<td><c:out value="${row.userid}"/></td>
</tr>
</c:forEach>
            </table>
            <br><br/>
<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>