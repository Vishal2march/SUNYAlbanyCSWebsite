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
 * Servlet implementation class Alumniservlet
 */
@WebServlet("/Alumniservlet")
public class Alumniservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alumniservlet() {
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
		String fname = request.getParameter("fname");
		String degree = request.getParameter("degree");
		String  email= request.getParameter("email");    
	    String  company= request.getParameter("company");
	    String passout= request.getParameter("passout");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement(  
		    		"insert into alumnidetail values(?,?,?,?,?)");
		    ps.setString(1,fname);
   		 
    		ps.setString(2,degree);  
    		ps.setString(3,email); 
    	    ps.setString(4,company);
    	    ps.setString(5,passout);
    	    int i=ps.executeUpdate(); 
    	    if(i>0){
    	    	getServletContext().getRequestDispatcher("/alumnistudent.jsp").forward(request, response);
    	    }  		
    	    	
    	    	}catch(Exception e){
    	    		e.printStackTrace();
    	    	}
    	    	
    	    }
	
	}

