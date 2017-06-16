package NEW.DAO;
import java.util.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;

import model.Exam;
import model.Schedule;

public class Resourcereservedao {
	public List<Schedule> reserve (Schedule sc){
	//public List<Schedule> reserve (String rid,String date){
		Connection con;
		//Schedule sc= new Schedule();
        Statement st=null;
        ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
		
        try{
			Class.forName("com.mysql.jdbc.Driver");  
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
				"root", "root");
		 String sql = "select slot, status from schedule where Rid=? AND date=?";
         PreparedStatement ps = con.prepareStatement(sql);
        
         
         
         ps.setString(1,sc.getRid());
         ps.setString(1,sc.getDate());
        // ps.setString(1,rid);  
 		//ps.setString(2,date);  
 		ResultSet rs= ps.executeQuery();
 		System.out.println(rs.next());
		while(rs.next()){
            //System.out.println("Slot--->>"+rs.getString("slot"));
			sc.setSlot(rs.getString("slot"));
		    sc.setStatus(rs.getString("status"));
		/*	al.add(rs.getString("slot"));
			al.add(rs.getString("status"));
		*/	
			
		     allSchedule.add(sc); 	
		}
		
		System.out.println(allSchedule);
		  
 		
}catch (Exception e){
	e.printStackTrace();
}
        return allSchedule;
		    }
}