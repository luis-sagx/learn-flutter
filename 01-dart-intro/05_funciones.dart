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

int addTwoNumbersOptional(int a, [int b = 0]){ //el segundo argumento es opcional
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'como estas?'}){ // argumentos nombrados
  // el argumento requerido debe ser pasado obligatoriamente y en cualquier orden
  return 'Hola $name, $message';
}