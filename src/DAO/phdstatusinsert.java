package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class phdstatusinsert
 */
@WebServlet("/phdstatusinsert")
public class phdstatusinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public phdstatusinsert() {
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
		String idd= request.getParameter("lilly");
		String  phdstatus= request.getParameter("phdstatus");
		String  semesters= request.getParameter("semesters");
		String  netid= request.getParameter("netid");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =null;
	    
	    	con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
            "root", "root");
	    	 PreparedStatement ps=con.prepareStatement(  
	 	    		"insert into phddetail values(?,?,?)");  
	 	            ps.setString(1,phdstatus);
	 	    		ps.setString(2,semesters);
	 	    		ps.setString(3,netid);
	 	    		
	 	    		int i=ps.executeUpdate();  
	 	    		response.sendRedirect("phdstatus.jsp?lilly="+idd);
	    }   catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
