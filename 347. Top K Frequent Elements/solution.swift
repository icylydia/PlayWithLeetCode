class Solution {
    func topKFrequent(nums: [Int], _ k: Int) -> [Int] {
        var mapedKeys = Dictionary<Int, Int>()
        for num in nums {
        	if(mapedKeys[num] != nil) {
        		mapedKeys[num]!++
        	} else {
        		mapedKeys[num] = 1
        	}
        }
        var bucket = Array<Array<Int>?>(count: nums.count + 1, repeatedValue: nil)
        for key in mapedKeys.keys {
        	if var list = bucket[mapedKeys[key]!] {
        		bucket[mapedKeys[key]!]! += [key]
        	} else {
        		bucket[mapedKeys[key]!] = [key]
        	}
        }
        var res = Array<Int>()
        for (var i = bucket.count - 1; i >= 0 ; i--) {
        	if let element = bucket[i] {
        		res += element
        	}
        }
        return Array(res[0..<k])
    }
}