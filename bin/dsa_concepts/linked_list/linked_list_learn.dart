import 'dart:io';

class LearnNode {
  final int data;
  LearnNode? next;

  LearnNode({required this.data, this.next});
}

void createLinkedListLearn() {
  LinkedListLearn learn = LinkedListLearn();

  learn.addDataToLinekedList(10);
  learn.addDataToLinekedList(20);
  learn.addDataToLinekedList(30);
  learn.pushFront(5);
  learn.pushFront(1);
  // learn.lowestValue();
  // learn.largest();

  // learn.deleteNode(LearnNode(data: 30));
  learn.printLinkedList();
}

class LinkedListLearn {
  LearnNode? head;
  LearnNode? tail;

  /// Add new data to head
  void pushFront(int val) {
    LearnNode? newNode = LearnNode(data: val);

    /// Case :1 if linked list is empty
    if (head == null) {
      head = tail = newNode;
      return;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void addDataToLinekedList(int data) {
    LearnNode newNode = LearnNode(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
    // 10 -> 20
  }

  void printLinkedList() {
    LearnNode? current = head;

    while (current != null) {
      stdout.write("${current.data} -> ");
      current = current.next;
    }

    print('null');
  }

  void lowestValue() {
    LearnNode? lowest = head;
    LearnNode? current = head?.next;

    if (lowest == null) {
      print('Linked list is empty');
      return;
    }

    while (current != null) {
      if (current.data < lowest!.data) {
        lowest = current;
      }
      current = current.next;
    }

    print("lowest value : ${lowest!.data}");
  }

  void largest() {
    LearnNode? largest = head;

    if (largest == null) {
      print('Linked list is empty');
      return;
    }

    LearnNode? current = head!.next;

    while (current != null) {
      if (current.data > largest!.data) {
        largest = current;
      }

      current = current.next;
    }

    print("Largest value : ${largest!.data}");
  }

  void deleteNode(LearnNode node) {
    LearnNode? current = head;

    if (current == null) {
      print('Linkedlist is empty');
    }

    while (current != null) {
      if (current == node) {}
      current = current.next;
    }
  }
}
