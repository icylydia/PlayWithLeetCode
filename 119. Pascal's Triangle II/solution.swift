class Solution {
    func getRow(rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
        	return [1]
        }
        var parent = [1]
        for i in 1...rowIndex {
        	var line = [1]
    		for j in 0..<parent.count-1 {
    			line.append(parent[j] + parent[j+1])
    		}
    		line.append(1)
    		parent = line
        }
        return parent
    }
}