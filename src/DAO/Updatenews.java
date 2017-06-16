package DAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;
import javax.servlet.*;

import java.sql.*;
/**
 * Servlet implementation class Updatenews
 */
@WebServlet("/Updatenews")
public class Updatenews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatenews() {
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
		String eventsstodel=request.getParameter("eventsstodel");
		HttpSession session=request.getSession();
		session.setAttribute("eventss", eventsstodel);
		String eventsss = request.getParameter("eventss");
		String eventu = request.getParameter("eventu");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
			String query = "update eventstab set content='"+eventu+"' where content='"+eventsss+"' ";
			//Statement st = conn.createStatement();
			//ResultSet rs = st.executeQuery(query);
			 System.out.println("The sql is " +query);
             PreparedStatement pst = (PreparedStatement) conn.prepareStatement(query);
             pst.setString(1,eventu);  
             int i = pst.executeUpdate();
             response.sendRedirect("otherevents.jsp");

			//while(rs.next()){
		
		
	}catch (Exception e){  
        e.printStackTrace(); 
    } 

	}}
