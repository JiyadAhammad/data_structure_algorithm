void reverseStringPreserveOrder(String? sentence) {
  if (sentence == null || sentence.isEmpty) {
    print('Please Provide a Sentence');
    return;
  }

  final splitedItem = sentence.split(' ');

  String reversedString = '';

  for (var i = 0; i < splitedItem.length; i++) {
    for (var j = splitedItem[i].length - 1; j >= 0; j--) {
      reversedString += splitedItem[i][j];
    }
    reversedString += ' ';
  }

  print(reversedString);

  // Time Complexicty = O(n2)
  // Space Complexicty = O(n)
}
