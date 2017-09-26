class Solution:
    def findTarget(self, root, k):
        """
        :type root: TreeNode
        :type k: int
        :rtype: bool
        """
        self.target = k
        self.root = root
        if self.helper(root):
            return True
        return False
    
    def helper(self, croot):
        if croot is None:
            return False
        if self.digitExist(self.root, self.target - croot.val, croot):
            return True
        if self.helper(croot.left):
            return True
        if self.helper(croot.right):
            return True
        return False
        
    def digitExist(self, root, x, exceptNode):
        if root is None:
            return False
        if root.val == x and root != exceptNode:
            return True
        elif root.val > x:
            return self.digitExist(root.left, x, exceptNode)
        else:
            return self.digitExist(root.right, x, exceptNode)