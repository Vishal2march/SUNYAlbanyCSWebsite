package NEW.DAO;
import java.util.*;
import java.sql.*;

import model.Resultofexam;

public class Resultexamdao {
	public boolean studresult(Resultofexam e){
		boolean flag=false;
		Connection con;
		Statement st=null;
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
		            "root", "root");
     String sql = "insert into examresulttab values(?,?,?)";
     PreparedStatement pss = con.prepareStatement(sql);
     pss.setString(1,e.getExamname());  
		pss.setString(2,e.getExamresult());  
		pss.setString(3,e.getUserid());
		int i=pss.executeUpdate();
		 flag=true;
        }catch(Exception er){
            er.printStackTrace();
        }
		return flag;
}}
