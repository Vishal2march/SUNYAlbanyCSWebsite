package test;


import model.Resultofexam;
import NEW.DAO.Resultexamdao;
import junit.framework.TestCase;
public class Examresultdaotest extends TestCase {

		 Resultofexam abcdef;
		Resultexamdao ld=new Resultexamdao();
		public void testExam(){
			
			Boolean result=ld.studresult(abcdef);
			assertEquals(Boolean.valueOf(false),result);
			
		}
}
