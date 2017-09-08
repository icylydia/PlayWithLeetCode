class Solution:
    def maximumSwap(self, num):
        """
        :type num: int
        :rtype: int
        """
        ans = num
        if ans < 10:
            return ans
        nums = []
        while num != 0:
            rem = num % 10
            nums.append(rem)
            num = int(num / 10)
        
        maxs = []
        maxs.append(nums[0])
        for idx in range(1, len(nums)):
            val = max(maxs[-1], nums[idx])
            maxs.append(val)
        maxs = list(reversed(maxs))
        nums = list(reversed(nums))
        
        mins = []
        mins.append(nums[0])
        for idx in range(1, len(nums)):
            val = min(mins[-1], nums[idx])
            mins.append(val)
        
        index = -1
        for idx in range(0, len(nums)):
            if mins[idx] != maxs[idx]:
                index = idx
                break
        if index == -1:
            return ans
        
        minv = mins[index]
        maxv = maxs[index]
        minIdx = -1
        maxIdx = -1
        
        for idx in range(0, len(nums)):
            if mins[idx] == minv:
                minIdx = idx
                break
        for idx in range(0, len(nums)):
            if maxs[len(nums) - idx - 1] == maxv:
                maxIdx = len(nums) - idx - 1
                break

        nums[minIdx] = maxv
        nums[maxIdx] = minv
        
        ans = 0
        for n in nums:
            ans = ans * 10
            ans = ans + n
        return ans