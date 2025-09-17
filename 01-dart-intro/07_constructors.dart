void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive' : true
  };
  
  final Hero iroman = Hero.fromJson(rawJson);
  
  print(iroman);
  
  //final Hero batman = new Hero(
  //  name: 'batman', 
  //  power: 'dinero', 
  //  isAlive: true
  //);
  
  //print(batman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name, 
    required this.power,
    required this.isAlive
  });
  
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No power isAlive';
  
  @override
  String toString(){
    return '$name, $power, is avile: ${isAlive ? 'yes' : 'nope'}';
  }
}




