package test;

import junit.framework.TestCase;

public class MultiplyTest extends TestCase {
	public void testMultiply(){
		Junit tt=new Junit();
		int result= tt.multiply(3, 4);
		assertEquals(12, result);
		}
}
