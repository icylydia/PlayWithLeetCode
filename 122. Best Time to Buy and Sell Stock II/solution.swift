class Solution {
    func maxProfit(prices: [Int]) -> Int {
        if prices.count < 1 {
        	return 0
        }
        var profit = 0
        var prev = prices[0]
        for i in 1..<prices.count {
        	if prices[i] > prev {
        		profit += prices[i] - prev
        	}
        	prev = prices[i]
        }
        return profit
    }
}