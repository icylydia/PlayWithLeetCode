public class Test {

	@org.junit.Test
	public void test() {
		Trie t = new Trie();
		t.insert("hello");
		t.insert("world");
		assertTrue(t.search("world"));
		assertFalse(t.search("word"));
		assertFalse(t.startsWith("my"));
		assertFalse(t.startsWith("word"));
		assertTrue(t.startsWith("world"));
		assertTrue(t.startsWith("worl"));
		assertTrue(t.startsWith("w"));
		assertTrue(t.startsWith(""));
	}

}
