/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
    	Integer lengthA = 0;
    	Integer lengthB = 0;
        ListNode pa = headA;
        ListNode pb = headB;
        while(pa != null) {
        	lengthA++;
        	pa = pa.next;
        }
        while(pb != null) {
        	lengthB++;
        	pb = pb.next;
        }
        pa = headA;
        pb = headB;
       	for (int i = 0; i < Math.abs(lengthA - lengthB); i++) {
        	if(lengthA > lengthB) {
        		pa = pa.next;
        	} else {
        		pb = pb.next;
        	}
        }
        ListNode ans = null;
        while(pa != null && pb != null) {
        	if(pa == pb) {
        		ans = pa;
        		break;
        	}
        	pa = pa.next;
        	pb = pb.next;
        }
        return ans;
    }
}