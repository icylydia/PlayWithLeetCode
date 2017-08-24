class Solution(object):
    def matrixReshape(self, nums, r, c):
        """
        :type nums: List[List[int]]
        :type r: int
        :type c: int
        :rtype: List[List[int]]
        """
        if len(nums) < 1:
            return nums
        if len(nums[0]) < 1:
            return nums
        count = len(nums) * len(nums[0])
        if r * c != count:
            return nums
        flat = reduce(lambda x, y: x + y, nums, [])
        ans = []
        idx = 0
        for i in range(0, r):
            row = []
            for j in range(0, c):
                row.append(flat[idx])
                idx += 1
            ans.append(row)
        return ans