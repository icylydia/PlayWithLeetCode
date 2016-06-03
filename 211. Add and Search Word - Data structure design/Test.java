public class Test {

	@org.junit.Test
	public void test() {
		WordDictionary dictionary = new WordDictionary();
		dictionary.addWord("bad");
		dictionary.addWord("dad");
		dictionary.addWord("mad");
		assertFalse(dictionary.search("pad"));
		assertTrue(dictionary.search("bad"));
		assertTrue(dictionary.search(".ad"));
		assertTrue(dictionary.search("b.."));
		assertFalse(dictionary.search("."));
		dictionary.addWord("d");
		assertTrue(dictionary.search("."));
	}

}
