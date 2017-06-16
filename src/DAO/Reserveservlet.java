package DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.sql.*;

import model.Schedule;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NEW.DAO.Resourcereservedao;

/**
 * Servlet implementation class Reserveservlet
 */
@WebServlet("/Reserveservlet")
public class Reserveservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reserveservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String ww= request.getParameter("hapur");
	    String  asd= request.getParameter("ridget");
	    String  jojo= request.getParameter("jojo");
	    String  adate= request.getParameter("calender");
	    //System.out.println(date);
		Date dob=null;
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		
		try{
			dob=df.parse(adate);
		}catch(Exception e){}
	    if(ww.equals("Book")){
		
		
		//Date date=new Date();
		
		//String slot= request.getParameter("slots");
	    	
	    	//Schedule oe=new Schedule();
			//oe.setRid(rid);
		//oe.setDate(date);
		//oe.setSlot(slot);
		
		
		//Resourcereservedao ddo= new Resourcereservedao();
		//ddo.reserve(oe);
		
		
		
		
		try{
			ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
    		Schedule sc= new Schedule();
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement(  
		    		"select slot, status from schedule where Rid=? AND date=? and status='available'"); 
		   
		            ps.setString(1,asd);
		    		ps.setString(2, adate);
		    		System.out.println(asd+" "+adate);
		    		ResultSet rs=ps.executeQuery();
		    		ArrayList<String> al = new ArrayList<String>();
		    		System.out.println(rs.next());
		    		while(rs.next()){
		    			
		    			sc.setSlot(rs.getString("slot"));
		    		    sc.setStatus(rs.getString("status"));
		    		/*	al.add(rs.getString("slot"));
		    			al.add(rs.getString("status"));
		    		*/	
		    			System.out.println(rs.getString("slot"));
		    			System.out.println(rs.getString("status"));
		    			
		    		     allSchedule.add(sc); 	
		    		}
		    		
		    		System.out.println(allSchedule);
		    		  
		    		
		    		request.setAttribute("allSchedule", allSchedule);
		    		     request.setAttribute("status", al);
		    		    request.setAttribute("date", adate);
		    			RequestDispatcher rd=request.getRequestDispatcher("Reserveresources.jsp");  
		    		    rd.forward(request, response);
		    		
	}catch(Exception e)
    {
    	e.printStackTrace();
    	
    }
	    }else{
	    	String iee=request.getParameter("watch");
	    	String ccc=request.getParameter("ccc");
	    	String ridget=request.getParameter("ridget");
	    	SimpleDateFormat df1=new SimpleDateFormat("yyyy-MM-dd");
		
			try{
				//String dddate=df.format(adate);
				//String slot= request.getParameter("slot");
				DateFormat dff = new SimpleDateFormat("yyyy-MM-dd");
//				dob=df1.parse(ccc);
//				String dddd = dff.format(dob);
				System.out.println("date:    "+ccc);
		
	    	
	    		Connection conn = null;
	    		Class.forName("com.mysql.jdbc.Driver");
	    		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root", "root");
	    		Statement st=null;
	    		st=conn.createStatement();
	    		//System.out.println("update schedule set status='Unavailable' where Rid='"+asd+"' and date='"+ccc+"' and slot='"+jojo+"';");
	    		st.executeUpdate("update schedule set status='Unavailable' where Rid='"+asd+"' and date='"+ccc+"' and slot='"+jojo+"';");
	    		String plz="Resource is successfully booked kindly visit again";
	    		request.setAttribute("plz",plz);
	    		response.sendRedirect("Message.jsp");
	    		}
	    		catch(Exception e){
	    		System.out.println(e);
	    		}
	    }
}}
