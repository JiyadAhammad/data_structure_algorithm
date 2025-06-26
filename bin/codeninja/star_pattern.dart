import 'dart:io';

void starPattern(int n) {
  /*
        *
       ***
      *****
     *******
  */

  int star = 1, space = n - 1;
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= space; j++) {
      stdout.write(' ');
    }
    for (var k = 1; k <= star; k++) {
      stdout.write('*');
    }
    print('');
    space--;
    star += 2;
  }
}
