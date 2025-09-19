void main() {
  // map = diccionario
  final Map<String, dynamic> pokemon = {
    'name': 'Pika',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'pika/front.png',
      2: 'pika/back.png',
    }
  };

  print(pokemon);
  print("Name: ${pokemon['name']}");
  print("Sprite Back: ${pokemon['sprites'][2]}");
  print("Sprite Front: ${pokemon['sprites'][1]}");
}