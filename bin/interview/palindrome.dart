/*
  Check if a given string is a palindrome
*/

void palindromeT(String str) {
  // Two point aprocah

  int left = 0;
  int right = str.length - 1;

  while (left <= right) {
    if (str[left] != str[right]) {
      print('Not a palidrome');
      return; // Stop execution
    }

    left++;
    right--;
  }

  print('Palindrome');

  // TC = O(n)
  // SC = O(1);
}
