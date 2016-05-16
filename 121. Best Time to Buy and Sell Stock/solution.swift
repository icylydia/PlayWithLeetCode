class Solution {
    func maxProfit(prices: [Int]) -> Int {
        if prices.count < 1 {
            return 0
        }
    	var profits = [0]
    	var best = 0
    	for i in 1..<prices.count {
    		var profit = profits[i-1] + prices[i] - prices[i-1]
    		if profit < 0 {
    			profit = 0
    		}
    		profits += [profit]
    		if profit > best {
    			best = profit
    		}
    	}
    	return best
    }
}