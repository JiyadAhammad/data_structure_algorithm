/*
  1. Traverse a Linked List
  2. Insert a Node at the Beginning
  3. Insert a Node at the End
  4. Insert a Node at a Specific Position
  5. Delete a Node by Value
  6. Delete a Node at a Specific Position
  7. Search for an Element in the Linked List
  8. Reverse a Linked List
  9. Find the Length of the Linked List
  10. Find the Middle Element
  11. Detect a Loop in the Linked List
  12. Check if the Linked List is a Palindrome
*/

import 'dart:io';

class Node {
  final int data;
  Node? next;

  Node({required this.data, this.next});
}

//! 1. Traverse a Linked List
/*
  10 -> 20 -> 30 -> 40 -> null
*/
void traverseLinkedList(Node? head) {
  final newNode = insertAtBeginning(50, head);

  Node? current = newNode;
  while (current != null) {
    stdout.write('${current.data} -> ');
    current = current.next;
  }
  stdout.write('Null');
}

//! 2. Insert a Node at the Beginning
/*
 add 5 ->
  10 -> 20 -> 30 -> 40 -> null
*/
Node? insertAtBeginning(int data, Node? head) {
  Node? current = head;
  Node? newNode;

  if (current == null) {
    newNode = Node(data: data);
  } else {
    newNode = Node(data: data);
    newNode.next = current;
  }

  return newNode;
}
