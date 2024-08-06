void main() {
  // greetEveryone();
  print(greetEveryone());

  print('Suma: ${addToNumbers(5, 11)}');
}

// greetEveryone() {
//   // print('Hello everyone!');
//   return 'Hello everyone!';
// }

String greetEveryone() => 'Hello everyone!';

// int addToNumbers(int a, int b) {
//   return a + b;
// }

int addToNumbers(int a, int b) => a + b;

int addToNumbersOptional(int a, [int b = 0]) => a + b;
