int hammingDistance(int x, int y) {
    int diff = 0;
	for(int i = 0; i < 32 ; i++ ) {
		diff += ((x & 1) ^ (y & 1));
		x >>= 1;
		y >>= 1;
	}
	return diff;
}