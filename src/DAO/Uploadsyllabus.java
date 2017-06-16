package DAO;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

import com.oreilly.servlet.MultipartRequest;  

/**
 * Servlet implementation class Uploadsyllabus
 */
@WebServlet("/Uploadsyllabus")

@MultipartConfig
public class Uploadsyllabus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uploadsyllabus() {
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
		
        String coursename = request.getParameter("coursename");
        String coursecode = request.getParameter("courscode");
        //final Part filePart = request.getPart("file");
        String file=request.getParameter("file");
        InputStream pdfFileBytes = null;
        final PrintWriter writer = response.getWriter();
 
        	// pdfFileBytes = filePart.getInputStream();
        	// final byte[] bytes = new byte[pdfFileBytes.available()];
        	 //pdfFileBytes.read(bytes); 
        	 Connection  con=null;
             Statement stmt=null;
 
               try {
                     try {
						Class.forName("com.mysql.jdbc.Driver");
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
                             "root", "root");
                     stmt = con.createStatement();
                     int result=0;
                     PreparedStatement pstmt = con.prepareStatement("INSERT INTO Syllabus VALUES(?,?,?)");
                     pstmt.setString(1, coursename);
                     pstmt.setString(2, coursecode);
                     pstmt.setString(3,file);    
                     result = pstmt.executeUpdate();
                     if(result>=1)  System.out.println("syllabus uploaded");
                     
                     
        }catch(SQLException e) {
            e.printStackTrace();}
	}

}
