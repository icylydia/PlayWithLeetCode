class Solution(object):
    def singleNonDuplicate(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) == 1:
            return nums[0]
        st = 0
        ed = len(nums) - 1
        if nums[st] != nums[st + 1]:
            return nums[st]
        if nums[ed] != nums[ed - 1]:
            return nums[ed]
        while st < ed:
            md = int((st + ed) / 2)
            if md % 2 == 0:
                if nums[md] == nums[md + 1]:
                    st = md
                    continue
                elif nums[md] == nums[md - 1]:
                    ed = md
                    continue
                else:
                    return nums[md]
            else:
                if nums[md] == nums[md + 1]:
                    ed = md
                    continue
                elif nums[md] == nums[md - 1]:
                    st = md
                    continue
                else:
                    return nums[md]
        return nums[st]