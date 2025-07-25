/*
 * Given the head of a singly linked list, 
 * reverse the list, 
 * and return the reversed list.
 * 
 * Sample - 1
 * Input: head = [1,2,3,4,5]
 * Output: [5,4,3,2,1]
 * 
 * Sample - 2
 * Input: head = [1,2]
 * Output: [2,1]
 * 
*/

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    if (head == null) {
      // head is null means no linked list
      return null;
    }

    ListNode? next;
    ListNode? current = head;
    ListNode? prev;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;

    return head;
  }
}
