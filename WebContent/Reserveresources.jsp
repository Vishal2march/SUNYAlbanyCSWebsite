<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import=" java.util.Date"%>
<%@ page import="model.*"%>
<%@ page import="NEW.DAO.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />

 <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
   <script>
   $(function() {
	    $( "#datepicker" ).datepicker();
	});

</script>

<title>Reserve resources page</title>
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
<form method="POST" action="Reserveservlet">
<%String Role= (String)session.getAttribute("role"); 
if(Role.equals("staff")){
%>
<a href='staffhome.jsp'>Home</a><br><br>
<%
}
else{
%>
<a href='Home.jsp'>Home</a><br><br>
<% }%>

	<br>
	<img align="right" src="image/canon.jpg" alt="Mountain View"
		style="width: 400px; height: 180px;">
	<br>
	<br>
	<img align="right" src="image/pro.jpg" alt="Mountain View"
		style="width: 400px; height: 180px;">
	<br>
	<br> Welcome
	<%=session.getAttribute("userid")%><br>
	<br>
	<a href='logout.jsp'>Log out</a>
	<br>
	<br>
	<h1 style="color: Orange;">Resources Reservation</h1>
		<table border="2">
			<tr>
				<th>Resource Name</th>
			</tr>
			<%
				HttpSession session2 = request.getSession();
			%>
Hello<%=session.getAttribute("userid")%>
			<%
				String x=(String)request.getAttribute("date");
			%>
			<%
				String u=(String) request.getAttribute("ridget");
			%>
			<%
				try
			{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/mydb";
			String username="root";
			String password="root";
			String query="select * from resource";
			Connection conn=DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);

			while(rs.next())
			{
			%>
<tr>
			<td><input type="radio" name="ridget"
				value="<%=(rs.getString("Rid"))%>"><%=rs.getString("Rid")%></td>
			<td><%=rs.getString("Name")%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			rs.close();
		    stmt.close();
		    conn.close();
		    }
		catch(Exception e)
		{
		    e.printStackTrace();
		    }
		%>
		<br> <br> Date: <input type="date" name="calender" id="datepicker"/><br>
		<br> <input type="submit" value="Book" name="hapur" /> <br>
		<br>

		<table border="2" bgcolor="#00FF00">
			<tr>
				<th> Slots</th>
				<th>Status</th>
			</tr>
			<%
				ArrayList<Schedule> al = (ArrayList<Schedule>) request.getAttribute("allSchedule");
				
				//ArrayList<String> all = (ArrayList<String>)request.getAttribute("status");
 
	//paste yaha karna hai
  
  
if(al!=null){
				for(int i=0; i <al.size();i++){
					//out.print(i);
					
					Schedule sc= new Schedule();
						
					sc = al.get(i);
                    
					/* out.print(sc.getSlot()+"---"+sc.getStatus());
				 */
                    //int k=i+1;		
              
                      String slot=sc.getSlot();
                      //String status=sc.getStatus();
              %>
			<tr>
				<td><input type="radio" id="watch" name="jojo"
					value="<%=sc.getSlot()%>">
					<%=sc.getSlot()%>
					</td>
					<td><%=sc.getStatus()%>
					</td>
				<td> 	
				  <input type="hidden"
					name="ccc" value="<%=x%>">
					<input type="hidden"
					name="ridget" value="<%=u%>">	
				</td>
			</tr>
		<%
			}
				}
		%>
		</table>
		<div id=Entry>
			<input type="submit" id="show-me" value="submit" name="hapur"/>&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="submit" id="show-me" value="Cancel" name="hapur"/>
		</div>
	</form>
	<div class="footer"><bold>All Rights Reserved Copyright © SUNY ALBANY</bold></div>
</body>
</html>
