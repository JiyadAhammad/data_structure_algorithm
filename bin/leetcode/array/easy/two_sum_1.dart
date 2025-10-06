/*
      Example 1:

      Input: nums = [2,7,11,15], target = 9
      Output: [0,1]
      Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
      Example 2:

      Input: nums = [3,2,4], target = 6
      Output: [1,2]
      Example 3:

      Input: nums = [3,3], target = 6
      Output: [0,1]
*/

List<int> twoSumApproach1(List<int> nums, int target) {
  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }

  return [];

  /*
    Complexity analysis 
    Time Complexity = O(n2)
    Space Complexity = O(1)
  */
}

List<int> twoSumApproach2(List<int> nums, int target) {
  Map<int, int> hashMap = {};
  /*
    {
      2:0,
      7:1,
    }
  */
  for (var i = 0; i < nums.length; i++) {
    int result = target - nums[i];
    if (hashMap.containsKey(result)) {
      return [hashMap[result]!, i];
    } else {
      hashMap[nums[i]] = i;
    }
  }

  return [];

  /*
    Complexity analysis 
    Time Complexity = O(n)
    Space Complexity = O(n)
  */
}
