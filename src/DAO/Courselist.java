package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Courselist
 */
@WebServlet("/Courselist")
public class Courselist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Courselist() {
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
		String courseid = request.getParameter("courseid");
		String coursename = request.getParameter("coursename");
		String  credits= request.getParameter("credits");    
	    String  career= request.getParameter("career");
	    String  facultyname= request.getParameter("facultyname");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
		    Statement ss=con.createStatement();
		    String q="select coursename from listcourses where coursename='"+coursename+"';";
			
			ResultSet rs=ss.executeQuery(q);
			int count=0;
			while(rs.next()){
				count=count+1;
			}
			if(count>0){
				String bigerror="course name already exist would you like to create another";
				//request.setAttribute("bigerror",bigerror);
				System.out.println(bigerror);
				request.getRequestDispatcher("courses.jsp").forward(request, response);
			}
			else{
		    
		    PreparedStatement ps=con.prepareStatement(  
		    		"insert into listcourses values(?,?,?,?,?)");
		    
		    		ps.setString(1,courseid);
		    		ps.setString(2,coursename);  
		    		ps.setString(3,credits); 
		    	    ps.setString(4,career);
		    	    ps.setString(5,facultyname);
		    	    ps.executeUpdate();
		    	 
		    	    	request.setAttribute("courseid", courseid);
		    	    	request.setAttribute("coursename", coursename);
		    	    	request.setAttribute("credits", credits);
		    	    	request.setAttribute("career", career);
		    	    	request.setAttribute("facultyname", facultyname);
		    	    	String st="successfully created";
		    	    	System.out.println(st);
		    	    	getServletContext().getRequestDispatcher("/courseviewlist.jsp").forward(request, response);
		    	    
	    //else{  
	        //System.out.print("Please check");  
	        //RequestDispatcher rd=request.getRequestDispatcher("courses.jsp");  
	        //rd.include(request, response);  
	                      
	        }      		
	    	
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}
	}

}
