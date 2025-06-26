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
