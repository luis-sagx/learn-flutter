void main() {
  emitNumbers().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; //es como ceder un valor, no se usa return porque es un stream
  }
}
