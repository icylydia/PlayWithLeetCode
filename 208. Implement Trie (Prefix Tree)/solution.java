class TrieNode {
	private HashMap<Integer, TrieNode> subNodes;
    // Initialize your data structure here.
    public TrieNode() {
    	subNodes = new HashMap<Integer, TrieNode>();
    }
	public void insert(String word) {
		if( word.length() > 0) {
			if(subNodes.containsKey(Integer.valueOf(word.charAt(0)))) {
				subNodes.get(Integer.valueOf(word.charAt(0))).insert(word.substring(1));
			} else {
				TrieNode subNode = new TrieNode();
				subNodes.put(Integer.valueOf(word.charAt(0)), subNode);
				subNode.insert(word.substring(1));
			}
		} else {
			if(!subNodes.containsKey(Integer.valueOf('\0'))) {
				subNodes.put(Integer.valueOf('\0'), new TrieNode());
			}
		}
	}
	public boolean search(String word) {
		if(word.length() == 0) {
			return subNodes.containsKey(Integer.valueOf('\0'));
		} else {
			if(subNodes.containsKey(Integer.valueOf(word.charAt(0)))) {
				return subNodes.get(Integer.valueOf(word.charAt(0))).search(word.substring(1));
			} else {
				return false;
			}
		}
	}
	public boolean startWith(String word) {
		if(word.length() == 0) {
			return true;
		} else {
			if(subNodes.containsKey(Integer.valueOf(word.charAt(0)))) {
				return subNodes.get(Integer.valueOf(word.charAt(0))).startWith(word.substring(1));
			} else {
				return false;
			}
		}
	}
}

public class Trie {
    private TrieNode root;

    public Trie() {
        root = new TrieNode();
    }

    // Inserts a word into the trie.
    public void insert(String word) {
        root.insert(word);
    }

    // Returns if the word is in the trie.
    public boolean search(String word) {
        return root.search(word);
    }

    // Returns if there is any word in the trie
    // that starts with the given prefix.
    public boolean startsWith(String prefix) {
        return root.startWith(prefix);
    }
}

// Your Trie object will be instantiated and called as such:
// Trie trie = new Trie();
// trie.insert("somestring");
// trie.search("key");
