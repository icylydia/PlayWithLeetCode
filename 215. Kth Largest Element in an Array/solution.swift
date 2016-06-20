class Solution {
    func findKthLargest(nums: [Int], _ k: Int) -> Int {
        var heap = MaxIntHeap()
        for e in nums {
            heap.insert(e)
        }
        for _ in 0..<k - 1{
            heap.pop()
        }
        return heap.pop()
    }
}
class MaxIntHeap {
    var elements = [0]
    func insert(element: Int) {
        elements.append(element)
        var index = elements.count - 1
        while index / 2 > 0 && elements[index] > elements[index / 2]{
            let temp = elements[index / 2]
            elements[index / 2] = elements[index]
            elements[index] = temp
            index /= 2
        }
    }
    func pop() -> Int {
        let ans = elements[1]
        let last = elements.removeLast()
        if elements.count == 1 {
            return ans
        }
        elements[1] = last
        var index = 1
        while index * 2 + 1 <= elements.count - 1 {
            if elements[index * 2 + 1] > elements[index * 2] {
                // right > left
                if elements[index * 2 + 1] > elements[index] {
                    let temp = elements[index * 2 + 1]
                    elements[index * 2 + 1] = elements[index]
                    elements[index] = temp
                    index = index * 2 + 1
                } else {
                    break
                }
            } else {
                // left >= right
                if elements[index * 2] > elements[index] {
                    let temp = elements[index * 2]
                    elements[index * 2] = elements[index]
                    elements[index] = temp
                    index = index * 2
                } else {
                    break
                }
            }
        }
        if index * 2 <= elements.count - 1 && elements[index * 2] > elements[index] {
            let temp = elements[index * 2]
            elements[index * 2] = elements[index]
            elements[index] = temp
        }
        return ans
    }
}