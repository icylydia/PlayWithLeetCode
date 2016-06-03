public class WordDictionary {
	TrieNode root = new TrieNode();

    // Adds a word into the data structure.
    public void addWord(String word) {
        root.insert(word);
    }

    // Returns if the word is in the data structure. A word could
    // contain the dot character '.' to represent any one letter.
    public boolean search(String word) {
        return root.search(word);
    }
}

class TrieNode {
	private TrieNode[] subNodes;
    // Initialize your data structure here.
    public TrieNode() {
    	subNodes = new TrieNode[27];
    }
	public void insert(String word) {
		if( word.length() > 0) {
			int c = word.charAt(0) - 'a';
			if(subNodes[c] != null) {
				subNodes[c].insert(word.substring(1));
			} else {
				TrieNode subNode = new TrieNode();
				subNodes[c] = subNode;
				subNode.insert(word.substring(1));
			}
		} else {
			if(subNodes[26] == null) {
				subNodes[26] = new TrieNode();
			}
		}
	}
	public boolean search(String word) {
		if(word.length() == 0) {
			return subNodes[26] != null;
		} else {
			char c = word.charAt(0);
			if(c == '.') {
				for(int i = 0; i < 26; i++) {
					if(subNodes[i] != null && subNodes[i].search(word.substring(1))) {
						return true;
					}
				}
				return false;
			} else if(subNodes[c-'a'] != null) {
				return subNodes[c-'a'].search(word.substring(1));
			} else {
				return false;
			}
		}
	}
}

// Your WordDictionary object will be instantiated and called as such:
// WordDictionary wordDictionary = new WordDictionary();
// wordDictionary.addWord("word");
// wordDictionary.search("pattern");
