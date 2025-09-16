void main() {
  final String pokemon = 'pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['thunder', 'quick attack'];
  final sprites = <String>['pikachu/front.png', 'pikachu/back.png'];

  // dynamic == null
  dynamic newMessage = 'Hola';
  newMessage = true;
  newMessage = [1,2,34,121];
  newMessage = {12,24,56,142};
  newMessage = () => true;
  newMessage = null;
  
  print("""
    nombre: ${pokemon}
    vida: ${hp}
    esta vivo: ${isAlive ? 'Sí' : 'No'}
    habilidades: ${abilities}
    sprites: ${sprites}
    mensaje dynamic: ${newMessage}
  """);
}

