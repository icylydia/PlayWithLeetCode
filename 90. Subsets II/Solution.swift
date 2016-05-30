class Solution {
    func subsetsWithDup(nums: [Int]) -> [[Int]] {
        let nums = nums.sort(<)
        let count = Int(pow(Double(2), Double(nums.count)))
        var ansSet = Set<MyArray>()
        for i in 0..<count {
            var block = MyArray()
            var p = i
            var idx = 0
            while p != 0 {
                if (p & 1) != 0 {
                    block.append(nums[idx])
                }
                p >>= 1
                idx++
            }
            ansSet.insert(block)
        }
        return Array(ansSet).map{$0.elements}
    }
}

class MyArray: Hashable, Equatable {
    var _hash: Int?
    var hashValue: Int {
        if let hash = _hash {
            return hash
        } else {
            let hash = elements.reduce(0){$0 ^ $1}
            _hash = hash
            return hash
        }
    }
    var elements = [Int]()
    func append(x: Int) {
        elements.append(x)
    }
}
func ==(lhs: MyArray, rhs: MyArray) -> Bool {
    if lhs.elements.count != rhs.elements.count {
        return false
    } else {
        for i in 0..<lhs.elements.count {
            if lhs.elements[i] != rhs.elements[i] {
                return false
            }
        }
        return true
    }
}
