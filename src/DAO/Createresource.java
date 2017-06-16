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

/**
 * Servlet implementation class Createresource
 */
@WebServlet("/Createresource")
public class Createresource extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Createresource() {
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
		
		String rid = request.getParameter("rid");
		String rname = request.getParameter("rname");    
	    String rdesc = request.getParameter("rdesc");
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con =null;
		    con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
		    Statement ss=con.createStatement();
		    String q="select Name from resource where Name='"+rname+"';";
			
			ResultSet rs=ss.executeQuery(q);
			int count=0;
			while(rs.next()){
				count=count+1;
			}
			if(count>0){
				String bigerror="Resource already exist would you like to create another";
				System.out.println(bigerror);
				request.getRequestDispatcher("addresources.jsp").forward(request, response);
			}
			else{
		    PreparedStatement ps=con.prepareStatement(  
		    		"insert into resource values(?,?,?)");  
		            ps.setString(1,rid);
		    		ps.setString(2,rname);  
		    		ps.setString(3,rdesc);
		    		int i=ps.executeUpdate();
		    	    response.sendRedirect("welcome.jsp");  
			}

		}catch(Exception e){
			e.printStackTrace();
		}
		    
		    
		    
		    
	}

}
