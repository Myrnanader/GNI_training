
class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof! ');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow! Meow!  ');
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print('Moo! Moo! ');
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat(), Cow()];

  for (Animal animal in animals) {
    animal.makeSound();
  }
}
