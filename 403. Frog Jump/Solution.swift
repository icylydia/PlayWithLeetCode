class Solution {
    func canCross(_ stones: [Int]) -> Bool {
		if stones.count == 2 {
			return stones[1] == 1
		}
        var tape = [Int: Set<Int>]()
		for stone in stones {
			tape[stone] = Set<Int>()
		}
		let goal = stones.last!
		tape[0]?.insert(1)
		for i in 0..<stones.count - 1 {
			let stone = stones[i]
			for step in tape[stone]! {
				if var st = tape[stone + step] {
					if stone + step == goal {
						return true
					}
					if step > 1 {
						st.insert(step - 1)
					}
					st.insert(step)
					st.insert(step + 1)
					tape[stone + step] = st
				}
			}
		}
		return false
    }
}