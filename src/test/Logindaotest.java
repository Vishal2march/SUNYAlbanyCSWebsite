package test;
import junit.framework.TestCase;
import NEW.DAO.LoginDao;
public class Logindaotest extends TestCase {
	
	
	//String message="cccc";
	
	//Examdao tt=new Examdao();
	//public void testExam(){
	//Exam networks;
	//String a=networks.toString();
	//Examdao tt=new Examdao();
	//Exam networks=null;
	//Boolean result= tt.exampost(networks);
	//assertEquals(true,result);
	//}
	LoginDao ld=new LoginDao();
	public void testLogin(){
		String result=ld.checkuserfaculty("RW668896","welty","faculty");
		assertEquals("RW668896",result);
		
	}
	
	public void testiLogin(){
		String result=ld.checkuserStudent("VA1221","snow","student");
		//assertTrue(result == "faculty");
		assertEquals("VA1221",result);
		
	}

}
		
		
		
		
		
		
		
		
		
		
		
		
		
			
	
	
	
	
	
	
	
	




 
