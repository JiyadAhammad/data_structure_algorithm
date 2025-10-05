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

//! Remove Duplicates in-place from Sorted Array
/*
    Example 1: 
    Input: arr[1,1,2,2,2,3,3]
    Output: arr[1,2,3,_,_,_,_]
    Explanation: Total number of unique elements are 3, i.e[1,2,3] and 
    Therefore return 3 after assigning [1,2,3] in the beginning of the array.

    Example 2: 
    Input: arr[1,1,1,2,2,3,3,3,3,4,4]
    Output: arr[1,2,3,4,_,_,_,_,_,_,_]
    Explanation: Total number of unique elements are 4, i.e[1,2,3,4] and 
    Therefore return 4 after assigning [1,2,3,4] in the beginning of the array.
*/

void removeDuplicatesSA(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        arr.removeAt(j);
        j--;
      } else {
        break;
      }
    }
  }

  print(arr);

  // Time complexity = O(n2)
  // Space complexity = O(1)
}

void removeDuplicatesSA1(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  for (var i = 0; i < arr.length - 1; i++) {
    int j = i + 1;
    if (arr[i] == arr[j]) {
      arr.removeAt(j);
      i--;
    }
  }

  print(arr);

  // Time complexity = O(n)
  // Space complexity = O(1)
}

void removeDuplicatesSA2(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  final newSet = arr.toSet().toList();

  print(newSet);

  // Time complexity = O(n)
  // Space complexity = O(k)
}

void removeDuplicatesSA3(List<int> arr) {
  if (arr.isEmpty) {
    print('Array is empty');
    return;
  }

  int j = 0;

  for (var i = 1; i < arr.length; i++) {
    if (arr[i] != arr[j]) {
      j++;
      arr[j] = arr[i];
    }
  }

  print('$j  $arr');

  // Time complexity = O(n)
  // Space complexity = O(1)
}

//! Left Rotate the Array by One
/*
    Example 1:
    Input: N = 5, array[] = {1,2,3,4,5}
    Output: 2,3,4,5,1
    Explanation: 
    Since all the elements in array will be shifted 
    toward left by one so ‘2’ will now become the 
    first index and and ‘1’ which was present at 
    first index will be shifted at last.


    Example 2:
    Input: N = 1, array[] = {3}
    Output: 3
    Explanation: Here only element is present and so 
    the element at first index will be shifted to 
    last index which is also by the way the first index.
*/

void rotateOne(List<int> arr) {
  if (arr.isEmpty) {
    print('List is Empty');
    return;
  }
  if (arr.length == 1) {
    print(arr);
    return;
  }

  int temp = arr[0];

  for (var i = 1; i < arr.length; i++) {
    arr[i - 1] = arr[i];
  }

  arr[arr.length - 1] = temp;

  print(arr);

  // Time complexity = O(n)
  // Space complexity = O(1)
}
