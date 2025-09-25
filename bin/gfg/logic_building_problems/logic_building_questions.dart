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

//! Program for Sum of squares of first n natural numbers
/*
    Input : n = 2
    Output: 5
    Explanation: 1^2+2^2 = 5

    Input : n = 8
    Output: 204
    Explanation :  1^2 + 2^2 + 3^2 + 4^2 + 5^2 + 6^2 + 7^2 + 8^2 = 204 
*/

void sumSquareNatural(int n) {
  int sum = 0;

  for (var i = 1; i <= n; i++) {
    sum = sum + (i * i);
  }
  print(sum);
}

//! Swap Two Numbers
/*
    Input: a = 2, b = 3
    Output: a = 3, b = 2

    Input: a = 20, b = 0
    Output: a = 0, b = 20

    Input: a = 10, b = 10
    Output: a = 10, b = 10 
*/
void swapNumber(int a, int b) {
  int temp = a;
  a = b;
  b = temp;

  print('$a,$b');
}

void swapNumber1(int a, int b) {
  // 2,3
  a = a + b; // 5 = 2+3
  b = a - b; // 2 = 5-3;
  a = a - b; // 3 = 5-2;

  print('$a,$b');
}

//! Find Closest to n and Divisible by m
/*
    Input: n = 13, m = 4
    Output: 12
    Explanation: 12 is the closest to 13, divisible by 4.

    Input: n = -15, m = 6
    Output: -18
    Explanation: Both -12 and -18 are closest to -15, 
    but -18 has the maximum absolute value.
*/

void closestNumber(int n, int m) {
  final closest = n ~/ m;
  final lower = closest * m;
  final upper = (closest + 1) * m;
  final lowerDiff = n - lower;
  final upperDiff = upper - n;
  int nearest;
  if (lowerDiff > upperDiff) {
    nearest = upper;
  } else {
    nearest = lower;
  }
  print('$lower , $upper , $nearest');
}

//! The dice problem
/*
    Input: n = 2
    Output: 5
    Explanation: For dice facing number 5 opposite face will have the number 2.

    Input: n = 6
    Output: 1
    Explanation: For dice facing number 6 opposite face will have the number 1.
*/
void diceSide(int n) {
  int ans;
  if (n == 1) {
    ans = 6;
  } else if (n == 2) {
    ans = 5;
  } else if (n == 3) {
    ans = 4;
  } else if (n == 4) {
    ans = 3;
  } else if (n == 5) {
    ans = 2;
  } else {
    ans = 1;
  }
  print(ans);
}

void diceSide2(int n) {
  // Sum of two opposite sides of a cubical dice is equal to 7.
  // So, just subtract the given n from 7 and print the answer.
  final ans = 7 - n;
  print(ans);
}

//! Nth term of AP from First Two Terms
/*
    Input : a1 = 2,  a2 = 3,  n = 4
    Output : 5
    Explanation : The series is 2, 3, 4, 5, 6,..., 
    thus the 4th term is 5. 

    Input : a1 = 1, a2 = 3, n = 10
    Output : 19
    Explanation:  The series is: 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21...
    Thus,10th term is 19.
*/

void nApTerm(int a1, int a2, int n) {
  int dif = (a2 - a1);
  int term = a1;
  for (int i = 1; i < n; i++) {
    term = term + dif;
  }
  print(term);
}

void nApTerm1(int a1, int a2, int n) {
  // t(n) = a(1) + n-1 * d;
  final term = a1 + (n - 1) * (a2 - a1);
  print(term);
}
