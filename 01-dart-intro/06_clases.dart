void main() {
  final Hero batman = new Hero('batman', 'dinero');
  print(batman.name);
  print(batman.power);
}

class Hero {
  String? name;
  String? power;

  Hero(this.name, this.power);

  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
}
