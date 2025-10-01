import 'dart:async';

import 'imports.dart';

void main() {
  arrayIsSorted([5, 4, 6, 7, 8]);
}

void printNewMessage() {
  print('Hello world to dart programming');
}

void testAnimalObject() {
  const a = Animal('dog');
  const b = Animal('dog');

  final c = Animal('dog');
  final d = Animal('dog');

  print('${a == b}. const Constructor');
  print('${c == d}. final Constructor');
  print('${b == d}. const vs final Constructor');
}

class Animal {
  final String name;

  const Animal(this.name);
}

void main1() {
  print('start');
  Future(() => print('Future printed'));
  scheduleMicrotask(() => print('Micro task print'));
  print('end');
}
