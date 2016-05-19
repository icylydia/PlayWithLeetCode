public class NumArray {
	private int[] v;

	private TreeNode segmentTree;

	private TreeNode generateSegmentTree(int from, int to) {
		TreeNode ans = new TreeNode(from, to);
		if (from == to) {
			ans.val = v[from];
		} else {
			TreeNode left = generateSegmentTree(from, (from + to) / 2);
			TreeNode right = generateSegmentTree((from + to) / 2 + 1, to);
			ans.val = left.val + right.val;
			ans.left = left;
			ans.right = right;
		}
		return ans;
	}

	private int sumInTree(TreeNode root, int from, int to) {
		if (from == root.from && to == root.to) {
			return root.val;
		}
		if (from > (root.from + root.to) / 2) {
			return sumInTree(root.right, from, to);
		}
		if (to <= (root.from + root.to) / 2) {
			return sumInTree(root.left, from, to);
		}
		return sumInTree(root.left, from, (root.from + root.to) / 2) + sumInTree(root.right, (root.from + root.to) / 2 + 1, to);
	}

	private void updateTree(TreeNode root, int i, int diff) {
		root.val += diff;
		if (root.from == root.to) {
			return;
		} else {
			if (i <= (root.from + root.to) / 2) {
				updateTree(root.left, i, diff);
			} else {
				updateTree(root.right, i, diff);
			}
		}
	}

    public NumArray(int[] nums) {
        int length = nums.length;
        v = nums;
        if(length > 0) {
        	segmentTree = generateSegmentTree(0, length - 1);
        }
    }

    void update(int i, int val) {
        updateTree(segmentTree, i, val - v[i]);
        v[i] = val;
    }

    public int sumRange(int i, int j) {
    	if(segmentTree != null) {
    		return sumInTree(segmentTree, i, j);
    	} else {
    		return 0;
    	}
    }
    
    public class TreeNode {
    	int val;
    	int from;
    	int to;
    	TreeNode left;
    	TreeNode right;
    	TreeNode(int f, int t) {from = f; to = t;}
    }
}

// Your NumArray object will be instantiated and called as such:
// NumArray numArray = new NumArray(nums);
// numArray.sumRange(0, 1);
// numArray.update(1, 10);
// numArray.sumRange(1, 2);