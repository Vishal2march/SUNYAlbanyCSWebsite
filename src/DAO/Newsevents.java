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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Newsevents
 */
@WebServlet("/Newsevents")
public class Newsevents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newsevents() {
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
		HttpSession session = request.getSession();
		String st=(String) session.getAttribute("userid");
		String event = request.getParameter("event");
		 try{
			    Class.forName("com.mysql.jdbc.Driver");
			    Connection con =null;
			    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
			            "root", "root");
			    PreparedStatement ps=con.prepareStatement(  
			    		"insert into eventstab values(?)");
			    
			    		ps.setString(1,event);
			    		int i=ps.executeUpdate(); 
			    		if(i>0){
			    			request.setAttribute("event", event);
			    			getServletContext().getRequestDispatcher("/eventview.jsp").forward(request, response);
			    		}  
			    		else{ 
			    			System.out.print("Please check");  
			    		    RequestDispatcher rd=request.getRequestDispatcher("announceevents.jsp");  
			    		    rd.include(request, response);  
			    		                  
			    		    }      		
			    			
			    			}catch(Exception e){
			    				e.printStackTrace();
			    			}
			    		}
			    		
	}


