package DAO;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registrationservlet
 */
@WebServlet("/Registrationservlet")
public class Registrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrationservlet() {
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
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");    
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    String role = request.getParameter("role");
	    try{
	    Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(ClassNotFoundException e)
	    {
	    	e.printStackTrace();
	    }
	    //String q ="insert into members(id,first_name, last_name, email, uname, pass) values (NULL,'" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')";
	    Connection con =null;
	    try{
	    	con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
            "root", "root");
	    	 Statement sss=con.createStatement();
	    
		    String qq="select uname from registeruser where uname='"+uname+"';";
			
			ResultSet rs=sss.executeQuery(qq);
			int count=0;
			while(rs.next()){
				count=count+1;
			}
			if(count>0){
				String bigerror="faculty already exist would you like to create another";
				request.setAttribute("bigerror",bigerror);
				System.out.println(bigerror);
				request.getRequestDispatcher("Error.jsp").forward(request, response);
			}
			else{
	    PreparedStatement ps=con.prepareStatement(  
	    		"insert into registeruser values(?,?,?,?,?,?,?)");  
	            ps.setString(1,id);
	    		ps.setString(2,fname);  
	    		ps.setString(3,lname);  
	    	    ps.setString(4,email);  
	    		ps.setString(5,uname);  
	    		ps.setString(6,pass);
	    		ps.setString(7,role);
	    		int i=ps.executeUpdate();  
	    //Statement ss = con.createStatement();
	    //int count=0;
		//while(rs.next()){
			//count=count+1
	        
	        response.sendRedirect("welcome.jsp");
	    } 
			//else {
	        //response.sendRedirect("facultylogin.jsp");
	    //}
	
	} catch(Exception e){
		e.printStackTrace();
	}

}}
