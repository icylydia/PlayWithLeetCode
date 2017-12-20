class Solution:
    def minCostClimbingStairs(self, cost):
        """
        :type cost: List[int]
        :rtype: int
        """
        length = len(cost)
        if length <= 2:
            return min(cost)
        else:
            l = cost[0]
            r = cost[1]
            for idx in range(2, length):
                t = l
                l = r
                r = min(t, l) + cost[idx]
            return min(l, r)