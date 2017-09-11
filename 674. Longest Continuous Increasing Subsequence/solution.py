class Solution:
    def findLengthOfLCIS(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) <= 1:
            return len(nums)
        ans = 1
        last = nums[0]
        helper = [1]
        for idx in range(1, len(nums)):
            if nums[idx] > last:
                helper.append(helper[idx - 1] + 1)
                if helper[-1] > ans:
                    ans = helper[-1]
            else:
                helper.append(1)
            last = nums[idx]
        return ans