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
 * Servlet implementation class Job
 */
@WebServlet("/Job")
public class Job extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job() {
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
		String JobType = request.getParameter("JobType");
		String Jobid = request.getParameter("jobid");
		String  Companyname= request.getParameter("Companyname");    
	    String  Jobtitle= request.getParameter("Jobtitle");
	    String  Wage= request.getParameter("Wage");
	    String  Category= request.getParameter("Category");
	    String  Eligibility= request.getParameter("Eligibility");
	    String  Upload= request.getParameter("Upload");
	    
	  //  String  asd= request.getParameter("asd");
	    
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    PreparedStatement ps=con.prepareStatement(  
		    		"insert into offjob values(?,?,?,?,?,?,?,?,?)");
		    
		    		ps.setString(1,Jobid);
		    		 
		    		ps.setString(2,Companyname);  
		    		ps.setString(3,JobType); 
		    	    ps.setString(4,Jobtitle);  
		    		ps.setString(5,Wage);  
		    		ps.setString(6,Category);
		    		ps.setString(7,Eligibility);
		    		ps.setString(8,Upload);
		    		ps.setString(9,st);
		    		int i=ps.executeUpdate(); 
if(i>0){
	//RequestDispatcher rd=request.getRequestDispatcher("placement.jsp");  
    //rd.forward(request, response); 
	request.setAttribute("JobType", JobType);
	request.setAttribute("Jobid", Jobid);
	request.setAttribute("Companyname", Companyname);
	request.setAttribute("Jobtitle", Jobtitle);
	request.setAttribute("Wage", Wage);
	request.setAttribute("Category", Category);
	request.setAttribute("Eligibility", Eligibility);
	request.setAttribute("Upload", Upload);
	request.setAttribute("st", st);
	getServletContext().getRequestDispatcher("/placement.jsp").forward(request, response);
}  
else{  
    System.out.print("Please check");  
    RequestDispatcher rd=request.getRequestDispatcher("announcejob.jsp");  
    rd.include(request, response);  
                  
    }      		
	
	}catch(Exception e){
		e.printStackTrace();
	}

}}
