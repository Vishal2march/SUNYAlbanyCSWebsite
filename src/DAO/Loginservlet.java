package DAO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.regex.Pattern;
import java.sql.*;

import javax.servlet.http.*;

import NEW.DAO.LoginDao;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Loginservlet() {
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
		response.setContentType("text/html"); 
		String userid = request.getParameter("id");  
		System.out.println(userid);
		boolean valid = (userid != null) && userid.matches("[A-Za-z0-9_]+");
		if(valid) 
		 {
			System.out.println("valid name");}
	 else {
			System.out.println("invalid name please try different name or create it");
			String dell = "invalid name please try different name or create it";
			request.setAttribute("dell",dell);
			RequestDispatcher rd=request.getRequestDispatcher("facultylogin.jsp");
			rd.forward(request, response);	
			return;
		}
		
		String pwd = request.getParameter("pass");
		String role = request.getParameter("role");
		HttpSession session=request.getSession();
		session.setAttribute("role",role);
		System.out.println("input -->>"+userid+" and "+pwd);
		LoginDao dd =new LoginDao();
		
		String str= dd.checkuserfaculty(userid,pwd,role);
		System.out.println("Entry from faculty table -->>"+str);
		
		if(str.equals(userid))
		{
			System.out.println("reac");
			// send to faculty page
			
			session.setAttribute("userid", userid);
			// System.out.println("<h3>welcome " +"" + userid +"</h3>");
			System.out.println("<a href='logout.jsp'>Log out</a>");
	
			if(role.equals("faculty")){
				System.out.println("please login....");
			RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
			
			return;}
			else if(role.equals("staff"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("staffhome.jsp");
				rd.forward(request, response);	
			}
			
			
			
		}	
		String str1= dd.checkuserStudent(userid,pwd,role);
		System.out.println("Entry from Student table -->>"+str1);
		
		
		if(str1.equals(userid))
		{
			
			// send to student page
			//HttpSession session=request.getSession();
			session.setAttribute("userid", userid);
			//session.setAttribute("program", program);
			// System.out.println("<h3>welcome " +"" + userid +"</h3>");
			System.out.println("<a href='logout.jsp'>Log out</a>");
		
			RequestDispatcher rd1=request.getRequestDispatcher("studenthome.jsp");
			rd1.forward(request, response);
			return;
			//response.sendRedirect("deemo.jsp");
			//System.out.println("pleaseeee");
		}
		if(str!=userid || str1!=userid)
		{
			System.out.println("Invalid UserNetId------  try again");
			System.out.println("Invalid password------  try again");
			RequestDispatcher rd1=request.getRequestDispatcher("facultylogin.jsp");
			rd1.forward(request, response);
			return;
			//response.sendRedirect("facultylogin.jsp");
		}
		
			

	/*		if(f<1)
			{
				//System.out.println("hi i am");
				String plz = "Sorry this user doesnot exist kindly register first";
				request.setAttribute("plz",plz);
				RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
				return;
			}

			if (rs.next()) {

				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				// System.out.println("<h3>welcome " +"" + userid +"</h3>");
				System.out.println("<a href='logout.jsp'>Log out</a>");
				response.sendRedirect("Home.jsp");

			}
			else if (rsss.next()) {

				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				// System.out.println("<h3>welcome " +"" + userid +"</h3>");
				System.out.println("<a href='logout.jsp'>Log out</a>");
				response.sendRedirect("welcome.jsp");

			}
			else {
				System.out.println("Invalid password------  try again");
				response.sendRedirect("facultylogin.jsp");
			}
*/		
		
		
	}
	}
