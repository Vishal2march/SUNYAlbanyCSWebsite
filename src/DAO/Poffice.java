/*package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Clock;
import java.time.LocalTime;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

*//**
 * Servlet implementation class Poffice
 *//*
@WebServlet("/Poffice")
public class Poffice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public Poffice() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String  Day= request.getParameter("Day");  
		String Timings = request.getParameter("Timings");
		SimpleDateFormat tt = 
			      new SimpleDateFormat ("hh:mm:ss").format((request.getParameter("Timings"));
			      //Timings.setTimeZone(TimeZone.getTimeZone("IST"));
	    //String  Timings= request.getParameter("Timings");
	    String  Venue= request.getParameter("Venue");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    DateFormat df=new SimpleDateFormat("yyyy-mm-dd");
			Date date=new Date();
				String dddate=df.format(date);
			    PreparedStatement ps=con.prepareStatement(  
			    		"insert into postoffice values(?,?,?)");      
			    		ps.setString(1,Day);  
			    		//Clock c=new Clock();
			    		///Clock c = (Clock)formatter.parse(String);
			    		//LocalTime localTime = new LocalTime( "14:40" );
			    		ps.setTime(2,Timings);  
			    	    ps.setString(3,Venue);
			    	    int i=ps.executeUpdate(); 
			    		if(i>0){
			    			RequestDispatcher rd=request.getRequestDispatcher("Viewpost");  
			    	        rd.forward(request, response); 
			    		}  
			    	    else{  
			    	        System.out.print("Please check");  
			    	        RequestDispatcher rd=request.getRequestDispatcher("Postofficehrs.jsp");  
			    	        rd.include(request, response);  }
	    } catch(Exception e){
			e.printStackTrace();
		}

}}
*/