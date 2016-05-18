class Solution {
    func isValidSudoku(board: [[Character]]) -> Bool {
    	var emptySet = Set<Character>()
    	var horizontal = Array<Set<Character>>(count: 9, repeatedValue: emptySet)
    	var vertical = Array<Set<Character>>(count: 9, repeatedValue: emptySet)
    	var block = Array<Set<Character>>(count: 9, repeatedValue: emptySet)
    	for i in 0..<9 {
    		for j in 0..<9 {
    			let c = board[i][j]
    			if c == "." {
    				continue
    			}
    			if horizontal[i].contains(c) {
    				return false
    			} else {
    				horizontal[i].insert(c)
    			}
    			if vertical[j].contains(c) {
    				return false
    			} else {
    				vertical[j].insert(c)
    			}
    			if block[3*(i/3) + (j/3)].contains(c) {
    				return false
    			} else {
    				block[3*(i/3) + (j/3)].insert(c)
    			}
    		}
    	}
    	return true
    }
}