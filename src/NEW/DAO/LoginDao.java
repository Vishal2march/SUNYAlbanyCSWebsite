package NEW.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class LoginDao {
private static Connection con=null;
private static ResultSet rs=null;
	public LoginDao() {
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
				"root", "root");
		//Statement st = con.createStatement();
	}catch(Exception e)
	{
		e.printStackTrace();
	}
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	

	public String  checkuserfaculty(String userid,String pwd, String role){
		String f="x";
 con=null;
		try{
			Statement st=null;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
				"root", "root");
		
			String Query="select * from registeruser where id=? and pass=? and role=?";
			//rs = st.executeQuery("select * from registeruser where uname= and pass='" + pwd + "'");
			java.sql.PreparedStatement prep;
			prep=con.prepareStatement(Query);
			prep.setString(1, userid);
			prep.setString(2, pwd);
			prep.setString(3, role);
			ResultSet rs=prep.executeQuery();
			System.out.println("here 1");
			if(rs.next()){
				f = rs.getString(1);
				System.out.println("rs.next"+f);
			}
		}catch(Exception e)
			{
				e.printStackTrace();	
			}

			return f;
		
	}
	public String  checkuserStudent(String userid,String pwd,String role){
		String f="x";
 con=null;
		try{
			Statement st=null;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb",
				"root", "root");
		//select * from studentrec where uname='" + userid + "' and pass='" + pwd + "'"
		
			String Query="select * from studentrec where id=? and pass=? and role=?";
			//rs = st.executeQuery("select * from registeruser where uname= and pass='" + pwd + "'");
			java.sql.PreparedStatement prep;
			prep=con.prepareStatement(Query);
			prep.setString(1, userid);
			prep.setString(2, pwd);
			prep.setString(3, role);
			ResultSet rs=prep.executeQuery();
			System.out.println("here 1");
			if(rs.next()){
				f = rs.getString(1);
			}
		}catch(Exception e)
			{
				e.printStackTrace();	
			}

			return f;
		
	}

	
//	public static void main(String[] args)
//	{
//	
//		LoginDao tt = new LoginDao();
//		System.out.println(tt.checkuserfaculty("vishal", "aaa"));
//	 System.out.println(tt.checkuserStudent("fan","bbb"));
//	}
}
