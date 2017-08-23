# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution(object):
    def constructMaximumBinaryTree(self, nums):
        """
        :type nums: List[int]
        :rtype: TreeNode
        """
        if len(nums) == 0:
            return None
        index = self.findMax(nums)
        node = TreeNode(nums[index])
        node.left = self.constructMaximumBinaryTree(nums[0: index])
        node.right = self.constructMaximumBinaryTree(nums[index + 1:])
        return node
        
    def findMax(self, nums):
        i = -1
        v = -1
        for index in range(0, len(nums)):
            if nums[index] > v:
                i = index
                v = nums[index]
        return i
