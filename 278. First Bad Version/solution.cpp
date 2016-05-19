// Forward declaration of isBadVersion API.
bool isBadVersion(int version);

class Solution {
public:
    int firstBadVersion(int n) {
        int from = 0, to = n;
        while (from != to) {
            int mid = from + (to - from) / 2;
        	if (isBadVersion(mid)) {
        		to = mid;
        	} else {
        		from = mid + 1;
        	}
        }
        return from;
    }
};