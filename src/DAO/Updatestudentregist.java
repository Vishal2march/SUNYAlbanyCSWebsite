package DAO;

import java.beans.Statement;
import java.io.IOException;
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
 * Servlet implementation class Updatestudentregist
 */
@WebServlet("/Updatestudentregist")
public class Updatestudentregist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatestudentregist() {
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
	    String joinedyear = request.getParameter("joinedyear");
	    String program = request.getParameter("program");
	    String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    String major = request.getParameter("major");
	    String advisor = request.getParameter("advisor");
	    String phone = request.getParameter("phone");
	    
	    Connection con =null;
	    Statement ss=null;
	    try{
	    Class.forName("com.mysql.jdbc.Driver");
	    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
	            "root", "root");
	    String qq= "update studentrec set fname=?, lname=?,email=?, joinyear=?, program=?, uname=?, pass=?, major=?, advisor=?, phone=? where id=?";
		 System.out.println("The sql is " +qq);
    PreparedStatement pst = (PreparedStatement) con.prepareStatement(qq);
  
pst.setString(1,fname);
		// int result=((java.sql.PreparedStatement) ss).executeUpdate();
System.out.println("hiiii");
System.out.println(userid);

pst.setString(2,lname);        
pst.setString(3,email);
pst.setString(4,joinedyear);
pst.setString(5,program);
pst.setString(6,uname);
pst.setString(7,pass);
pst.setString(8,major);
pst.setString(9,advisor);
pst.setString(10,phone);
pst.setString(11,userid);
int i = pst.executeUpdate();
String msg=" ";
msg="User Updated";
System.out.println("<font size='6' color=blue>" + msg + "</font>");  
response.sendRedirect("welcome.jsp");
	    }catch(Exception e){
			e.printStackTrace();
		}

		
	}

}
