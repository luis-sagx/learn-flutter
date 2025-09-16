void main() {
  print(greet());
  print('Suma: ${ addTwoNumbers(10, 12) }');
  print('Suma Opcional: ${ addTwoNumbersOptional(10) }');
  print(greetPerson(name:'Luis', message: 'klk'));
}

String greet() => 'Hola mundo'; // funciones flecha no pueden tener cuerpo

int addTwoNumbers(int a, int b){
  return a + b;
}

int addTwoNumbersOptional(int a, [int b = 0]){
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'como estas?'}){
  return 'Hola $name, $message';
}