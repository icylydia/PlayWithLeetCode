class Solution {
    func kSmallestPairs(nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
		if nums1.count == 0 || nums2.count == 0 {
			return [[Int]]()
		}
        var heap = MinHeap<Pair>()
		for i1 in 0..<nums1.count {
			if i1 >= k {
				break
			}
			let n1 = nums1[i1]
			heap.push(Pair(pl: n1, pr: nums2[0], li: i1, ri: 0))
		}
		var ans = [[Int]]()
		for _ in 0..<k {
			if heap.size > 0 {
				let pair = heap.pop()
				ans.append([pair.l, pair.r])
				if pair.ri + 1 < nums2.count {
					heap.push(Pair(pl: pair.l, pr: nums2[pair.ri + 1], li: pair.li, ri: pair.ri + 1))
				}
			} else {
				break
			}
		}
		return ans
    }
}

class MinHeap<E: Comparable> {
	var elements: [E]
	init() {
		elements = [E]()
	}
	func push(e: E) {
		elements.append(e)
		var index = elements.count - 1
		while index > 0 {
			let pre = (index - 1) / 2
			if elements[index] < elements[pre] {
				elements[index] = elements[pre]
				elements[pre] = e
			} else {
				break
			}
			index = pre
		}
	}

	func pop() -> E {
		if size == 1 {
			return elements.removeLast()
		}
		let ans = elements[0]
		elements[0] = elements.removeLast()
		var index = 0
		while 2 * index + 1 <= elements.count - 1 {
			if 2 * (index + 1) <= elements.count - 1 {
				if elements[2 * index + 1] < elements[2 * index + 2] {
					if elements[2 * index + 1] < elements[index] {
						let temp = elements[index]
						elements[index] = elements[2 * index + 1]
						elements[2 * index + 1] = temp
						index = 2 * index + 1
					} else {
						break
					}
				} else {
					if elements[2 * index + 2] < elements[index] {
						let temp = elements[index]
						elements[index] = elements[2 * index + 2]
						elements[2 * index + 2] = temp
						index = 2 * index + 2
					} else {
						break
					}
				}
			} else {
				if elements[2 * index + 1] < elements[index] {
					let temp = elements[index]
					elements[index] = elements[2 * index + 1]
					elements[2 * index + 1] = temp
					index = 2 * index + 1
				} else {
					break
				}
			}
		}
		return ans
	}

	var size: Int {
		return elements.count
	}
}

class Pair: Comparable {
	let l: Int
	let r: Int
	let s: Int
	let li: Int
	let ri: Int
	init(pl: Int, pr: Int, li: Int, ri: Int) {
		l = pl
		r = pr
		s = pl + pr
		self.li = li
		self.ri = ri
	}
}

func ==(lhs: Pair, rhs: Pair) -> Bool {
	return lhs.s == rhs.s
}

func <(lhs: Pair, rhs: Pair) -> Bool {
	return lhs.s < rhs.s
}