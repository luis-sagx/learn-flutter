void main() {
  final Hero batman = new Hero(name: 'batman', power: 'dinero');
  print(batman.name);
  print(batman.power);
  
  print(batman.toString());
  print(batman);
}

class Hero {
  String? name;
  String? power;

  Hero({
    required this.name, 
    required this.power
  });

  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
  
  
  @override
  String toString(){
    return '$name -> $power';
  }
}




