class Solution {
    func canCompleteCircuit(gas: [Int], _ cost: [Int]) -> Int {
        let size = gas.count
        var st = 0
        while st < size {
            var remaining = 0
            var circuit = true
            var i = 0
            for ; i < size ; i++ {
                let idx = st + i < size ? st + i : st + i - size
                remaining += gas[idx]
                remaining -= cost[idx]
                if remaining < 0 {
                    circuit = false
                    break
                }
            }
            if circuit {
                return st
            } else {
                st += i + 1
            }
        }
        return -1
    }
}
