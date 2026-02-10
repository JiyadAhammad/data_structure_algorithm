/*
  Given a sorted array, check if there exists a pair with sum = X.
  arr = [1, 2, 3, 4, 6]
  X = 6
*/

void pairSumExist(List<int> arr, int x) {
  final n = arr.length;
  int start = 0;
  int end = n - 1;

  while (start < end) {
    final sum = arr[start] + arr[end];
    if (sum == x) {
      print(true);
      print('${arr[start]} ${arr[end]}');
      return;
    }
    if (sum < x) {
      start++;
    } else {
      end--;
    }
  }
  print(false);
  print('-----Code ended-----');

  // Time Complexity = O(n)
  // Space Complexity = O(1)
}
