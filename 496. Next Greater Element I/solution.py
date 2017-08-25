class Solution(object):
    def nextGreaterElement(self, findNums, nums):
        """
        :type findNums: List[int]
        :type nums: List[int]
        :rtype: List[int]
        """
        ans = []
        for e in findNums:
            index = nums.index(e)
            find = False
            for i in range(index + 1, len(nums)):
                if nums[i] > e:
                    ans.append(nums[i])
                    find = True
                    break
            if not find:
                ans.append(-1)
        return ans