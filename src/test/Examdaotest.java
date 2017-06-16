package test;
import model.Exam;
import junit.framework.TestCase;
import NEW.DAO.Examdao;
public class Examdaotest extends TestCase {
	 Exam Cryptography;
	Examdao ld=new Examdao();
	public void testExam(){
		
		Boolean result=ld.exampost(Cryptography);
		assertEquals(Boolean.valueOf(false),result);
		
	}
	
}
