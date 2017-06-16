package NEW.DAO;
import java.util.*;
import java.sql.*;

import model.Exam;
public class Examdao {
	public boolean exampost(Exam e){
		boolean flag=false;
        //ArrayList v = new ArrayList();
        Connection con;
        Statement st=null;
        //Exam e = (Exam) object ;

        //String courseId = c.getCourseId();
        //String courseName = c.getCourseName();
        //String location = c.getLocation();

        //String result = "";
        //int rowcount;
        try{
    			Class.forName("com.mysql.jdbc.Driver");  
    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
    				"root", "root");
         String sql = "insert into createexam values(?,?,?,?)";
         PreparedStatement ps = con.prepareStatement(sql);
         ps.setString(1,e.getExamname());  
 		ps.setString(2,e.getExamdate());  
 		ps.setString(3,e.getLink());
 		ps.setString(4,e.getUserid());
 		int i=ps.executeUpdate();
         
         //ResultSet rs = ps.executeUpdate();
         //while(rs.next()){
             //String  examname= rs.setString("examdate");
             //String  examdate= rs.setString("examdate");
             //String  link= rs.getString("link");
             
         flag=true;
        }catch(Exception er){
            er.printStackTrace();
        }
		return flag;
        
    }
}
