import 'dart:io';

void evenOdd(int num) {
  if (num % 2 == 0) {
    stdout.write('Even');
  } else {
    stdout.write('Odd');
  }
}

//! Program for sum of n natural numbers

void sumNatural(int n) {
  int sum = 0;
  for (var i = 1; i <= n; i++) {
    sum = sum + i;
  }
  print(sum);
}

void sumNatural2(int n) {
  final sum = (n * (n + 1)) / 2;
  print(sum);
}
