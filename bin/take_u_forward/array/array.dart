//! Find largest in an array
/*
    Example 1:
    Input: arr[] = {2,5,1,3,0};
    Output: 5
    Explanation: 5 is the largest element in the array. 

    Example2: 
    Input: arr[] = {8,10,5,7,9};
    Output: 10
    Explanation: 10 is the largest element in the array. 
*/

void largestElement(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }
  int largest = arr[0];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }

  print(largest);

  // Time complexity = O(n)
  // Space complexity = O(1)
}

void largestElementRecursive(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }
  final large = recursiveCall(0, arr, arr[0]);

  print(large);

  // Time complexity = O(n)
  // Space complexity = O(n)
}

int recursiveCall(int i, List<int> arr, int large) {
  if (arr.length == i) {
    return large;
  }
  if (arr[i] > large) {
    large = arr[i];
  }
  i++;
  return recursiveCall(i, arr, large);
}

void largestElementSort(List<int> arr) {
  arr.sort();
  print(arr[arr.length - 1]);

  // Time complexity = O(n Log n)
  // Space complexity = O(n)
}

//! Find Second largest in an array
/*
    Example 1:
    Input: [1,2,4,7,7,5]
    Output: Second Smallest : 2
      Second Largest : 5
    Explanation: The elements are as follows 1,2,3,5,7,7 and 
    hence second largest of these is 5 and second smallest is 2

    Example 2:
    Input: [1]
    Output: Second Smallest : -1
      Second Largest : -1
    Explanation: Since there is only one element in the array, 
    it is the largest and smallest element present in the array. 
    There is no second largest or second smallest element present.
*/
void secondLargestSmallest(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  int large = arr[0];
  int sLarge = -1;
  int small = arr[0];
  int sSmall = 1000000000;

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > large) {
      sLarge = large;
      large = arr[i];
    } else if (arr[i] > sLarge && arr[i] < large) {
      sLarge = arr[i];
    }

    if (arr[i] < small) {
      sSmall = small;
      small = arr[i];
    } else if (arr[i] > small && arr[i] < sSmall) {
      sSmall = arr[i];
    }
  }
  print('$sLarge is Second largest & $sSmall is Second smallest');

  // Time complexity = O(n)
  // Space complexity = O(1)
}

//! Check if an Array is Sorted
void arrayIsSorted(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  for (var i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      print('Array is not sorted');
      return;
    }
  }

  print('Array is Sorted');

  // Time complexity = O(n)
  // Space complexity = O(1)
}
