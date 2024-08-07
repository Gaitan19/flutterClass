void main() {
  emitNumbers().listen((data) {
    print('Stream Value: $data');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
