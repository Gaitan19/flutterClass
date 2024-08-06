void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse List: ${numbers.reversed}');

  final reverseNumbers = numbers.reversed;

  print('Iterabke: $reverseNumbers');
  print('List reversed: ${reverseNumbers.toList()}');
  print('Set: ${numbers.toSet()}');

  final numberGreaterThan5 = numbers.where((int number) => number > 5);

  print('Numbers greater than 5: $numberGreaterThan5');

  // iterable are represented with ()
  // list are represented with []
  // set are represented with {}
}
