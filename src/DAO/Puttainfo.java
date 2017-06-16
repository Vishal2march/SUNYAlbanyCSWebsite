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
 * Servlet implementation class Puttainfo
 */
@WebServlet("/Puttainfo")
public class Puttainfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Puttainfo() {
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
		//String  asd= (String) request.getAttribute("courseidtoview");
		HttpSession session=request.getSession();
		String  asd=(String) session.getAttribute("courseid");
		System.out.println("reach" + asd);
		String coursesyll = request.getParameter("coursesyll");
		System.out.println("reach1");
		String officehrs = request.getParameter("officehrs");
		System.out.println("reach2");
		String  tainfor= request.getParameter("tainfor"); 
		System.out.println("reach3");
		//String  asd= request.getParameter("jobidtoview");
		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement(  
		    		"insert into posttainfo values(?,?,?,?)");
		    //ps.setString(1, asd);
		    		ps.setString(1,coursesyll);
		    		ps.setString(2,officehrs);  
		    		ps.setString(3,tainfor);
		    		 ps.setString(4, asd);
		    		int i=ps.executeUpdate(); 
		    		if(i>0){
		    			request.setAttribute("coursesyll", coursesyll);
		    			request.setAttribute("officehrs", officehrs);
		    			request.setAttribute("tainfor", tainfor);
		    			request.setAttribute("asd", asd);
		    			getServletContext().getRequestDispatcher("/showsyllabus.jsp").forward(request, response);
		    		}  
		    		else{  
		    		    System.out.print("Please check");  
		    		    RequestDispatcher rd=request.getRequestDispatcher("tainfo.jsp"); 
		    		    rd.include(request, response);  
		                  
		    	    }      		
		    		
		    		}catch(Exception e){
		    			e.printStackTrace();
		    		}
	}

}
