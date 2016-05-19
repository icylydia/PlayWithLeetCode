/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
public class Solution {
    public List<String> binaryTreePaths(TreeNode root) {
    	if (root == null) {
    		return new ArrayList<String>();
    	}
        if (root.left == null && root.right == null) {
        	List<String> list = new ArrayList<String>();
        	list.add(Integer.toString(root.val));
        	return list;
        }
        List<String> list = new ArrayList<String>();
        if (root.left != null) {
        	List<String> leftlist = binaryTreePaths(root.left);
        	for(String iLeft: leftlist) {
        		list.add(Integer.toString(root.val) + "->" + iLeft);
        	}
        }
        if (root.right != null) {
        	List<String> rightlist = binaryTreePaths(root.right);
        	for(String iRight: rightlist) {
        		list.add(Integer.toString(root.val) + "->" + iRight);
        	}
        }
        return list;
    }
}