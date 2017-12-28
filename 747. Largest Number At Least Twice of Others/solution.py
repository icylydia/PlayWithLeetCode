class Solution:
    def dominantIndex(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        largest = 0
        secondLargest = 0
        largestIndex = -1
        for idx in range(0, len(nums)):
            num = nums[idx]
            if num >= largest:
                secondLargest = largest
                largest = num
                largestIndex = idx
            elif num > secondLargest:
                secondLargest = num
        print("largest = {}".format(largest))
        print("second = {}".format(secondLargest))
        if largest >= 2 * secondLargest:
            return largestIndex
        else:
            return -1