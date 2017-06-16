package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Examapplyservlet
 */
@WebServlet("/Examapplyservlet")
public class Examapplyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Examapplyservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String eexam = request.getParameter("eexam");
		HttpSession session=request.getSession();
		String ss=(String)session.getAttribute("userid");
		System.out.println("HERE"+ss+"   "+eexam);
		 try{
			 Connection con =null;
		 
		    	con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
	            "root", "root");
		    	 PreparedStatement ps=con.prepareStatement(  
		 	    		"insert into examregister values(?,?)");  
		    	 System.out.println("HERE"+ss+"   "+eexam);
		 	            ps.setString(1,eexam);
		 	    		ps.setString(2,ss);
		 	    		int i=ps.executeUpdate(); 
		 	    		response.sendRedirect("ExamApply.jsp");
		 }catch(Exception e){
				e.printStackTrace();
		
	}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

}}
