# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution(object):
    def largestValues(self, root):
        """
        :type root: TreeNode
        :rtype: List[int]
        """
        self.ans = []
        self.helper(root, 0)
        return self.ans
    def helper(self, root, level):
        if root is None:
            return
        if len(self.ans) <= level:
            self.ans.append(root.val)
        else:
            old = self.ans[level]
            if old < root.val:
                self.ans[level] = root.val
        self.helper(root.left, level + 1)
        self.helper(root.right, level + 1)