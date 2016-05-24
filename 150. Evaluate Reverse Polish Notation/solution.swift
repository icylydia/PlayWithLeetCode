class Solution {
    func evalRPN(tokens: [String]) -> Int {
        let operators: Set<String> = ["+", "-", "*", "/"]
        var stack = Stack<Int>()
        for token in tokens {
        	if operators.contains(token) {
        		let right = stack.pop()
        		let left = stack.pop()
        		switch token {
        		case "+":
        			stack.push(left + right)
        		case "-":
        			stack.push(left - right)        		
        		case "*":
        			stack.push(left * right)        		
        		case "/":
        			stack.push(left / right)
        		default:
        			break
        		}
        	} else {
        		stack.push(Int(token)!)
        	}
        }
        return stack.pop()
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
}