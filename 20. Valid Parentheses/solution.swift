class Solution {
    func isValid(s: String) -> Bool {
        var stack = Stack<Character>()
        let left: Set<Character> = ["(", "[", "{"]
        let map: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        for c in s.characters {
        	if left.contains(c) {
        		stack.push(c)
        	} else if !stack.empty {
        		let top = stack.pop()
        		if map[top] != c {
        			return false
        		}
        	} else {
        		return false
        	}
        }
        return stack.empty
    }
}
struct Stack<E> {
	private var elements = [E]()
	mutating func push(element: E) {
		elements.append(element)
	}
	mutating func pop() -> E {
		return elements.removeLast()
	}
	var empty: Bool {
		return elements.count == 0
	}
}