class Solution {
    func isHappy(n: Int) -> Bool {
        var repo = Set<Int>()
        var c = n
        while !repo.contains(c) {
            repo.insert(c)
        	var p = c
        	c = 0
        	while p != 0 {
        		c += (p % 10) * (p % 10)
        		p/=10
        	}
        }
        return c == 1
    }
}