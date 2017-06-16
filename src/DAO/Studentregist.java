package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Studentregist
 */
@WebServlet("/Studentregist")
public class Studentregist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Studentregist() {
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
		HttpSession session=request.getSession();
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");    
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String joinedyear = request.getParameter("joinedyear");
	    String program = request.getParameter("program");
	    String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    String major = request.getParameter("major");
	    String rolii = request.getParameter("rolii");
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
	    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	    
	    Statement ss=con.createStatement();
	    String q="select uname from studentrec where uname='"+uname+"';";
		
		ResultSet rs=ss.executeQuery(q);
		int count=0;
		while(rs.next()){
			count=count+1;
		}
		if(count>0){
			String bigerror="student already exist would you like to create another";
			request.setAttribute("bigerror",bigerror);
			System.out.println(bigerror);
			request.getRequestDispatcher("Error.jsp").forward(request, response);
		}
		else{
	    PreparedStatement ps=con.prepareStatement(  
	    		"insert into studentrec values(?,?,?,?,?,?,?,?,?,?)");  
	            ps.setString(1,id);
	    		ps.setString(2,fname);  
	    		ps.setString(3,lname);  
	    	    ps.setString(4,email); 
	    	    ps.setString(5,joinedyear);
	    	    ps.setString(6,program);
	    		ps.setString(7,uname);  
	    		ps.setString(8,pass);
	    		ps.setString(9,major);
	    		ps.setString(10,rolii);
	    		int i=ps.executeUpdate();  
	    		//if (i>0) {
	    		
	    		
	    	        response.sendRedirect("welcome.jsp");  
	    	        session.setAttribute("program", program);
	}

}catch(Exception e){
	e.printStackTrace();
}
	}}
