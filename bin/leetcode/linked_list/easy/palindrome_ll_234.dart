/*
  234. Palindrome Linked List

  Given the head of a singly linked list, 
  return true if it is a palindrome or false otherwise.
*/

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseLL(ListNode? head) {
    ListNode? prev;
    ListNode? curr = head;

    while (curr != null) {
      ListNode nextNode = curr.next!;
      curr.next = prev;
      prev = curr;
      curr = nextNode;
    }

    return prev;
  }

  bool isPalindrome(ListNode? head) {
    if (head == null) {
      return true;
    }
    ListNode slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow.next!;
      fast = fast.next!.next;
    }

    ListNode mid = slow;

    final newHead = reverseLL(mid);

    ListNode? first = head;
    ListNode? second = newHead;

    while (second != null) {
      if (first!.val != second.val) {
        reverseLL(newHead);
        return false;
      }
      first = first.next;
      second = second.next;
    }

    reverseLL(newHead);
    return true;

    //     List<ListNode> stack =[];

    //     ListNode? temp = head;
    //     while (temp !=null){
    //         stack.add(temp);
    //         temp = temp.next;
    //     }

    //     temp = head;

    //     while (temp !=null) {
    //         if(temp.val != stack.last.val){
    //             return false;
    //         }
    //         stack.removeLast();
    //         temp = temp.next;
    //     }

    //     return stack.isEmpty;
  }
}
