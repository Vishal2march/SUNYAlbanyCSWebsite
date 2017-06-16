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
 * Servlet implementation class Eventsnewsdelete
 */
@WebServlet("/Eventsnewsdelete")
public class Eventsnewsdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Eventsnewsdelete() {
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
		String concept=request.getParameter("concept");
		String  eventsstodel= request.getParameter("eventsstodel");
		if(concept.equals("Delete")){
			
		
		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement("delete from eventstab where content = ?"); 
		    ps.setString(1, eventsstodel);
		    ps.executeUpdate();
		    int i = ps.executeUpdate();
		    if(i!=0)
		    System.out.println("Deleting row...");
		    else if (i==0)
		    {
		    System.out.println("<br>Row has been deleted successfully.");
		    RequestDispatcher rd=request.getRequestDispatcher("otherevents.jsp");  
		    rd.include(request, response);
		    }
		    }
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    	
		    }
		}
		else{
			 request.setAttribute("eventsstodel",eventsstodel );
			 RequestDispatcher rd=request.getRequestDispatcher("extra.jsp");  
			    rd.include(request, response);
		}
	}


		
		
	}


