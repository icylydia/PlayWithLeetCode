class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var ans = [String]()
		for i in 1...n {
			var s = ""
			if i % 3 == 0 {
				s += "Fizz"
			}
			if i % 5 == 0 {
				s += "Buzz"
			}
			if i % 3 != 0 && i % 5 != 0 {
				s += "\(i)"
			}
			ans.append(s)
		}
		return ans
    }
}