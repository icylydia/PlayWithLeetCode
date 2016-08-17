public class Solution {
	final private int[] original;
	private int[] shuffled;
	
    public Solution(int[] nums) {
        original = nums.clone();
		shuffled = nums.clone();
    }
    
    /** Resets the array to its original configuration and return it. */
    public int[] reset() {
        return original;
    }
    
    /** Returns a random shuffling of the array. */
    public int[] shuffle() {
        int len = shuffled.length;
        while(len > 1) {
        	int ran = random(len);
        	int t = shuffled[len - 1];
        	shuffled[len-1] = shuffled[ran];
        	shuffled[ran] = t;
        	len--;
        }
        return shuffled;
    }
    
	private int random(int n) {
		return (int)Math.floor((Math.random() * (double)n));
	}
}

/**
 * Your Solution object will be instantiated and called as such:
 * Solution obj = new Solution(nums);
 * int[] param_1 = obj.reset();
 * int[] param_2 = obj.shuffle();
 */