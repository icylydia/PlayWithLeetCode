import static org.junit.Assert.*;

public class Test {

	@org.junit.Test
	public void test() {
		Solution s = new Solution();
		assertEquals(1, s.nthUglyNumber(1));
		assertEquals(2, s.nthUglyNumber(2));
		assertEquals(3, s.nthUglyNumber(3));
		assertEquals(4, s.nthUglyNumber(4));
		assertEquals(5, s.nthUglyNumber(5));
		assertEquals(6, s.nthUglyNumber(6));
		assertEquals(8, s.nthUglyNumber(7));
		assertEquals(9, s.nthUglyNumber(8));
		assertEquals(10, s.nthUglyNumber(9));
		assertEquals(12, s.nthUglyNumber(10));
		assertEquals(500, s.nthUglyNumber(67));
		assertEquals(536870912, s.nthUglyNumber(1407));
		assertEquals(1399680000, s.nthUglyNumber(1600));
	}

}
