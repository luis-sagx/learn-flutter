void main() {
  final Hero batman = new Hero(name: 'batman', power: 'dinero'); // constructor con nombre, se envia en cualquier orden
  print(batman.name);
  print(batman.power);
  
  print(batman.toString());
  print(batman);
}

class Hero {
  String? name;
  String? power;

  // constructor con requeridos
  Hero({
    required this.name, 
    required this.power
  });

  // otra forma de crear el constructor
  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
  
  
  @override
  String toString(){
    return '$name -> $power';
  }
}




