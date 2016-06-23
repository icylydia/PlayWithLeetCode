public class Test {

	@org.junit.Test
	public void test() {
		Solution s = new Solution();
		int[][] case1 = {
			{3,4,5},
			{3,2,6},
			{2,2,1},
		};
		int [][] case2 = {};
		assertEquals(4, s.longestIncreasingPath(case1));
		assertEquals(0, s.longestIncreasingPath(case2));
	}

}