public class Test {

	@org.junit.Test
	public void test() {
		Solution s = new Solution();
		assertEquals(1, s.nthSuperUglyNumber(1, new int[]{2,3,5}));
		assertEquals(500, s.nthSuperUglyNumber(67, new int[]{2,3,5}));
		assertEquals(15132, s.nthSuperUglyNumber(4000, new int[]{2,3,5,13,19,29,31,41,43,53,59,73,83,89,97,103,107,109,127,137,139,149,163,173,179,193,197,199,211,223,227,229,239,241,251,257,263,269,271,281,317,331,337,347,353,359,367,373,379,389,397,409,419,421,433,449,457,461,463,479,487,509,521,523,541,547,563,569,577,593,599,601,613,619,631,641,659,673,683,701,709,719,733,739,743,757,761,769,773,809,811,829,857,859,881,919,947,953,967,971}));
	}

}
