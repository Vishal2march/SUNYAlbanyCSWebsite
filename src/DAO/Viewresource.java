package DAO;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Viewresource
 */
@WebServlet("/Viewresource")
public class Viewresource extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewresource() {
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
		String Resourcename = request.getParameter("Resourcename");
		String  Days= request.getParameter("Days"); 
	    String  Timings= request.getParameter("Timings");
	    String  Duration= request.getParameter("Duration");
	    String  Date= request.getParameter("dddate");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    
		    PreparedStatement ps=con.prepareStatement("select * from resource");  
		    //ps.setString(1,Resourcename);  
		    //ps.setString(2,Days);
		    //ps.setString(3,Timings);
		    //ps.setString(4,Duration);
		    //System.out.print("<table width=50% border=1>");  
		    //System.out.print("<caption>Result:</caption>");  
		      
		    ResultSet rs=ps.executeQuery();  
		    //System.out.println(rs.getInt(1)+" "+rs.getString(2)); 
		    //System.out.println(rs.getString(1)+" "+rs.getString(2)+""+rs.getString(3)+""+rs.getString(4)); 
		    //ResultSetMetaData rsmd=rs.getMetaData();  
		    //int total=rsmd.getColumnCount();  
		    //System.out.print("<tr>");  
		    //for(int i=1;i<=total;i++)  
		    //{  
		    //System.out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
		    //}  
		      
		    //System.out.print("</tr>");  
		    while(rs.next())  
		    {  
		    	System.out.println(rs.getString(1));
		    	System.out.println(rs.getString(2));
		    	System.out.println(rs.getString(3));
		    	System.out.println(rs.getString(4));
		    	System.out.println(rs.getString(5));
		    }
		    //System.out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");  
		                      
		    //}  
		      
		    //System.out.print("</table>"); 
		    request.setAttribute("Resourcename", Resourcename);
		    request.setAttribute("Days", Days);
		    request.setAttribute("Timings", Timings);
		    request.setAttribute("Duration",Duration);
		    request.setAttribute("Date",Date);
		    RequestDispatcher rd=request.getRequestDispatcher("View.jsp");  
	        rd.forward(request, response); 
	} catch(Exception e){
		e.printStackTrace();
	}

}}
