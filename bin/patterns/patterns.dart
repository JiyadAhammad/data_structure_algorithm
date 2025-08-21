import 'dart:io';

void squarePattern(int n) {
  /* 
    * * * *
    * * * *
    * * * *
    * * * *
  */
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      stdout.write('* ');
    }
    print('');
  }
}

void floydTriangle(int n) {
  /*
    1
    2 3
    4 5 6
    7 8 9 10
  */
  int value = 0;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      ++value;
      stdout.write('$value ');
    }
    print('');
  }
}

void numberPyramid(int n) {
  /*
    1
    121
    12321
    1234321
    123454321
  */
  int printValue = 1;
  int rowCount = 1;
  for (int i = 1; i <= n; i++) {
    printValue = 1;
    for (int j = 1; j <= rowCount; j++) {
      stdout.write(printValue);

      if (j >= i) {
        --printValue;
      } else {
        ++printValue;
      }
    }
    rowCount += 2;
    print('');
  }
}

void pascalsTriangle(int n) {
  /*
    1
    1 1
    1 2 1
    1 3 3 1
    1 4 6 4 1
  */

  List<List<int>> triangle = [
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1],
  ];

  for (var i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      if (j == 0) {}
    }
  }
}
