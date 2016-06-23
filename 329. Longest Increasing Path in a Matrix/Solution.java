public class Solution {
	
	static private Integer GRAM_NODE_MAX_LEN_UNKNOWN = -1;
	
    public int longestIncreasingPath(int[][] matrix) {
        if(matrix.length == 0) {
    		return 0;
    	}
    	
    	ArrayList<ArrayList<GramNode>> gram = new ArrayList<ArrayList<GramNode>>();
    	// create nodes
    	for(int i = 0; i < matrix.length; i++) {
    		gram.add(new ArrayList<GramNode>());
    		for(int j = 0; j < matrix[i].length; j++) {
    			gram.get(i).add(new GramNode(matrix[i][j]));
    		}
    	}
    	// build diagram
    	for(int i = 0; i < matrix.length; i++) {
    		for(int j = 0; j < matrix[i].length; j++) {
    			GramNode currentNode = gram.get(i).get(j);
    			try {
    				if(gram.get(i-1).get(j).value > currentNode.value) {
    					currentNode.outDegree++;
    					gram.get(i-1).get(j).parents.add(currentNode);
    				}
    			} catch (IndexOutOfBoundsException e) {
    			}
    			try {
    				if(gram.get(i+1).get(j).value > currentNode.value) {
    					currentNode.outDegree++;
    					gram.get(i+1).get(j).parents.add(currentNode);
    				}
    			} catch (IndexOutOfBoundsException e) {
    			}
    			try {
    				if(gram.get(i).get(j+1).value > currentNode.value) {
    					currentNode.outDegree++;
    					gram.get(i).get(j+1).parents.add(currentNode);
    				}
    			} catch (IndexOutOfBoundsException e) {
    			}
    			try {
    				if(gram.get(i).get(j-1).value > currentNode.value) {
    					currentNode.outDegree++;
    					gram.get(i).get(j-1).parents.add(currentNode);
    				}
    			} catch (IndexOutOfBoundsException e) {
    			}
    		}
    	}
    	// topological sort using DFS
    	ArrayList<GramNode> destinations = new ArrayList<GramNode>();
    	for(int i = 0; i < matrix.length; i++) {
    		for(int j = 0; j < matrix[i].length; j++) {
    			GramNode currentNode = gram.get(i).get(j);
    			if(currentNode.outDegree == 0) {
    				destinations.add(currentNode);
    			}
    		}
    	}
    	Integer maxLen = GRAM_NODE_MAX_LEN_UNKNOWN;
    	for(GramNode node: destinations) {
    		visit(node);
    		maxLen = Math.max(maxLen, node.maxLen);
    	}
    	return maxLen;
    }
    
    private void visit(GramNode node) {
    	if(GRAM_NODE_MAX_LEN_UNKNOWN != node.maxLen) {
    		return;
    	}
    	if(node.parents.isEmpty()) {
    		node.maxLen = 1;
    		return;
    	}
    	Integer maxLen = GRAM_NODE_MAX_LEN_UNKNOWN;
    	for(GramNode parent: node.parents) {
    		visit(parent);
    		maxLen = Math.max(maxLen, parent.maxLen);
    	}
    	node.maxLen = maxLen + 1;
    }
    
    class GramNode {
    	Integer value;
    	Integer maxLen = GRAM_NODE_MAX_LEN_UNKNOWN;
    	Integer outDegree = 0;
    	ArrayList<GramNode> parents = new ArrayList<GramNode>();
    	GramNode(Integer value) {
    		this.value = value;
    	}
    }
}