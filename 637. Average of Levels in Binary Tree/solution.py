# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    def averageOfLevels(self, root):
        """
        :type root: TreeNode
        :rtype: List[float]
        """
        self.ans = []
        self.averageOfLevelsIcy(root, 0)
        return list(map(lambda xy: xy[1] / xy[0], self.ans))
    def averageOfLevelsIcy(self, root, level):
        if root is None:
            return
        if level >= len(self.ans):
            self.ans.append((1, root.val))
        else:
            (count, sums) = self.ans[level]
            self.ans[level] = (count + 1, sums + root.val)
        self.averageOfLevelsIcy(root.left, level + 1)
        self.averageOfLevelsIcy(root.right, level + 1)
        return