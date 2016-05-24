let digit: Set<Character> = ["1","2","3","4","5","6","7","8","9","0"]
class Solution {
    func calculate(s: String) -> Int {
        var ans = 0
        var acc = 0
        var front = false
        var signStack = Stack<Bool>()
        signStack.push(false)
        for c in s.characters {
        	if digit.contains(c) {
        		acc = acc * 10 + Int(String(c))!
        	} else {
        		(signStack.top != front) ? (ans -= acc) : (ans += acc)
        		acc = 0
        	}
        	if c == " " {
        		continue
        	}
        	if c == "-" {
        		front = true
        		continue
        	}
        	if c == "+" {
        		front = false
        		continue
        	}
        	if c == "(" {
        		signStack.push(front != signStack.top)
        		front = false
        		continue
        	}
        	if c == ")" {
        		signStack.pop()
        		continue
        	}
        }
        (signStack.top != front) ? (ans -= acc) : (ans += acc)
        return ans
    }
}
struct Stack<E> {
	var elements = [E]()
	mutating func push(element: E) {
		elements.append(element)
	}
	mutating func pop() -> E {
		return elements.removeLast()
	}
	var top: E? {
		return elements.last
	}
}