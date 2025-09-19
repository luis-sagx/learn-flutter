void main() {
  emitNumbers().listen((value){ // se agrega listen
    print('Stream value: $value');
  });
}  

Stream<int> emitNumbers(){
  // alguien debe estar escuchando a los Streams
  return Stream.periodic(const Duration(seconds: 1), (value){
    print('desde periodic: $value');
    return value;
  }).take(5); // take limita el numero de emisiones
}