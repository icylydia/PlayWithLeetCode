class NumArray {
private:
	vector<int> dp;
public:
    NumArray(vector<int> &nums) {
        dp.push_back(0);
    	for(int i = 0; i < nums.size(); i++) {
    		dp.push_back(nums.at(i) + dp.at(i));
    	}
    }

    int sumRange(int i, int j) {
        return dp.at(j + 1) - dp.at(i);
    }
};


// Your NumArray object will be instantiated and called as such:
// NumArray numArray(nums);
// numArray.sumRange(0, 1);
// numArray.sumRange(1, 2);