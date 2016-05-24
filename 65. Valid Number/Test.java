public class Test {

	@Test
	public void test() {
		Solution solution = new Solution();
		assertEquals(solution.isNumber(""), false);
		assertEquals(solution.isNumber("0"), true);
		assertEquals(solution.isNumber("-2"), true);
		assertEquals(solution.isNumber("-+2"), false);
		assertEquals(solution.isNumber(" 12 "), true);
		assertEquals(solution.isNumber("  +3 "), true);
		assertEquals(solution.isNumber(" 1 2 "), false);
		assertEquals(solution.isNumber("3.5"), true);
		assertEquals(solution.isNumber("-3.5"), true);
		assertEquals(solution.isNumber(" .5 "), true);
		assertEquals(solution.isNumber(" 3. "), true);
		assertEquals(solution.isNumber(" . "), false);
		assertEquals(solution.isNumber(" 3. 5"), false);
		assertEquals(solution.isNumber(" 3e10 "), true);
		assertEquals(solution.isNumber(" -10.0e-3 "), true);
		assertEquals(solution.isNumber(" -10.0e4.5 "), false);
		assertEquals(solution.isNumber(" -10.0e0 "), true);
		assertEquals(solution.isNumber(" -0e0 "), true);
		assertEquals(solution.isNumber(" -0.0e0 "), true);
		assertEquals(solution.isNumber(" 3.e3 "), true);
		assertEquals(solution.isNumber(" .3e3 "), true);
		assertEquals(solution.isNumber(" .e3 "), false);
		assertEquals(solution.isNumber(" 1e2. "), false);
		assertEquals(solution.isNumber(" 3e.2 "), false);
	}

}