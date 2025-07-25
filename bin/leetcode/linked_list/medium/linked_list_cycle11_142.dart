/*
Given the head of a linked list, 
return the node where the cycle begins. 
If there is no cycle, return null.

There is a cycle in a linked list if there is some node in the list
that can be reached again by continuously 
following the next pointer. Internally, 
pos is used to denote the index of the node that tail's 
next pointer is connected to (0-indexed). 
It is -1 if there is no cycle. 
Note that pos is not passed as a parameter.

Do not modify the linked list.

Input: head = [3,2,0,-4], pos = 1
Output: tail connects to node index 1
Explanation: There is a cycle in the linked list, 
             where tail connects to the second node.
*/

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? detectCycle(ListNode? head) {
    if (head == null) {
      // Linked list empty
      return null;
    }

    ListNode? slow = head;
    ListNode? fast = head;
    bool isCycle = false;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;

      if (fast == slow) {
        isCycle = true;
        break;
      }
    }

    if (!isCycle) {
      // NO Cycle
      return null;
    }

    slow = head;

    while (slow != fast) {
      slow = slow!.next;
      fast = fast!.next;
    }

    return slow;
  }
}
