class Solution:
    def distributeCandies(self, candies):
        """
        :type candies: List[int]
        :rtype: int
        """
        half = len(candies) / 2
        kind = len(set(candies))
        return int(min(half, kind))