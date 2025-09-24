void main() {
  // ({[)]}

  // reverseStack([1, 2, 3, 4, 5]);
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
