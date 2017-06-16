package DAO;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Updateregistrationservlet
 */
@WebServlet("/Updateregistrationservlet")
public class Updateregistrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateregistrationservlet() {
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
		HttpSession session=request.getSession();
		session.getAttribute("userid");
		String userid=request.getParameter("userid");
		String fname = request.getParameter("fname");    
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    
	    Connection con =null;
	    Statement ss=null;
	    try{
	    Class.forName("com.mysql.jdbc.Driver");
	    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
	            "root", "root");
	    //ss= (Statement) con.createStatement();
	   // String qq="update registeruser set fname='"+fname+"',lname='"+lname+"', email='"+email+"',uname='"+uname+"', pass='"+pass+"' where userid='"+userid+"'   ";
	    String qq= "update registeruser set first_name=?, last_name=?,email=?, uname=?, pass=? where id=?";
	    		 		 System.out.println("The sql is " +qq);
                     PreparedStatement pst = (PreparedStatement) con.prepareStatement(qq);
                     //pst.setString(1,userid);
	    pst.setString(1,fname);
	    		 		// int result=((java.sql.PreparedStatement) ss).executeUpdate();
	    System.out.println("hiiii");
	    System.out.println(userid);
	     
	    pst.setString(2,lname);        
	      pst.setString(3,email);
	      pst.setString(4,uname);
	      pst.setString(5,pass);
	      pst.setString(6,userid);
	      int i = pst.executeUpdate();
	      String msg=" ";
	     // if(i!=0){  
	        msg="User Updated";

	        //System.out.println(i);
	        System.out.println("<font size='6' color=blue>" + msg + "</font>");  
	        //System.out.println(" '"+first_name+"'");
	        response.sendRedirect("welcome.jsp");
	      //}  
	     // else{  
	       // msg="failed to update the data";
	        //System.out.println("<font size='6' color=blue>" + msg + "</font>");
	       //} 
	}catch(Exception e){
		e.printStackTrace();
	}

	}}
