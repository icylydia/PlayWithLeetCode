# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def findSecondMinimumValue(self, root):
        """
        :type root: TreeNode
        :rtype: int
        """
        ans = self.minValueBut(root, root.val)
        if ans == root.val:
            return -1
        else:
            return ans
    def minValueBut(self, root, minVal):
        if root.left is None:
            return root.val
        leftMin = self.minValueBut(root.left, minVal)
        rightMin = self.minValueBut(root.right, minVal)
        if leftMin == minVal and rightMin == minVal:
            return minVal
        elif leftMin == minVal:
            return rightMin
        elif rightMin == minVal:
            return leftMin
        else:
            return min(leftMin, rightMin)