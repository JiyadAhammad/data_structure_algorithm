/*
Given the head of a singly linked list, 
return the middle node of the linked list.

If there are two middle nodes, return the second middle node.

Input: head = [1,2,3,4,5]
Output: [3,4,5]
Explanation: The middle node of the list is node 3.

Input: head = [1,2,3,4,5,6]
Output: [4,5,6]
Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
*/

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    if (head == null) {
      return null;
    }

    /// Bruteforce
    // return findMiddle(head);

    /// Slow-Fast approach
    return findMiddleSlowFast(head);
  }

  ListNode? findMiddle(ListNode head) {
    int len = 0;

    ListNode? current = head;

    while (current != null) {
      len++;
      current = current.next;
    }

    int mid = len ~/ 2;
    current = head;
    for (var i = 0; i < mid; i++) {
      current = current!.next;
    }

    return current;
  }

  ListNode? findMiddleSlowFast(ListNode head) {
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    return slow;
  }
}
