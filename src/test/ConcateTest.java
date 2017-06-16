package test;

import junit.framework.TestCase;

public class ConcateTest extends TestCase {
	public void testConcate(){
Junit tt=new Junit();
String result= tt.concatenate("one", "two");
assertEquals("onetwo", result);
}
}