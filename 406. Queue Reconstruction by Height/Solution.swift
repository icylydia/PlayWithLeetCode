class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        if people.count == 0 {
            return people
        }
        let sorted = people.sorted {
            if $0[0] == $1[0] {
                return $0[1] < $1[1]
            } else {
                return $0[0] < $1[0]
            }
        }
        var bucket = Array<[Int]?>(repeating: nil, count: people.count)
        var acc = 0
        var min = 0
        var lastH = sorted[0][0]
        for person in sorted {
            if person[0] != lastH {
                acc = 0
                min = 0
                lastH = person[0]
            }
            for i in min..<bucket.count {
                if bucket[i] != nil {
                    continue
                } else if person[1] == acc {
                    bucket[i] = person
                    min = i
                    acc += 1
                    break
                } else {
                    acc += 1
                }
            }
        }
        return bucket.map{$0!}
    }
}