class Solution:
    def checkPossibility(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        if len(nums) <= 2:
            return True
        return self.forward(nums) or self.backward(nums)
    
    def forward(self, nums):
        used = False
        m = nums[0]
        for idx in range(1, len(nums)):
            if nums[idx] < m:
                if used:
                    return False
                else:
                    used = True
            else:
                m = nums[idx]
        return True
    
    def backward(self, nums):
        used = False
        m = nums[-1]
        for idx in range(1, len(nums)):
            if nums[-idx-1] > m:
                if used:
                    return False
                else:
                    used = True
            else:
                m = nums[-idx-1]
        return True