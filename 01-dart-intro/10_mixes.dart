abstract class Animal {
}

abstract class Mammal extends Animal {
}

abstract class Bird extends Animal {
}

abstract class Fish extends Animal {
}


mixin CanFly {
  void fly() {
    print('Flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Swimming');
  }
}

mixin CanRun {
  void run() {
    print('Running');
  }
}

class Dolphins extends Mammal with CanSwim {}
class Bat extends Mammal with CanFly, CanRun {}
class Dog extends Mammal with CanRun {}

class Dove extends Bird with CanFly, CanRun {}
class Penguin extends Bird with CanRun, CanSwim {}
class Duck extends Bird with CanFly, CanRun, CanSwim {}

class Shark extends Fish with CanSwim {}
class FlyingFish extends Fish with CanFly, CanSwim {}

void main() {
    final flipper = Dolphins();
    flipper.swim();
  
    final donals = Duck();
    donals.fly();
    donals.run();
    donals.swim();
}