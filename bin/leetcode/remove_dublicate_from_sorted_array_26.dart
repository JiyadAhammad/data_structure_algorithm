/*
    Example 1:

    Input: nums = [1,1,2]
    Output: 2, nums = [1,2,_]
    Explanation: Your function should return k = 2, 
    with the first two elements of nums being 1 and 2 respectively.
    It does not matter what you leave beyond the returned k 
    (hence they are underscores).

    Example 2:

    Input: nums = [0,0,1,1,1,2,2,3,3,4]
    Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
    Explanation: Your function should return k = 5, 
    with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
    It does not matter what you leave beyond the returned k 
    (hence they are underscores).
*/

int removeDuplicates(List<int> nums) {
  int j = 0;

  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[j] != nums[i + 1]) {
      nums[j + 1] = nums[i + 1];
      ++j;
    }
  }
  return j + 1;

  /*
    Complexity analysis 
    Time Complexity = O(n)
    Space Complexity = O(1)
  */
}
