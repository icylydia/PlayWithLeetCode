# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def trimBST(self, root, L, R):
        """
        :type root: TreeNode
        :type L: int
        :type R: int
        :rtype: TreeNode
        """
        if root.val < L:
            return self.trimBST(root.right, L, R)
        if root.val > R:
            return self.trimBST(root.left, L, R)
        left = self.trimLeft(root.left, L)
        right = self.trimRight(root.right, R)
        root.left = left
        root.right = right
        return root
            
    def trimLeft(self, root, L):
        if root is None:
            return None
        if root.val < L:
            return self.trimLeft(root.right, L)
        elif root.val == L:
            root.left = None
            return root
        else:
            root.left = self.trimLeft(root.left, L)
            return root
    
    def trimRight(self, root, R):
        if root is None:
            return None
        if root.val < R:
            root.right = self.trimRight(root.right, R)
            return root

        elif root.val == R:
            root.right = None
            return root
        else:
            return self.trimRight(root.left, R)