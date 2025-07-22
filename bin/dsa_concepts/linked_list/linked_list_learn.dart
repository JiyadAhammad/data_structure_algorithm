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
  learn.pushBack(35);
  learn.pushBack(40);

  // learn.lowestValue();
  // learn.largest();

  // learn.deleteNode(LearnNode(data: 30));
  learn.printLinkedList();
  learn.popFront();
  learn.popBack();
  learn.popBackNoTail();
  learn.insertMiddle(25, 3);
  learn.searchElement(235);
  learn.insertMiddle(2, 0);
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
      /// case 2 : Non-empty linked list
      newNode.next = head;
      head = newNode;
    }
  }

  void pushBack(int data) {
    LearnNode newNode = LearnNode(data: data);

    /// Case :1 if linked list is empty
    if (head == null) {
      head = tail = newNode;
    } else {
      /// case 2 : Non-empty linked list
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void popFront() {
    if (head == null) {
      return;
    } else {
      LearnNode tempNode = head!;
      head = head!.next;
      tempNode.next = null;
    }

    /// temp will automatically remove by garbage collector
  }

  /// if track tail
  void popBack() {
    if (head == null) {
      return;
    }

    LearnNode? current = head;
    while (current != null) {
      if (current.next == tail) {
        current.next = null;
        tail = current;
      }
      current = current.next;
    }
  }

  void popBackNoTail() {
    if (head == null) {
      return;
    }

    LearnNode? current = head;
    while (current != null) {
      if (current.next?.next == null) {
        current.next = null;
        // tail = current;
      }
      current = current.next;
    }
  }

  void insertMiddle(int data, int pos) {
    if (pos < 0) {
      return;
    }
    if (pos == 0) {
      pushFront(data);
      return;
    }

    LearnNode? current = head;

    for (var i = 0; i < pos - 1; i++) {
      current = current!.next;
    }

    LearnNode newNode = LearnNode(data: data);

    newNode.next = current!.next;
    current.next = newNode;
  }

  void searchElement(int val) {
    if (head == null) {
      return;
    }

    LearnNode? current = head;
    int pos = 0;
    while (current != null) {
      if (current.data == val) {
        print('$val exist $pos');
        return;
      }
      pos++;
      current = current.next;
    }

    print('element not found');
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
