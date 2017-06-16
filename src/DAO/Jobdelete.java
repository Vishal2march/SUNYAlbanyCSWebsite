package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Jobdelete
 */
@WebServlet("/Jobdelete")
public class Jobdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jobdelete() {
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
		String merabutton=request.getParameter("merabutton");
		String  asd= request.getParameter("jobidtodel");
		if(merabutton.equals("Delete")){
			
		
		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement("delete from offjob where jobid = ?"); 
		    ps.setString(1, asd);
		    ps.executeUpdate();
		    int i = ps.executeUpdate();
		    if(i!=0)
		    System.out.println("Deleting row...");
		    else if (i==0)
		    {
		    System.out.println("<br>Row has been deleted successfully.");
		    RequestDispatcher rd=request.getRequestDispatcher("otherjobs.jsp");  
		    rd.include(request, response);
		    }
		    }
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    	
		    }
		}
		else{
			 request.setAttribute("jobidtodel",asd );
			 RequestDispatcher rd=request.getRequestDispatcher("updatejobs.jsp");  
			    rd.include(request, response);
		}
	}

}
