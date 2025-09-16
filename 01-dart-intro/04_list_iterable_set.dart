void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 7, 7, 8, 9, 10]; //lista
  print('Lista original: ${numbers}');
  print('Lista numero elementos: ${numbers.length}');
  print('Lista index 0: ${numbers.first}');
  print(
    'Lista reversa: ${numbers.reversed}',
  ); //imprime entre parentesis (iterable)

  final reverseNumbers = numbers.reversed;
  print('Iterable: ${reverseNumbers}');
  print('List: ${reverseNumbers.toList()}');
  print(
    'Set: ${reverseNumbers.toSet()}',
  ); //similar a listado pero no tiene valores duplicados, van entre llaves

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('Mayores que 5 Iterable: $numbersGreaterThan5');
  print('Mayores que 5 Set: ${numbersGreaterThan5.toSet()}');
}
