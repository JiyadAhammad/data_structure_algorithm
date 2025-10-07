/*
    Given an integer array nums, move all 0's to the end of it 
    while maintaining the relative order of the non-zero elements.

    Note that you must do this in-place without making a copy of the array.

    Example 1:

    Input: nums = [0,1,0,3,12]
    Output: [1,3,12,0,0]
    Example 2:

    Input: nums = [0]
    Output: [0]
*/

void moveZeros(List<int> arr) {
  if (arr.isEmpty) {
    return;
  }

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      arr.removeAt(i);
      arr.add(0);
    }
  }

  print(arr);
}

void moveZeros1(List<int> arr) {
  int pointNonZero = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] != 0) {
      int temp = arr[i];
      arr[i] = arr[pointNonZero];
      arr[pointNonZero] = temp;
      pointNonZero++;
    }
  }

  print(arr);
}
