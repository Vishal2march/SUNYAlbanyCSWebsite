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
 * Servlet implementation class JobApply
 */
@WebServlet("/JobApply")
public class JobApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobApply() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String jobidtoapply = request.getParameter("jobidtoapply");
		HttpSession session=request.getSession();
		String ss=(String)session.getAttribute("userid");
		System.out.println("HERE"+ss+"   "+jobidtoapply);
		 try{
			 Connection con =null;
		 
		    	con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
	            "root", "root");
		    	 PreparedStatement ps=con.prepareStatement(  
		 	    		"insert into jobapply values(?,?)");  
		    	 System.out.println("HERE"+ss+"   "+jobidtoapply);
		 	            ps.setString(1,jobidtoapply);
		 	    		ps.setString(2,ss);
		 	    		System.out.println("HERE"+ss+"   "+jobidtoapply);
		 	    		int i=ps.executeUpdate(); 
		 	    		System.out.println("HERE"+ss+"   "+jobidtoapply+"   "+i);
		 	    		 response.sendRedirect("otherjobs.jsp");
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
