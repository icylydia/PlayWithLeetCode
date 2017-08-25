# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution(object):
    def findBottomLeftValue(self, root):
        """
        :type root: TreeNode
        :rtype: int
        """
        (depth, value) = self.findBottomLeftValueR(root)
        return value
    def findBottomLeftValueR(self, root):
        if root.left is None and root.right is None:
            return (1, root.val)
        if root.left is None and root.right is not None:
            (r_depth, r_value) = self.findBottomLeftValueR(root.right)
            return (r_depth + 1, r_value)
        if root.left is not None and root.right is None:
            (l_depth, l_value) = self.findBottomLeftValueR(root.left)
            return (l_depth + 1, l_value)
        (r_depth, r_value) = self.findBottomLeftValueR(root.right)
        (l_depth, l_value) = self.findBottomLeftValueR(root.left)
        if r_depth > l_depth:
            return (r_depth + 1, r_value)
        else:
            return (l_depth + 1, l_value)