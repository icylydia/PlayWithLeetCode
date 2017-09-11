class Solution:
    def findNumberOfLIS(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) < 2:
            return len(nums)
        helper = [1]
        helper2 = [1]
        for idx in range(1, len(nums)):
            m = 0
            n = 0
            for idy in range(0, idx):
                if nums[idx] > nums[idy]:
                    if helper[idy] + 1 > m:
                        m = helper[idy] + 1
                        n = helper2[idy]
                    elif helper[idy] + 1 == m:
                        n += helper2[idy]
            if m == 0:
                helper.append(1)
            else:
                helper.append(m)
            if n == 0:
                helper2.append(1)
            else:
                helper2.append(n)
        maxInHelper = max(helper)
        ans = 0
        for idx in range(0, len(helper)):
            if helper[idx] == maxInHelper:
                ans += helper2[idx]
        return ans