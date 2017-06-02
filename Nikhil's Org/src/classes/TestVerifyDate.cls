@isTest
private class TestVerifyDate {
	
	@isTest static void Test1() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,11,07),Date.newInstance(2016,12,07));
		System.assertEquals(Date.newInstance(2016,11,30),actualDate);
	}
	
	@isTest static void Test2() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,11,07),Date.newInstance(2016,12,10));
		System.assertEquals(Date.newInstance(2016,11,30),actualDate);
	}
	
	@isTest static void Test3() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,11,07),Date.newInstance(2016,12,05));
		System.assertEquals(Date.newInstance(2016,12,05),actualDate);
	}
	
	@isTest static void Test4() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,12,07),Date.newInstance(2016,11,05));
		System.assertEquals(Date.newInstance(2016,12,31),actualDate);
	}
	
	@isTest static void Test5() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,02,07),Date.newInstance(2016,03,01));
		System.assertNotEquals(Date.newInstance(2016,02,29),actualDate);
	}
	
	@isTest static void Test6() {
		Date actualDate = VerifyDate.CheckDates(Date.newInstance(2016,03,07),Date.newInstance(2016,04,01));
		System.assertNotEquals(Date.newInstance(2016,04,02),actualDate);
	}
}