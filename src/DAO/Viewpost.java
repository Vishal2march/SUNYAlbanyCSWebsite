package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Viewpost
 */
@WebServlet("/Viewpost")
public class Viewpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewpost() {
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
		String  Day= request.getParameter("Day");    
	    String  Timings= request.getParameter("Timings");
	    String  Venue= request.getParameter("Venue");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement("select * from postoffice"); 
		    ResultSet rs=ps.executeQuery(); 
		    while(rs.next())  
		    {  
		    	System.out.println(rs.getString(1));
		    	System.out.println(rs.getString(2));
		    	System.out.println(rs.getString(3));
		    	 RequestDispatcher rd=request.getRequestDispatcher("postkoview.jsp");  
			        rd.forward(request, response);
	}
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
}}
